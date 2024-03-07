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
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::OtherApi');

my $api = WWW::OpenAPIClient::OtherApi->new();
isa_ok($api, 'WWW::OpenAPIClient::OtherApi');

#
# generate_nonsense_word test
#
# uncomment below and update the test
#my $generate_nonsense_word_result = $api->generate_nonsense_word();

#
# insult test
#
# uncomment below and update the test
#my $insult_name = undef; # replace NULL with a proper value
#my $insult_reason = undef; # replace NULL with a proper value
#my $insult_result = $api->insult(name => $insult_name, reason => $insult_reason);

#
# praise test
#
# uncomment below and update the test
#my $praise_name = undef; # replace NULL with a proper value
#my $praise_reason = undef; # replace NULL with a proper value
#my $praise_result = $api->praise(name => $praise_name, reason => $praise_reason);

#
# rate_word test
#
# uncomment below and update the test
#my $rate_word_word = undef; # replace NULL with a proper value
#my $rate_word_result = $api->rate_word(word => $rate_word_word);

#
# search_gifs test
#
# uncomment below and update the test
#my $search_gifs_query = undef; # replace NULL with a proper value
#my $search_gifs_number = undef; # replace NULL with a proper value
#my $search_gifs_result = $api->search_gifs(query => $search_gifs_query, number => $search_gifs_number);


done_testing();
