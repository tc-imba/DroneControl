cmake_minimum_required(VERSION 3.1.0)

project(DroneControl)

set(CMAKE_CXX_STANDARD 14)

set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} $ENV{QT5_DIR})

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed
set(CMAKE_AUTOMOC ON)
# Create code from a list of Qt designer ui files
set(CMAKE_AUTOUIC ON)

# Find the QtWidgets library
find_package(Qt5Widgets CONFIG REQUIRED)

include_directories(mavlink/include)

set(SOURCE_FILES
        mainwindow.ui
        mainwindow.cpp
        main.cpp
        )

# Tell CMake to create the helloworld executable
add_executable(DroneControl ${SOURCE_FILES})
# Use the Widgets module from Qt 5
target_link_libraries(DroneControl Qt5::Widgets)
