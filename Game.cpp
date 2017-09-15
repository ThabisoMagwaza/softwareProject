#include "Game.h"
#include "SplashScreen.h"
#include <iostream>
#include <Background.h>



//This function initializes the game!
void Game::GameStart(){
    Window1.create(sf::VideoMode(1024,640,32),"Stage1",sf::Style::Default);
    Mode = Game::GameMode::Playing;
    while(!isQuiting()){
    MainLoop();
    }
    Window1.close();
}

bool inline Game::isQuiting(){ return (Mode==Game::GameMode::Quiting);}

void Game::dispSplash(){
    SplashScreen Screen;
    Screen.show(Window1);
    Mode = Game::GameMode::Quiting;
}

void Game::dispBackground(){
    Background screen;
    screen.disp(Window1);
    Mode = Game::GameMode::Quiting;
}

void Game::MainLoop(){
   
        switch (Mode){
            
            case Game::GameMode::Splash:{
                dispSplash();
                /*sf::Event EventNow;
                if(EventNow.type == sf::Event::Closed){
                   Mode = Game::GameMode::Quiting;
                  Window1.close();*/
                //}
                break;
            }
            
            case Game::GameMode::Playing:{
                 sf::Event EventNow;
                while(Window1.pollEvent(EventNow)){
                dispBackground();
                if(EventNow.type == sf::Event::Closed){
                Mode = Game::GameMode::Quiting;
                Window1.close();}
                if(EventNow.type == sf::Event::KeyPressed)
                    {Window1.clear(sf::Color::Green);
                      Window1.display();
                    }
                break; 
            }
            
        }
        }
}
Game::GameMode Game::Mode = Game::GameMode::Uninitialized;
sf::RenderWindow Game::Window1;