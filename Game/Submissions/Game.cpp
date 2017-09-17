#include "Game.h"
#include "SplashScreen.h"
#include "Background.h"

double Game::_screenWidth = 1024;
double Game::_screenHeight = 640;
Player Game::_player{"resources/ship.png", sf::Vector2f((_screenWidth/2),_screenHeight)};


//This function initializes the game!
void Game::GameStart(){
    Window1.create(sf::VideoMode(_screenWidth,_screenHeight,32),"Game",sf::Style::Default);
    Window1.setKeyRepeatEnabled(true);
    Mode = Game::GameMode::Splash;
    while(!isQuiting()){
    MainLoop();
    }
    Window1.close();
}
//Checks if the game is still played or no!
bool Game::isQuiting(){ return (Mode==Game::GameMode::Quiting);}


void Game::dispSplash(){
    SplashScreen screen;
    screen.show(Window1);
    //After displaying the splash screen, the game must display the menu!
    Mode = Game::GameMode::Playing;
}



void Game::MainLoop(){
   
        switch (Mode){
            //Case Handler for the splash in the initialization.
            case Game::GameMode::Splash:
                dispSplash();
                break;
            
            case Game::GameMode::Playing:
                 sf::Event EventNow;
                 
                 //event loop
                while(Window1.pollEvent(EventNow)){
                //dispBackground();
                if(EventNow.type == sf::Event::Closed){
                     Mode = Game::GameMode::Quiting;
                     Window1.close();
                }

            }
            
            if(sf::Keyboard::isKeyPressed(sf::Keyboard::Right)){
                _player.movePlayer('r');
            }else if(sf::Keyboard::isKeyPressed(sf::Keyboard::Left)){
                _player.movePlayer('l');
            }
            
            Window1.clear();
            //dispBackground();
            _player.drawPlayer(Window1);
            Window1.display();
            break;
        default:
            break;
        }
}

Game::GameMode Game::Mode = Game::GameMode::Uninitialized;
sf::RenderWindow Game::Window1;