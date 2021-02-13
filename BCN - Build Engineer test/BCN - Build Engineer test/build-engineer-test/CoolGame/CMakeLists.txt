cmake_minimum_required(VERSION 3.8)

set (CMAKE_BUILD_TYPE Debug)

project(CoolGame VERSION 1.0)

set (CMAKE_POSITION_INDEPENDENT_CODE ON )

enable_testing()

add_subdirectory (./dependencies/googletest)

include_directories(./game/include)

set(PROJECT_SOURCE_DIR ./game/src)
set(PROJECT_BINARY_DIR ./game/bin)

set(SOURCES
	./game/src/main.cpp
    ./game/src/common/Game.cpp
    ./game/src/common/GameObject.cpp
)

#add_executable(${PROJECT_NAME} ${SOURCES})


add_library (${PROJECT_NAME} STATIC ${SOURCES} )
add_subdirectory (./build/test)