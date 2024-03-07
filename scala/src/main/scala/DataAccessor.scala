package humorapi

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import org.openapitools.models._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A AnalyzeJoke200Response
        */
        def Jokes_analyzeJoke(body: String, authParamapiKey: String): Either[CommonError,AnalyzeJoke200Response] = Left(TODO)

        /**
        * 
        * @return A SubmitJoke200Response
        */
        def Jokes_downvoteJoke(id: Int, authParamapiKey: String): Either[CommonError,SubmitJoke200Response] = Left(TODO)

        /**
        * 
        * @return A RandomJoke200Response
        */
        def Jokes_randomJoke(keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], minRating: Option[Int], maxLength: Option[Int], authParamapiKey: String): Either[CommonError,RandomJoke200Response] = Left(TODO)

        /**
        * 
        * @return A SearchJokes200Response
        */
        def Jokes_searchJokes(keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], number: Option[Int], minRating: Option[Int], maxLength: Option[Int], offset: Option[BigDecimal], authParamapiKey: String): Either[CommonError,SearchJokes200Response] = Left(TODO)

        /**
        * 
        * @return A SubmitJoke200Response
        */
        def Jokes_submitJoke(body: String, authParamapiKey: String): Either[CommonError,SubmitJoke200Response] = Left(TODO)

        /**
        * 
        * @return A SubmitJoke200Response
        */
        def Jokes_upvoteJoke(id: Int, authParamapiKey: String): Either[CommonError,SubmitJoke200Response] = Left(TODO)

        /**
        * 
        * @return A SubmitJoke200Response
        */
        def Memes_downvoteMeme(id: Int, authParamapiKey: String): Either[CommonError,SubmitJoke200Response] = Left(TODO)

        /**
        * 
        * @return A RandomMeme200Response
        */
        def Memes_randomMeme(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], number: Option[Int], minRating: Option[Int], authParamapiKey: String): Either[CommonError,RandomMeme200Response] = Left(TODO)

        /**
        * 
        * @return A SearchMemes200Response
        */
        def Memes_searchMemes(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], number: Option[Int], minRating: Option[Int], offset: Option[BigDecimal], authParamapiKey: String): Either[CommonError,SearchMemes200Response] = Left(TODO)

        /**
        * 
        * @return A SubmitJoke200Response
        */
        def Memes_upvoteMeme(id: Int, authParamapiKey: String): Either[CommonError,SubmitJoke200Response] = Left(TODO)

        /**
        * 
        * @return A GenerateNonsenseWord200Response
        */
        def Other_generateNonsenseWord(authParamapiKey: String): Either[CommonError,GenerateNonsenseWord200Response] = Left(TODO)

        /**
        * 
        * @return A Praise200Response
        */
        def Other_insult(name: String, reason: String, authParamapiKey: String): Either[CommonError,Praise200Response] = Left(TODO)

        /**
        * 
        * @return A Praise200Response
        */
        def Other_praise(name: String, reason: String, authParamapiKey: String): Either[CommonError,Praise200Response] = Left(TODO)

        /**
        * 
        * @return A RateWord200Response
        */
        def Other_rateWord(word: String, authParamapiKey: String): Either[CommonError,RateWord200Response] = Left(TODO)

        /**
        * 
        * @return A SearchGifs200Response
        */
        def Other_searchGifs(query: String, number: Option[Int], authParamapiKey: String): Either[CommonError,SearchGifs200Response] = Left(TODO)

}