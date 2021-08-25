package = "humorapi"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by OpenAPI Generator",
	detailed = [[
Awesome Humor API.]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["humorapi.api.jokes_api"] = "humorapi/api/jokes_api.lua";
		["humorapi.api.memes_api"] = "humorapi/api/memes_api.lua";
		["humorapi.api.other_api"] = "humorapi/api/other_api.lua";
		["humorapi.model.inline_response_200"] = "humorapi/model/inline_response_200.lua";
		["humorapi.model.inline_response_200_1"] = "humorapi/model/inline_response_200_1.lua";
		["humorapi.model.inline_response_200_2"] = "humorapi/model/inline_response_200_2.lua";
		["humorapi.model.inline_response_200_3"] = "humorapi/model/inline_response_200_3.lua";
		["humorapi.model.inline_response_200_4"] = "humorapi/model/inline_response_200_4.lua";
		["humorapi.model.inline_response_200_5"] = "humorapi/model/inline_response_200_5.lua";
		["humorapi.model.inline_response_200_6"] = "humorapi/model/inline_response_200_6.lua";
		["humorapi.model.inline_response_200_7"] = "humorapi/model/inline_response_200_7.lua";
		["humorapi.model.inline_response_200_8"] = "humorapi/model/inline_response_200_8.lua";
		["humorapi.model.inline_response_200_9"] = "humorapi/model/inline_response_200_9.lua";
	}
}
