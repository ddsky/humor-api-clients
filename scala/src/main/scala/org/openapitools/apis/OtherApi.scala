package org.openapitools.apis

import java.io._
import humorapi._
import org.openapitools.models._
import org.openapitools.models.GenerateNonsenseWord200Response
import org.openapitools.models.Praise200Response
import org.openapitools.models.RateWord200Response
import org.openapitools.models.SearchGifs200Response
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

object OtherApi {
    /**
    * Compiles all service endpoints.
    * @return Bundled compilation of all service endpoints.
    */
    def endpoints(da: DataAccessor) =
        generateNonsenseWord(da) :+:
        insult(da) :+:
        praise(da) :+:
        rateWord(da) :+:
        searchGifs(da)


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
        * @return An endpoint representing a GenerateNonsenseWord200Response
        */
        private def generateNonsenseWord(da: DataAccessor): Endpoint[GenerateNonsenseWord200Response] =
        get("words" :: "nonsense" :: "random" :: param("api-key")) { (authParamapiKey: String) =>
          da.Other_generateNonsenseWord(authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Praise200Response
        */
        private def insult(da: DataAccessor): Endpoint[Praise200Response] =
        get("insult" :: param("name") :: param("reason") :: param("api-key")) { (name: String, reason: String, authParamapiKey: String) =>
          da.Other_insult(name, reason, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a Praise200Response
        */
        private def praise(da: DataAccessor): Endpoint[Praise200Response] =
        get("praise" :: param("name") :: param("reason") :: param("api-key")) { (name: String, reason: String, authParamapiKey: String) =>
          da.Other_praise(name, reason, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a RateWord200Response
        */
        private def rateWord(da: DataAccessor): Endpoint[RateWord200Response] =
        get("words" :: "rate" :: param("word") :: param("api-key")) { (word: String, authParamapiKey: String) =>
          da.Other_rateWord(word, authParamapiKey) match {
            case Left(error) => checkError(error)
            case Right(data) => Ok(data)
          }
        } handle {
          case e: Exception => BadRequest(e)
        }

        /**
        * 
        * @return An endpoint representing a SearchGifs200Response
        */
        private def searchGifs(da: DataAccessor): Endpoint[SearchGifs200Response] =
        get("gif" :: "search" :: param("query") :: paramOption("number").map(_.map(_.toInt)) :: param("api-key")) { (query: String, number: Option[Int], authParamapiKey: String) =>
          da.Other_searchGifs(query, number, authParamapiKey) match {
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
      val file = Files.createTempFile("tmpOtherApi", null).toFile
      val output = new FileOutputStream(file)
      output.write(input)
      file
    }

    // This assists in params(string) application (which must be Seq[A] in parameter list) when the param is used as a List[A] elsewhere.
    implicit def seqList[A](input: Seq[A]): List[A] = input.toList
}
