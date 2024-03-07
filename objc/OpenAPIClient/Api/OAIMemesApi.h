#import <Foundation/Foundation.h>
#import "OAIRandomMeme200Response.h"
#import "OAISearchMemes200Response.h"
#import "OAISubmitJoke200Response.h"
#import "OAIApi.h"

/**
* Humor API
* Awesome Humor API.
*
* The version of the OpenAPI document: 1.0
* Contact: mail@humorapi.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface OAIMemesApi: NSObject <OAIApi>

extern NSString* kOAIMemesApiErrorDomain;
extern NSInteger kOAIMemesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(OAIApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Downvote a Meme
/// Downvote a meme. See https://humorapi.com/docs/#Downvote-Meme for more.
///
/// @param _id The object&#39;s id.
/// 
///  code:200 message:"Successful downvote"
///
/// @return OAISubmitJoke200Response*
-(NSURLSessionTask*) downvoteMemeWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAISubmitJoke200Response* output, NSError* error)) handler;


/// Random Meme
/// Get a random meme. See https://humorapi.com/docs/#Random-Meme for more.
///
/// @param keywords A comma separated list of keywords. (optional)
/// @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
/// @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
/// @param number The number of results to retrieve between 1 and 10. (optional)
/// @param minRating The minimum rating between 0 and 10 the result should have. (optional)
/// 
///  code:200 message:"Random Meme Response"
///
/// @return OAIRandomMeme200Response*
-(NSURLSessionTask*) randomMemeWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    number: (NSNumber*) number
    minRating: (NSNumber*) minRating
    completionHandler: (void (^)(OAIRandomMeme200Response* output, NSError* error)) handler;


/// Search Memes
/// Search for memes. See https://humorapi.com/docs/#Search-Memes for more.
///
/// @param keywords A comma separated list of keywords. (optional)
/// @param keywordsInImage Whether the keywords should be found in the meme&#39;s image. (optional)
/// @param mediaType The type of the content. Can be either &#39;image&#39; or &#39;video&#39; or specific formats such as &#39;jpg&#39;, &#39;png&#39;, &#39;gif&#39;, or &#39;mp4&#39;. (optional)
/// @param number The number of results to retrieve between 1 and 10. (optional)
/// @param minRating The minimum rating between 0 and 10 the result should have. (optional)
/// @param offset The number of results to skip. (optional)
/// 
///  code:200 message:"Meme Search Response"
///
/// @return OAISearchMemes200Response*
-(NSURLSessionTask*) searchMemesWithKeywords: (NSString*) keywords
    keywordsInImage: (NSNumber*) keywordsInImage
    mediaType: (NSString*) mediaType
    number: (NSNumber*) number
    minRating: (NSNumber*) minRating
    offset: (NSNumber*) offset
    completionHandler: (void (^)(OAISearchMemes200Response* output, NSError* error)) handler;


/// Upvote a Meme
/// Upvote a meme. See https://humorapi.com/docs/#Upvote-Meme for more.
///
/// @param _id The object&#39;s id.
/// 
///  code:200 message:"Successful upvote"
///
/// @return OAISubmitJoke200Response*
-(NSURLSessionTask*) upvoteMemeWithId: (NSNumber*) _id
    completionHandler: (void (^)(OAISubmitJoke200Response* output, NSError* error)) handler;



@end
