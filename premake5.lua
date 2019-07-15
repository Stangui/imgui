project "ImGui"
	kind "StaticLib"
	language "C++"
	
	targetdir ("bin/" ..  outputdir .. "/%{prj.name}")
	objdir ("Intermediate/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_trutype.h",
		"imgui_demo.cpp"
	}
	
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
        cppdialect "C++17"
				
		filter { "system:windows", "configurations:Release" }
			buildoptions "/MT"
		
