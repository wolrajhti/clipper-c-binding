workspace "ClipperBinding"
  configurations { "Debug", "Release" }
  platforms { "Win32", "Win64" }
  location ("./build/" .. _ACTION)

project "ClipperBinding"
  kind "SharedLib"
  language "C"

  files { "clipper-binding.h", "clipper-binding.c" }

  filter "configurations:Debug"
    defines { "DEBUG" }
    symbols "On"

  filter "configurations:Release"
    defines { "NDEBUG" }
    optimize "On"

  filter "platforms:Win32"
    system "Windows"
    architecture "x86"

  filter "platforms:Win64"
    system "Windows"
    architecture "x86_64"