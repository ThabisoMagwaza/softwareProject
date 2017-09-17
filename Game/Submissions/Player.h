#pragma once
//#include "Movement.h"
//player for the game

#include <SFML/Graphics.hpp>

class Player{

public:
    Player(){};
    Player(std::string imDirectory,const sf::Vector2f& startPosition, const sf::Vector2f& scale = sf::Vector2f(0.3,0.3),const double& rotationAngle = 1);
    void drawPlayer(sf::RenderWindow &window); 
    void movePlayer(char direction);
    sf::Vector2f getLocation() const;
    void setLocation(const sf::Vector2f& newLocation);
    void setScale(const sf::Vector2f& newScale);
    sf::Vector2f getScale() const;
    void rotateRight(); //rotates right by rotationAngle
    void rotateLeft(); //rotates left by rotationAngle
    double getGlobalBoundHeight();
private:
    sf::Texture pTexture;
    sf::Sprite pSprite;
    sf::Vector2f _location;
    sf::Vector2f _origin;
    sf::Vector2f _scale;
    double _rotationAngle;
    double _rotationRadius;
    double _currentAngle; //angle on the moving circle
    double _globalBoundHeight; 
};
