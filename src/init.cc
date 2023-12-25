//
// Created by errorput on 2023/12/25.
//

#include <libtcod.hpp>
#include <eigen3/Eigen/Eigen>
#include "../include/items/test.h"

int main() {
    int screenWidth = 80;
    int screenHeight = 50;

    // Initialize the libtcod root console
    TCODConsole::initRoot(screenWidth, screenHeight, "Hello, World!", false);

    // Clear the console
    TCODConsole::root->clear();

    // Draw "Hello, World!" at the center of the console
    TCODConsole::root->printf(0, 0, "Hello, World!");

    // Present the console
    TCODConsole::flush();

    return 0;
}