#pragma once

#include <iostream>
#include <headers/headers.hpp>
#include <QtGui/QPainter>
#include <QtGui/QKeyEvent>
#include <QtCore/QTimer>
#include <QtCore/QRandomGenerator>
#include <list>
#include <memory>

enum class Direction {
    up,
    right,
    down,
    left
};
class SnakeItem;
class Snake;
class GameField;
class Food;


class SnakeItem {
public:
    SnakeItem(const int& x, const int& y);

    inline int X() const noexcept{ return x; }
    inline int Y() const noexcept{ return y; }
protected:
    int x = 0;
    int y = 0;
};


class Snake : public QWidget{
public:
    Snake(GameField* owner);

    void Draw(QPainter* painter) const;

    Direction GetDir() { return dir; }
    void SetDir(Direction d) { dir = d; }
    int GetMoveSpeed() { return moveSpeed; }
    void SetMoveSpeed(const int& s) { moveSpeed = s; }

    int ItemSize() const noexcept { return itemSize; }
    void Move();

    bool moveBlocked = false;
private:
    GameField* owner;

    int startSize = 4;
    int itemSize = 20;
    int moveSpeed = 100;
    Direction dir = Direction::right;
    std::list<std::unique_ptr<SnakeItem>> snakeBody;
};


class GameField : public QWidget {
    Q_OBJECT
public:
    GameField();

    int FieldSize() const noexcept { return fieldSize; }
    void GameOver();

    void IncScore() noexcept;
    std::unique_ptr<Food> food;
protected:
    void paintEvent(QPaintEvent* e) override;
    void keyPressEvent(QKeyEvent* e) override; 
    void TogglePause();
    
    bool isGameOver = false;
    void StartNewGame();

    std::unique_ptr<QTimer> moveSnakeTimer;
    int fieldSize;
    std::unique_ptr<Snake> snake;

    bool isPaused = 0;
    int score = 0;
signals:
    void ChangeTextSignal(const std::string& str);
} ;


class Food : public SnakeItem {
    GameField* owner;
public:
    Food(GameField* ow, int size);
    void SpawnNew(const std::list<std::unique_ptr<SnakeItem>>& bannedSpots);

    void Draw(QPainter* painter) const;
private:
    int size = 0;
};