# Install script for directory: /data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/data/eun/foam-v2306/platforms/linux64GccDPInt32Opt")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so.2.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so.2"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/libmoordyn.so.2.2"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/libmoordyn.so.2"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so.2.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so.2"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/libmoordyn.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmoordyn.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/moordyn" TYPE FILE FILES
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Body.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Point.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/IO.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Line.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Log.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Misc.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/MoorDyn2.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/QSlines.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Rod.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/State.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Time.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Waves.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Body.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Point.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Line.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/MoorDyn2.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/MoorDynAPI.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/MoorDyn.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Rod.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Waves.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Seafloor.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Seafloor.h"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Waves/WaveSpectrum.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Waves/SpectrumKin.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Waves/WaveOptions.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Waves/WaveGrid.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Util/Interp.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn/source/Util/VTK_Util.hpp"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/Config.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/moordyn/MoorDynTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/moordyn/MoorDynTargets.cmake"
         "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/CMakeFiles/Export/lib/cmake/moordyn/MoorDynTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/moordyn/MoorDynTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/moordyn/MoorDynTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/moordyn" TYPE FILE FILES "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/CMakeFiles/Export/lib/cmake/moordyn/MoorDynTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/moordyn" TYPE FILE FILES "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/CMakeFiles/Export/lib/cmake/moordyn/MoorDynTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xRuntimex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/moordyn" TYPE FILE FILES
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/moordyn/MoorDynConfig.cmake"
    "/data/eun/foam-v2306/foamMooring/thirdParty/MoorDyn.build/source/moordyn/MoorDynConfigVersion.cmake"
    )
endif()

