package com.humorapi

import java.io._
import humorapi._
import com.humorapi.client.model._
import com.humorapi.client.model.InlineResponse200
import com.humorapi.client.model.InlineResponse2004
import com.humorapi.client.model.InlineResponse2008
import com.humorapi.client.model.InlineResponse2009
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

object JokesApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        analyzeJoke(da) :+:
        downvoteJoke(da) :+:
        randomJoke(da) :+:
        searchJokes(da) :+:
        submitJoke(da) :+:
        upvoteJoke(da)


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
        * @return An endpoint representing a InlineResponse2009
        */
        private def analyzeJoke(da: DataAccessor): Endpoint[InlineResponse2009] =
        post("jokes" :: "analyze" :: jsonBody[String] :: param("api-key")) { (body: String, authParamapiKey: String) =>
          da.Jokes_analyzeJoke(body, authParamapiKey) match {
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
        private def downvoteJoke(da: DataAccessor): Endpoint[InlineResponse2008] =
        post("jokes" :: int :: "downvote" :: param("api-key")) { (id: Int, authParamapiKey: String) =>
          da.Jokes_downvoteJoke(id, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse2004
        */
        private def randomJoke(da: DataAccessor): Endpoint[InlineResponse2004] =
        get("jokes" :: "random" :: paramOption("keywords") :: paramOption("include-tags") :: paramOption("exclude-tags") :: paramOption("min-rating").map(_.map(_.toInt)) :: paramOption("max-length").map(_.map(_.toInt)) :: param("api-key")) { (keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], minRating: Option[Int], maxLength: Option[Int], authParamapiKey: String) =>
          da.Jokes_randomJoke(keywords, includeTags, excludeTags, minRating, maxLength, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a InlineResponse200
        */
        private def searchJokes(da: DataAccessor): Endpoint[InlineResponse200] =
        get("jokes" :: "search" :: paramOption("keywords") :: paramOption("include-tags") :: paramOption("exclude-tags") :: paramOption("number").map(_.map(_.toInt)) :: paramOption("min-rating").map(_.map(_.toInt)) :: paramOption("max-length").map(_.map(_.toInt)) :: param("api-key")) { (keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], number: Option[Int], minRating: Option[Int], maxLength: Option[Int], authParamapiKey: String) =>
          da.Jokes_searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, authParamapiKey) match {
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
        private def submitJoke(da: DataAccessor): Endpoint[InlineResponse2008] =
        post("jokes" :: jsonBody[String] :: param("api-key")) { (body: String, authParamapiKey: String) =>
          da.Jokes_submitJoke(body, authParamapiKey) match {
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
        private def upvoteJoke(da: DataAccessor): Endpoint[InlineResponse2008] =
        post("jokes" :: int :: "upvote" :: param("api-key")) { (id: Int, authParamapiKey: String) =>
          da.Jokes_upvoteJoke(id, authParamapiKey) match {
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
      val file = File.createTempFile("tmpJokesApi", null)
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
