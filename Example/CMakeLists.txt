if(BUILD_STATIC)
add_executable(Basic-static Basic.cpp)
target_link_libraries(Basic-static reject-static)
endif()

if(BUILD_SHARED)
add_executable(Basic Basic.cpp)
target_link_libraries(Basic reject)
endif()