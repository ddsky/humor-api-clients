=begin comment

Humor API

Awesome Humor API.

The version of the OpenAPI document: 1.0
Contact: mail@humorapi.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::MemesApi');

my $api = WWW::OpenAPIClient::MemesApi->new();
isa_ok($api, 'WWW::OpenAPIClient::MemesApi');

#
# downvote_meme test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->downvote_meme(id => $id);
}

#
# random_meme test
#
{
    my $keywords = undef; # replace NULL with a proper value
    my $keywords_in_image = undef; # replace NULL with a proper value
    my $media_type = undef; # replace NULL with a proper value
    my $number = undef; # replace NULL with a proper value
    my $min_rating = undef; # replace NULL with a proper value
    my $result = $api->random_meme(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, number => $number, min_rating => $min_rating);
}

#
# search_memes test
#
{
    my $keywords = undef; # replace NULL with a proper value
    my $keywords_in_image = undef; # replace NULL with a proper value
    my $media_type = undef; # replace NULL with a proper value
    my $number = undef; # replace NULL with a proper value
    my $min_rating = undef; # replace NULL with a proper value
    my $result = $api->search_memes(keywords => $keywords, keywords_in_image => $keywords_in_image, media_type => $media_type, number => $number, min_rating => $min_rating);
}

#
# upvote_meme test
#
{
    my $id = undef; # replace NULL with a proper value
    my $result = $api->upvote_meme(id => $id);
}


1;