# Example configuration for using Swift on Windows with CMake

The following commands were used to build and run the application. (Taken from and more information at [swift-build](https://github.com/compnerd/swift-build/blob/master/docs/GettingStartedWindows.md))

Open a x64 Native Tools Command Prompt for VS 2019, cd into the project directory and run:

    set SWIFTFLAGS=-sdk %SDKROOT% -resource-dir %SDKROOT%/usr/lib/swift -I %SDKROOT%/usr/lib/swift -L %SDKROOT%/usr/lib/swift/windows

    cmake -D BUILD_SHARED_LIBS=YES -D CMAKE_BUILD_TYPE=Debug -D CMAKE_Swift_FLAGS="%SWIFTFLAGS%" -G Ninja -B build

    cmake --build build

    \build\bin\Application.exe