if (BUILD_BUNDLE)

  # Cairo does not support building on CMake
  if (WIN)
    If(${CMAKE_SYSTEM_PROCESSOR} MATCHES "ARM64")
      add_third_party_dependency("pixman-0.40.0")
      add_third_party_dependency("cairo-1.16.0")
      add_third_party_dependency("libpng-1.6.37")
    else()
      # X86 and X86_64
      add_third_party_dependency("pixman-0.34.0")
      add_third_party_dependency("cairo-1.15.4")
      add_third_party_dependency("libpng-1.6.34")
    endif()
  elseif(OSX)
    If(${CMAKE_SYSTEM_PROCESSOR} MATCHES "arm64")
      add_third_party_dependency("pixman-0.40.0")
      add_third_party_dependency("cairo-1.16.0")
      add_third_party_dependency("libpng-1.6.37")
    else()
      add_third_party_dependency("pixman-0.34.0")
      add_third_party_dependency("cairo-1.15.4")
      add_third_party_dependency("libpng-1.2.49")
    endif()
  else() #Linux, only for arm
    If(${CMAKE_SYSTEM_PROCESSOR} MATCHES "armv7l" OR (${CMAKE_SYSTEM_PROCESSOR} MATCHES "aarch64"))
      add_third_party_dependency("pixman-0.40.0")
      add_third_party_dependency("cairo-1.16.0")
      add_third_party_dependency("libpng-1.6.37")
    endif()
  endif()
endif()
