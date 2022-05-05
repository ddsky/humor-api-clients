package org.openapitools

// TODO: properly handle custom imports
import java.io._
import java.util.UUID
import java.time._
import com.twitter.finagle.http.exp.Multipart.{FileUpload, InMemoryFileUpload, OnDiskFileUpload}

import com.humorapi.client.model._

trait DataAccessor {
    // TODO: apiInfo -> apis -> operations = TODO error
    private object TODO extends CommonError("Not implemented") {
        def message = "Not implemented"
    }

        /**
        * 
        * @return A InlineResponse2009
        */
        def Jokes_analyzeJoke(body: String, authParamapiKey: String): Either[CommonError,InlineResponse2009] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2008
        */
        def Jokes_downvoteJoke(id: Int, authParamapiKey: String): Either[CommonError,InlineResponse2008] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2004
        */
        def Jokes_randomJoke(keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], minRating: Option[Int], maxLength: Option[Int], authParamapiKey: String): Either[CommonError,InlineResponse2004] = Left(TODO)

        /**
        * 
        * @return A InlineResponse200
        */
        def Jokes_searchJokes(keywords: Option[String], includeTags: Option[String], excludeTags: Option[String], number: Option[Int], minRating: Option[Int], maxLength: Option[Int], offset: Option[BigDecimal], authParamapiKey: String): Either[CommonError,InlineResponse200] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2008
        */
        def Jokes_submitJoke(body: String, authParamapiKey: String): Either[CommonError,InlineResponse2008] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2008
        */
        def Jokes_upvoteJoke(id: Int, authParamapiKey: String): Either[CommonError,InlineResponse2008] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2008
        */
        def Memes_downvoteMeme(id: Int, authParamapiKey: String): Either[CommonError,InlineResponse2008] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2003
        */
        def Memes_randomMeme(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], number: Option[Int], minRating: Option[Int], authParamapiKey: String): Either[CommonError,InlineResponse2003] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2002
        */
        def Memes_searchMemes(keywords: Option[String], keywordsInImage: Option[Boolean], mediaType: Option[String], number: Option[Int], minRating: Option[Int], offset: Option[BigDecimal], authParamapiKey: String): Either[CommonError,InlineResponse2002] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2008
        */
        def Memes_upvoteMeme(id: Int, authParamapiKey: String): Either[CommonError,InlineResponse2008] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2007
        */
        def Other_generateNonsenseWord(authParamapiKey: String): Either[CommonError,InlineResponse2007] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2005
        */
        def Other_insult(name: String, reason: String, authParamapiKey: String): Either[CommonError,InlineResponse2005] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2005
        */
        def Other_praise(name: String, reason: String, authParamapiKey: String): Either[CommonError,InlineResponse2005] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2006
        */
        def Other_rateWord(word: String, authParamapiKey: String): Either[CommonError,InlineResponse2006] = Left(TODO)

        /**
        * 
        * @return A InlineResponse2001
        */
        def Other_searchGifs(query: String, number: Option[Int], authParamapiKey: String): Either[CommonError,InlineResponse2001] = Left(TODO)

}