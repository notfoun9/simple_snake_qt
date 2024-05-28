add_library(mainwindow mainwindow.cpp mainwindow.hpp)

target_link_libraries(mainwindow PUBLIC headers helpfield)
target_include_directories(mainwindow PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/..>
  $<INSTALL_INTERFACE:include>
)

install(TARGETS mainwindow )