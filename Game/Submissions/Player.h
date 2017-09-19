#pragma once
#include "Movement.h"
//player for the game

#include <SFML/Graphics.hpp>
#include <iostream>
#include <memory>


class Player : public Movement{

public:
    Player(std::string imDirectory,const sf::Vector2f& startPosition,  const sf::Vector2f& origin,const double& radius,const sf::Vector2f& scale = sf::Vector2f(0.3,0.3));
    void drawPlayer(sf::RenderWindow &window); 
    void setScale(const sf::Vector2f& newScale);
    sf::Vector2f getScale() const;
    double getGlobalBoundHeight();
private:
    sf::Texture pTexture;
    sf::Vector2f _scale;
    std::shared_ptr<sf::Sprite> _sprite;
    double _globalBoundHeight; 
};
