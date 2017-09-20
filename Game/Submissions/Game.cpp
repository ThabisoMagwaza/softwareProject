#include "Game.h"
#include "SplashScreen.h"
#include "Background.h"

double Game::_screenWidth = 1024;
double Game::_screenHeight = 640;
Player Game::_player{"resources/ship.png",sf::Vector2f((_screenWidth/2),_screenHeight),sf::Vector2f((_screenWidth/2),(_screenHeight/2)),(_screenHeight/2)};
Player Game::_player1{"resources/ship.png",sf::Vector2f((_screenWidth/2),_screenHeight),sf::Vector2f((_screenWidth/2),(_screenHeight/2)),(_screenHeight/2),sf::Vector2f(0.1,0.1)};
Player Game::_player2{"resources/ship.png",sf::Vector2f((_screenWidth/2),_screenHeight),sf::Vector2f((_screenWidth/2),(_screenHeight/2)),(_screenHeight/2),sf::Vector2f(0.2,0.2)};
Background Game::_background;

//This function initializes the game!
void Game::GameStart(){
    Window1.create(sf::VideoMode(_screenWidth,_screenHeight,32),"Game",sf::Style::Default);
    Window1.setKeyRepeatEnabled(true);
    Mode = Game::GameMode::Splash;
    
    _player1.setLocation(sf::Vector2f((_screenWidth/2),(_screenHeight/2)));
    _player1.setDisplacement(0);
    _player2.setDisplacement(320);
    //_player2.setLocation(_player.getCurrentAngle());
    
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
                _player.rotateRight(0.5);
            }else if(sf::Keyboard::isKeyPressed(sf::Keyboard::Left)){
                _player.rotateLeft(0.5);
            }
            
            
            //if(sf::Keyboard::isKeyPressed(sf::Keyboard::Down)){
                if(_player1.getDisplacement() < 320){
                    _player1.moveStraightFromCentre(50,0.2);
                    if(_player1.getScale().x < 0.3)
                        _player1.scale(sf::Vector2f(1.003,1.003));
                }else{
                    _player1.setDisplacement(0);
                    _player1.setScale(sf::Vector2f(0.1,0.1));
                    _player1.moveStraightFromCentre(50,0.2);
                }
                
                //std::cout<<_player2.getScale().x<<","<<_player2.getScale().y<<std::endl;
                
                if(_player2.getDisplacement() == 0){
                    _player2.setDisplacement(320);
                    _player2.setScale(sf::Vector2f(0.2,0.2));
                    _player2.moveStraightToCentre(_player.getCurrentAngle(),2);
                }else{
                    _player2.scale(sf::Vector2f(0.995,0.995));
                    _player2.moveStraightToCentre(_player.getCurrentAngle(),2);
                }
                
            //}
            
            Window1.clear();
            dispBackground();
            _player.drawPlayer(Window1);
            _player1.drawPlayer(Window1);
            _player2.drawPlayer(Window1);
            Window1.display();
            break;
        default:
            break;
        }
}


void Game::dispBackground(){
    _background.drawBackground(Window1);
    Mode = Game::GameMode::Playing;
}




Game::GameMode Game::Mode = Game::GameMode::Uninitialized;
sf::RenderWindow Game::Window1;