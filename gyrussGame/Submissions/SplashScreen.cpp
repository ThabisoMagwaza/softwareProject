#include "SplashScreen.h"
void SplashScreen::show(sf::RenderWindow& window){
        sf::FileInputStream stream;
        stream.open("resources/im22.jpg");
        sf::Texture texture;
        texture.loadFromStream(stream);
        sf::Sprite sprite;
        sprite.setTexture(texture);    
        
        sf::Font font;
        font.loadFromFile("resources/stoz.ttf");
        sf::Text text;
        text.setFont(font);
        text.setString("Press ANY key to Start Game");
        text.setPosition(512,320);
        text.setColor(sf::Color::Black);
        text.setStyle(sf::Text::Italic);
        window.draw(sprite);
        window.draw(text);
        window.display();
    
    sf::Event Event1;
    while(true){
        while(window.pollEvent(Event1)){
        if(Event1.type == sf::Event::EventType::KeyPressed /*|| Event1.type == sf::Event::EventType::Closed*/)
            return;   
        }        
    }
}