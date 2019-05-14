if(BUILD_STATIC)
add_executable(Basic-static basic.cpp)
target_link_libraries(Basic-static reject-static)
endif()

if(BUILD_SHARED)
add_executable(Basic basic.cpp)
target_link_libraries(Basic reject)
endif()
