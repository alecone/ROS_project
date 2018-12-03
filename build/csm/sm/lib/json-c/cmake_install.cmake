# Install script for directory: /home/alecone/catkin_graph/src/csm/sm/lib/json-c

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/alecone/catkin_graph/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/json-c" TYPE FILE FILES
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/JSON_checker.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/arraylist.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/bits.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/debug.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/json.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/json_more_utils.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/json_object.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/json_object_private.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/json_tokener.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/json_util.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/linkhash.h"
    "/home/alecone/catkin_graph/src/csm/sm/lib/json-c/printbuf.h"
    "/home/alecone/catkin_graph/build/config.h"
    )
endif()

