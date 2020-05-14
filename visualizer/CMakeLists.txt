add_executable(main visualizer.cpp)
find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})
target_link_libraries(main quadtree ${SDL2_LIBRARIES})