package org.openapitools.apis

import java.io._
import humorapi._
import org.openapitools.models._
import org.openapitools.models.BigDecimal
import org.openapitools.models.RandomMeme200Response
import org.openapitools.models.SearchMemes200Response
import org.openapitools.models.SubmitJoke200Response
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
import java.nio.file.Files
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
        * @return An endpoint representing a SubmitJoke200Response
        */
        private def downvoteMeme(da: DataAccessor): Endpoint[SubmitJoke200Response] =
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
        * @return An endpoint representing a RandomMeme200Response
        */
        private def randomMeme(da: DataAccessor): Endpoint[RandomMeme200Response] =
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
        * @return An endpoint representing a SearchMemes200Response
        */
        private def searchMemes(da: DataAccessor): Endpoint[SearchMemes200Response] =
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
        * @return An endpoint representing a SubmitJoke200Response
        */
        private def upvoteMeme(da: DataAccessor): Endpoint[SubmitJoke200Response] =
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
      val file = Files.createTempFile("tmpMemesApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
