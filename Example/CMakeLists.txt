add_executable(Basic-static Basic.cpp)

target_link_libraries(Basic-static reject-static)

add_executable(Basic Basic.cpp)

target_link_libraries(Basic reject)