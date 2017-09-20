#include "Player.h"
#include<cmath>
#include<iostream>

Player::Player(std::string imDirectory,const sf::Vector2f& startPosition, const sf::Vector2f& origin,const double& radius, const sf::Vector2f& scale )
{
    if(!pTexture.loadFromFile(imDirectory)){
        std::cerr <<"Cannot load image";
    }
    _scale = scale;
    _sprite = Movement::getSprite();
    _sprite->setTexture(pTexture);
    _sprite->setScale(_scale);
    _globalBoundHeight = _sprite->getGlobalBounds().height;
    Movement::initialize(startPosition,origin,radius-_globalBoundHeight,_globalBoundHeight);
}


void Player::drawPlayer(sf::RenderWindow &window){
    window.draw(*_sprite);
}


void Player::scale(const sf::Vector2f& scale){
    //_scale = newScale;
    _sprite->scale(scale);
    _scale = _sprite->getScale();
}

sf::Vector2f Player::getScale() const {
    return _scale;
}


double Player::getGlobalBoundHeight(){
    return _globalBoundHeight;
}

void Player::setScale(const sf::Vector2f& newScale){
    _scale = newScale;
    _sprite->setScale(newScale);
}

