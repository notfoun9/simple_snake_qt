add_library(headers INTERFACE headers.hpp)

set_property(TARGET headers PROPERTY CXX_STANDARD 20)

target_link_libraries(headers INTERFACE Qt6::Widgets Qt6::Gui)

target_include_directories(headers INTERFACE
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/..>
  $<INSTALL_INTERFACE:include>
)