#include "Background.h"
#include <iostream>


void Background::disp(sf::RenderWindow& window1){
        sf::FileInputStream input;
        input.open("im.jpg");
        sf::Texture texture1;
        texture1.loadFromStream(input);
        sf::Sprite SPRITE;
        SPRITE.setTexture(texture1);    
        
    window1.draw(SPRITE);
    window1.display();
    /*sf::Event localEvent;
    while(true){
        while(window1.pollEvent(localEvent)){
        if(localEvent.type == sf::Event::EventType::KeyPressed || localEvent.type == sf::Event::EventType::MouseButtonPressed || localEvent.type == sf::Event::EventType::Closed)
            return;   
    
        }        
    }*/
}