--[[
  Humor API
 
  Awesome Humor API.
 
  The version of the OpenAPI document: 1.0
  Contact: mail@humorapi.com
  Generated by: https://openapi-generator.tech
]]

-- inline_response_200_8 class
local inline_response_200_8 = {}
local inline_response_200_8_mt = {
	__name = "inline_response_200_8";
	__index = inline_response_200_8;
}

local function cast_inline_response_200_8(t)
	return setmetatable(t, inline_response_200_8_mt)
end

local function new_inline_response_200_8(message)
	return cast_inline_response_200_8({
		["message"] = message;
	})
end

return {
	cast = cast_inline_response_200_8;
	new = new_inline_response_200_8;
}
