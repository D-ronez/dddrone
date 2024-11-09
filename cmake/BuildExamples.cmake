ddd_config(DDD_BUILD_EXAMPLES "Build examples" "1")

if(NOT "${DDD_BUILD_EXAMPLES}" STREQUAL "")
	add_executable(Triangle examples/triangle.c)
	target_link_libraries(Triangle PRIVATE ${PROJECT_DIR}Common)
endif()
