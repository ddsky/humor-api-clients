package com.humorapi

import java.io._
import humorapi._
import com.humorapi.client.model._
import java.math.BigDecimal
import com.humorapi.client.model.InlineResponse2002
import com.humorapi.client.model.InlineResponse2003
import com.humorapi.client.model.InlineResponse2008
import io.finch.circe._
import io.circe.generic.semiauto._
import com.twitter.concurrent.AsyncStream
import com.twitter.finagle.Service
import com.twitter.finagle.Http
import com.twitter.finagle.http.{Request, Response}
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}
import com.twitter.util.Future
import com.twitter.io.Buf
import io.finch._, items._
import java.io.File
import java.time._

object MemesApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        downvoteMeme(da) :+:
        randomMeme(da) :+:
        searchMemes(da) :+:
        upvoteMeme(da)


    private def checkError(e: CommonError) = e match {
      case InvalidInput(_) => BadRequest(e)
      case MissingIdentifier(_) => BadRequest(e)
      case RecordNotFound(_) => NotFound(e)
      case _ => InternalServerError(e)
    }

    implicit class StringOps(s: String) {

      import java.time.format.DateTimeFormatter

      lazy val localformatter: DateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")
      lazy val datetimeformatter: DateTimeFormatter =
      DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm:ss.SSSZ")

      def toLocalDateTime: LocalDateTime = LocalDateTime.parse(s,localformatter)
      def toZonedDateTime: ZonedDateTime = ZonedDateTime.parse(s, datetimeformatter)

    }

        /**
        * 
        * @return An endpoint representing a InlineResponse2008
        */
        private def downvoteMeme(da: DataAccessor): Endpoint[InlineResponse2008] =
        post("memes" :: int :: "downvote" :: param("api-key")) { (id: Int, authParamapiKey: String) =>
          da.Memes_downvoteMeme(id, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2003
        */
        private def randomMeme(da: DataAccessor): Endpoint[InlineResponse2003] =
        get("memes" :: "random" :: paramOption("keywords") :: paramOption("keywords-in-image").map(_.map(_.toBoolean)) :: paramOption("media-type") :: paramOption("number").map(_.map(_.toInt)) :: paramOption("min-rating").map(_.map(_.toInt)) :: param("api-key")) { (keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], number: Option[Int], minRating: Option[Int], authParamapiKey: String) =>
          da.Memes_randomMeme(keywords, keywordsInImage, mediaType, number, minRating, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2002
        */
        private def searchMemes(da: DataAccessor): Endpoint[InlineResponse2002] =
        get("memes" :: "search" :: paramOption("keywords") :: paramOption("keywords-in-image").map(_.map(_.toBoolean)) :: paramOption("media-type") :: paramOption("number").map(_.map(_.toInt)) :: paramOption("min-rating").map(_.map(_.toInt)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: param("api-key")) { (keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], number: Option[Int], minRating: Option[Int], offset: Option[BigDecimal], authParamapiKey: String) =>
          da.Memes_searchMemes(keywords, keywordsInImage, mediaType, number, minRating, offset, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2008
        */
        private def upvoteMeme(da: DataAccessor): Endpoint[InlineResponse2008] =
        post("memes" :: int :: "upvote" :: param("api-key")) { (id: Int, authParamapiKey: String) =>
          da.Memes_upvoteMeme(id, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }


    implicit private def fileUploadToFile(fileUpload: FileUpload) : File = {
      fileUpload match {
        case upload: InMemoryFileUpload =>
          bytesToFile(Buf.ByteArray.Owned.extract(upload.content))
        case upload: OnDiskFileUpload =>
          upload.content
        case _ => null
      }
    }

    private def bytesToFile(input: Array[Byte]): java.io.File = {
      val file = File.createTempFile("tmpMemesApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
