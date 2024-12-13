# This most come before Config.cmake The common library for all the targets
add_library(${PROJECT_NAME}Common INTERFACE)
include(Config)

ddd_config(DDD_OPENGL_INCLUDE_DIRS "" STRING "OpenGL include directories")
ddd_config(DDD_OPENGL_SHARED_LIB_DIR "" STRING "Where to find OpenGL shared libraries")
set(DDD_TEST "" CACHE STRING "")

# Find OpenGL libraries
find_library(GL GL PATHS ${DDD_OPEGL_SHARED_LIB_DIR} REQUIRED)
find_library(GLU GLU REQUIRED)
find_library(glut glut REQUIRED)
target_link_libraries(${PROJECT_NAME}Common INTERFACE GL GLU glut)
target_include_directories(${PROJECT_NAME}Common INTERFACE src/ ${DDD_OPENGL_INCLUDE_DIRS})
