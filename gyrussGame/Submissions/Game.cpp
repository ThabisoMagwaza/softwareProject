#include "Game.h"
#include "SplashScreen.h"
#include "Background.h"





//This function initializes the game!
void Game::GameStart(){
    Window1.create(sf::VideoMode(1024,640,32),"Game",sf::Style::Default);
    Mode = Game::GameMode::Splash;
    while(!isQuiting()){
    MainLoop();
    }
    Window1.close();
}
//Checks if the game is still playing or no!
bool Game::isQuiting(){
    if (Mode == Game::GameMode::Quiting)
        return true;
    else
        return false;
    }


void Game::dispSplash(){
    SplashScreen screen;
    screen.show(Window1);
    //After displaying the splash screen, the game must display the menu!
    Mode = Game::GameMode::Playing;
}

void Game::dispBackground(){
    Background screen;
    screen.disp(Window1);
    Mode = Game::GameMode::Playing;
    
}


void Game::MainLoop(){
   
        switch (Mode){
            case Game::GameMode::Splash:{
                dispSplash();
                break;
            }
            
            case Game::GameMode::Playing:{
                 sf::Event EventNow;
                while(Window1.pollEvent(EventNow)){
                dispBackground();
                if(EventNow.type == sf::Event::Closed){
                     Mode = Game::GameMode::Quiting;
                     Window1.close();
                }
                break; 
            }
            
        }
        }
}

Game::GameMode Game::Mode = Game::GameMode::Uninitialized;
sf::RenderWindow Game::Window1;




