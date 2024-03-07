package org.openapitools.apis

import java.io._
import humorapi._
import org.openapitools.models._
import org.openapitools.models.AnalyzeJoke200Response
import org.openapitools.models.BigDecimal
import org.openapitools.models.RandomJoke200Response
import org.openapitools.models.SearchJokes200Response
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
        * @return An endpoint representing a AnalyzeJoke200Response
        */
        private def analyzeJoke(da: DataAccessor): Endpoint[AnalyzeJoke200Response] =
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
        * @return An endpoint representing a SubmitJoke200Response
        */
        private def downvoteJoke(da: DataAccessor): Endpoint[SubmitJoke200Response] =
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
        * @return An endpoint representing a RandomJoke200Response
        */
        private def randomJoke(da: DataAccessor): Endpoint[RandomJoke200Response] =
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
        * @return An endpoint representing a SearchJokes200Response
        */
        private def searchJokes(da: DataAccessor): Endpoint[SearchJokes200Response] =
        get("jokes" :: "search" :: paramOption("keywords") :: paramOption("include-tags") :: paramOption("exclude-tags") :: paramOption("number").map(_.map(_.toInt)) :: paramOption("min-rating").map(_.map(_.toInt)) :: paramOption("max-length").map(_.map(_.toInt)) :: paramOption("offset").map(_.map(_.toBigDecimal)) :: param("api-key")) { (keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], number: Option[Int], minRating: Option[Int], maxLength: Option[Int], offset: Option[BigDecimal], authParamapiKey: String) =>
          da.Jokes_searchJokes(keywords, includeTags, excludeTags, number, minRating, maxLength, offset, authParamapiKey) match {
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
        private def submitJoke(da: DataAccessor): Endpoint[SubmitJoke200Response] =
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
        * @return An endpoint representing a SubmitJoke200Response
        */
        private def upvoteJoke(da: DataAccessor): Endpoint[SubmitJoke200Response] =
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
      val file = Files.createTempFile("tmpJokesApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
