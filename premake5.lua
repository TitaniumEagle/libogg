project "libogg"
	version = "1.3.1"

	language "C"
	
	files { "src/*.c" }
	includedirs { "include/" }
	
	kind ( LIB_LIBOGG.KIND )
	
	targetname( LIB_LIBOGG.KIND == "StaticLib" and "libogg_static" or "libogg" )
	
	configuration {"SharedLib", "windows"}
		linkoptions { "/DEF:\"../../Source/Thirdparty/libogg/win32/ogg.def\"" }
	configuration {}
	
	warnings "Off" --Disable warnings, third party libs flood the log
	
	targetdir( LDIR_THIRDPARTY_LIB )
	location( LDIR_THIRDPARTY_BUILD )

	suffix_macro ( version, true )