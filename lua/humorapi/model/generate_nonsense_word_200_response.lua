--[[
  Humor API

  Awesome Humor API.

  The version of the OpenAPI document: 1.0
  Contact: mail@humorapi.com
  Generated by: https://openapi-generator.tech
]]

-- generate_nonsense_word_200_response class
local generate_nonsense_word_200_response = {}
local generate_nonsense_word_200_response_mt = {
	__name = "generate_nonsense_word_200_response";
	__index = generate_nonsense_word_200_response;
}

local function cast_generate_nonsense_word_200_response(t)
	return setmetatable(t, generate_nonsense_word_200_response_mt)
end

local function new_generate_nonsense_word_200_response(word, rating)
	return cast_generate_nonsense_word_200_response({
		["word"] = word;
		["rating"] = rating;
	})
end

return {
	cast = cast_generate_nonsense_word_200_response;
	new = new_generate_nonsense_word_200_response;
}
