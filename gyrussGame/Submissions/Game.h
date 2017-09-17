#pragma once

#include <SFML/Graphics.hpp>
#include <SFML/Window.hpp>
#include "ClassTests.h"

class Game{
    //friend class TestingClass;
    public:
     static void GameStart();
     
     
     private:
     static void MainLoop();
     static bool isQuiting();
     static void dispSplash();
     static void dispBackground();
     enum class GameMode {Playing, Quiting, Splash, Menu, Uninitialized};
     static sf::RenderWindow Window1;
     static GameMode Mode;
};