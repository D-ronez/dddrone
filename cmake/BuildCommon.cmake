ddd_config(DDD_OPENGL_INCLUDE_DIRS "OpenGL include directories" "")
ddd_config(DDD_OPENGL_SHARED_LIB_DIR "" "")

# Find OpenGL library
find_library(GL GL PATHS ${DDD_OPEGL_SHARED_LIB_DIR} REQUIRED)
find_library(GLU GLU REQUIRED)
find_library(glut glut REQUIRED)

add_library(${PROJECT_DIR}Common INTERFACE)
target_link_libraries(${PROJECT_DIR}Common INTERFACE GL GLU glut)
target_include_directories(${PROJECT_DIR}Common INTERFACE src/ ${DDD_OPENGL_INCLUDE_DIRS})
