cmake_minimum_required(VERSION 3.2)
project (Goblet_2)

set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

add_subdirectory(glfw-3.2.1)

add_executable(goblet_2 main.cpp)

find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)

target_include_directories(goblet_2 PUBLIC ${OPENGL_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS} ${GLEW_INCLUDE_DIRS})
target_link_libraries(goblet_2 glfw ${OPENGL_gl_LIBRARY} ${GLUT_LIBRARY} ${OPENGL_LIBRARY} ${GLEW_LIBRARIES})
