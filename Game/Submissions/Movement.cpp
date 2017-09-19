#include "Movement.h"
#include <cmath> 



Movement::Movement(){
    _currentAngle = 0;
    _location = sf::Vector2f(0,0);
    _sprite.setPosition(_location);
}

void Movement::initialize( const sf::Vector2f& startPosition, const sf::Vector2f& origin, const double& globalBoundsHeight, const double& startAngle){
    _currentAngle = startAngle;
    _origin = origin;
    _location = sf::Vector2f(startPosition.x,startPosition.y - globalBoundsHeight);
    _sprite.setPosition(_location);
}

void Movement::rotateRight(const double& rotationRadius, const double rotationAngle){
    _currentAngle -= rotationAngle;

    _location.x = _origin.x + (rotationRadius * cos(_currentAngle*(3.14/180)));
    _location.y = _origin.y + (rotationRadius * sin(_currentAngle *(3.14/180)));
    _sprite.setPosition(_location);
    
    _sprite.rotate(-rotationAngle);
}

void Movement::rotateLeft( const double& rotationRadius, const double& rotationAngle){
    _currentAngle += rotationAngle;
    _location.x = _origin.x + (rotationRadius * cos(_currentAngle*(3.14/180)));
    _location.y = _origin.y + (rotationRadius * sin(_currentAngle *(3.14/180)));
    _sprite.setPosition(_location);
    
    _sprite.rotate(rotationAngle);
}

sf::Vector2f Movement::getLocation() const {
    return _location;
}

void Movement::setLocation(const sf::Vector2f& newLocation){
    _location = newLocation;
    _sprite.setPosition(newLocation);
}