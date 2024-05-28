add_library(helpfield helpfield.cpp helpfield.hpp)

target_link_libraries(helpfield PUBLIC Qt6::Gui Qt6::Widgets)
target_include_directories(helpfield PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/..>
  $<INSTALL_INTERFACE:include>
)

install(TARGETS helpfield)