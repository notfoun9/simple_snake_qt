# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/untitled2_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/untitled2_autogen.dir/ParseCache.txt"
  "Libraries/game/CMakeFiles/game_autogen.dir/AutogenUsed.txt"
  "Libraries/game/CMakeFiles/game_autogen.dir/ParseCache.txt"
  "Libraries/game/game_autogen"
  "untitled2_autogen"
  )
endif()
