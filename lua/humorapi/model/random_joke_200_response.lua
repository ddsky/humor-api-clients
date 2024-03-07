--[[
  Humor API

  Awesome Humor API.

  The version of the OpenAPI document: 1.0
  Contact: mail@humorapi.com
  Generated by: https://openapi-generator.tech
]]

-- random_joke_200_response class
local random_joke_200_response = {}
local random_joke_200_response_mt = {
	__name = "random_joke_200_response";
	__index = random_joke_200_response;
}

local function cast_random_joke_200_response(t)
	return setmetatable(t, random_joke_200_response_mt)
end

local function new_random_joke_200_response(id, joke)
	return cast_random_joke_200_response({
		["id"] = id;
		["joke"] = joke;
	})
end

return {
	cast = cast_random_joke_200_response;
	new = new_random_joke_200_response;
}