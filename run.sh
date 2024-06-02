cd build

cmake --build .

cd ./simple_snake_qt.app/Contents/MacOS

leaks -atExit -- ./simple_snake_qt
