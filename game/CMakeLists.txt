cmake_minimum_required(VERSION 3.2)

if(WIN32)
    ADD_DEFINITIONS(-DWIN32 -DMSVC)
    ADD_DEFINITIONS( -DGLEW_STATIC )
endif(WIN32)

SET(CMAKE_CXX_STANDARD 11)

project (Goblet_2)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(OpenAL REQUIRED)

file(GLOB_RECURSE goblet_2_SRC "src/*.cpp")
add_executable(goblet_2 ${goblet_2_SRC})

target_include_directories(goblet_2 PUBLIC ${OPENGL_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS} ${GLEW_INCLUDE_DIRS} ${OPENAL_INCLUDE_DIRS} src)
target_link_libraries(goblet_2 glfw ${OPENGL_gl_LIBRARY} ${GLUT_LIBRARY} ${OPENGL_LIBRARY} ${OPENAL_LIBRARY} ${GLEW_LIBRARIES})
