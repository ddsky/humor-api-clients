--[[
  Humor API

  Awesome Humor API.

  The version of the OpenAPI document: 1.0
  Contact: mail@humorapi.com
  Generated by: https://openapi-generator.tech
]]

-- search_gifs_200_response_images_inner class
local search_gifs_200_response_images_inner = {}
local search_gifs_200_response_images_inner_mt = {
	__name = "search_gifs_200_response_images_inner";
	__index = search_gifs_200_response_images_inner;
}

local function cast_search_gifs_200_response_images_inner(t)
	return setmetatable(t, search_gifs_200_response_images_inner_mt)
end

local function new_search_gifs_200_response_images_inner(url, width, height)
	return cast_search_gifs_200_response_images_inner({
		["url"] = url;
		["width"] = width;
		["height"] = height;
	})
end

return {
	cast = cast_search_gifs_200_response_images_inner;
	new = new_search_gifs_200_response_images_inner;
}
