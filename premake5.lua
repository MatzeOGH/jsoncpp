project "jsoncpp"
    kind "StaticLib"
    language "C++"

	files
	{
		"dist/jsoncpp.cpp",
        "dist/json/json.h",
        "dist/json/json-forwards.h",        
	}

	includedirs
	{
		"dist"
	}

    filter "system:windows"
        systemversion "latest"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
		buildoptions "/MT"