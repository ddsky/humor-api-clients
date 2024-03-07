--[[
  Humor API

  Awesome Humor API.

  The version of the OpenAPI document: 1.0
  Contact: mail@humorapi.com
  Generated by: https://openapi-generator.tech
]]

-- analyze_joke_200_response class
local analyze_joke_200_response = {}
local analyze_joke_200_response_mt = {
	__name = "analyze_joke_200_response";
	__index = analyze_joke_200_response;
}

local function cast_analyze_joke_200_response(t)
	return setmetatable(t, analyze_joke_200_response_mt)
end

local function new_analyze_joke_200_response(joke, tags)
	return cast_analyze_joke_200_response({
		["joke"] = joke;
		["tags"] = tags;
	})
end

return {
	cast = cast_analyze_joke_200_response;
	new = new_analyze_joke_200_response;
}
