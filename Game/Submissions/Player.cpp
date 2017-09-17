#include "Player.h"
#include<cmath>
#include<iostream>

Player::Player(std::string imDirectory, const sf::Vector2f& startPosition, const sf::Vector2f& scale, const double& rotationAngle ){
    if(!pTexture.loadFromFile(imDirectory)){
        std::cerr <<"Cannot load image";
    }
    _scale = scale;
    pSprite.setTexture(pTexture);
    pSprite.setScale(_scale);
    _globalBoundHeight = pSprite.getGlobalBounds().height;
    _location = sf::Vector2f(startPosition.x,startPosition.y - _globalBoundHeight);
     setLocation(_location);
     _rotationAngle = rotationAngle;
     _currentAngle = 90;
     _origin = sf::Vector2f(512,320);
     _rotationRadius = 320 - _globalBoundHeight;
     
}


void Player::drawPlayer(sf::RenderWindow &window){
    window.draw(pSprite);
}

void Player::movePlayer(char direction){
    switch(direction){
        case 'r':
            rotateRight();
            break;
        case 'l':
            rotateLeft();
            break;
    }
}

sf::Vector2f Player::getLocation() const {
    return _location;
}

void Player::setLocation(const sf::Vector2f& newLocation){
    _location = newLocation;
    pSprite.setPosition(newLocation);
}

void Player::setScale(const sf::Vector2f& newScale){
    _scale = newScale;
    pSprite.scale(_scale);
}

sf::Vector2f Player::getScale() const {
    return _scale;
}

void Player::rotateLeft(){
    _currentAngle += _rotationAngle;
    _location.x = _origin.x + (_rotationRadius * cos(_currentAngle*(M_PI/180)));
    _location.y = _origin.y + (_rotationRadius * sin(_currentAngle *(M_PI/180)));
    pSprite.setPosition(_location);
    //get polar coordinates
    pSprite.rotate(_rotationAngle);
    
}

void Player::rotateRight(){
    _currentAngle -= _rotationAngle;
    _location.x = _origin.x + (_rotationRadius * cos(_currentAngle*(M_PI/180)));
    _location.y = _origin.y + (_rotationRadius * sin(_currentAngle *(M_PI/180)));
    pSprite.setPosition(_location);
    
    pSprite.rotate(-_rotationAngle);
}

double Player::getGlobalBoundHeight(){
    return _globalBoundHeight;
}