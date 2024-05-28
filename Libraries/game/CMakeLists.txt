add_library(game game.cpp game.hpp)

target_link_libraries(game PUBLIC Qt6::Gui)
target_include_directories(game PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/..>
  $<INSTALL_INTERFACE:include>
)

install(TARGETS game)