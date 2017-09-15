#include "SplashScreen.h"
#include <iostream>

void SplashScreen::show(sf::RenderWindow& window){
        sf::FileInputStream stream;
        stream.open("im.jpg");
        sf::Texture texture;
        texture.loadFromStream(stream);
        sf::Sprite sprite;
        sprite.setTexture(texture);    
        sf::Font font;
        font.loadFromFile("stoz.ttf");
        sf::Text text;
        text.setFont(font);
        text.setString("Hello World");
        text.setPosition(512,320);
        text.setColor(sf::Color::Black);
        text.setStyle(sf::Text::Italic);
    window.draw(sprite);
    window.draw(text);
    window.display();
    
    sf::Event localEvent;
    while(true){
        while(window.pollEvent(localEvent)){
        if(localEvent.type == sf::Event::EventType::KeyPressed || localEvent.type == sf::Event::EventType::MouseButtonPressed || localEvent.type == sf::Event::EventType::Closed)
            return;   
    
        }        
    }
}