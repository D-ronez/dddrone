ddd_config(DDD_BUILD_EXAMPLES "1" STRING "Build examples")

if(NOT "${DDD_BUILD_EXAMPLES}" STREQUAL "")
	add_executable(Triangle examples/triangle.c)
	target_link_libraries(Triangle PRIVATE ${PROJECT_NAME}Common)
endif()
