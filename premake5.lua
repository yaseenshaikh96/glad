project "glad"
	kind "StaticLib"
	language "C"
	staticruntime "on"

    	targetdir ( "%{wks.location}/bin/" .. outputdir)
    	objdir ( "%{wks.location}/bin-int/" .. outputdir)


	files
	{
		"include/glad/glad.h",
		"include/KHR/khrplatform.h",
		"src/glad.c"
	}

	includedirs
	{
		"include"
	}

	links
	{
		"opengl32.lib"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
		