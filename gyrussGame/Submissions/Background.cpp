#include "Background.h"
#include <iostream>


void Background::disp(sf::RenderWindow& window1){
        sf::FileInputStream input;
        input.open("resources/im.jpg");
        sf::Texture texture1;
        texture1.loadFromStream(input);
        sf::Sprite SPRITE;
        SPRITE.setTexture(texture1);    
        
    window1.draw(SPRITE);
    window1.display();
}