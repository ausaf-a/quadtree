add_library(
    quadtree
    src/quadtree/quadtree.hpp 
    src/quadtree/quadtree.cpp 
    )

target_include_directories(quadtree PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")