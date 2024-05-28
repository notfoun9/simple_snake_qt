#include <headers/headers.hpp>
#include <game/game.hpp>

SnakeItem::SnakeItem(const int& x_, const int& y_) : x(x_), y(y_) {}


Snake::Snake(GameField* gf) : owner(gf) {
    for (int i = 0; i != startSize; ++i) {
        snakeBody.push_front(std::make_unique<SnakeItem>(i, 0));
    }
}

void Snake::Draw(QPainter* painter) const {
    for (const auto& item : snakeBody) {
        painter->drawEllipse(itemSize * item->X(), itemSize * item->Y(), itemSize, itemSize);
    }
}

void Snake::Move() {
    int x = snakeBody.front()->X();
    int y = snakeBody.front()->Y();
    int fSize = owner->FieldSize();
    
    if (dir == Direction::up) {
        y -= 1;
        if (y < 0) y = fSize - 1;
    }
    else if (dir == Direction::right) {
        x += 1;
        if (x >= fSize) x = 0;
    }
    else if (dir == Direction::down) {
        y += 1;
        if (y >= fSize) y = 0;
    }
    else {
        x -= 1;
        if (x < 0) x = fSize - 1;
    }

    if (x == owner->food->X() && y == owner->food->Y()) {
        owner->food->SpawnNew(snakeBody);
        owner->IncScore();
    }
    else {
        snakeBody.pop_back();
    }
    for (const auto& item : snakeBody) {
        if (item->X() == x && item->Y() == y) {
            owner->GameOver();
            return;
        }
    }

    snakeBody.push_front(std::make_unique<SnakeItem>(x, y));
    owner->repaint();
}


GameField::GameField() : moveSnakeTimer(std::make_unique<QTimer>()){
    setFixedSize(500, 500);
    setFocusPolicy(Qt::StrongFocus);
    
    snake = std::make_unique<Snake>(this);
    fieldSize = width() / snake->ItemSize();

    food = std::make_unique<Food>(this, snake->ItemSize());
    connect(moveSnakeTimer.get(), &QTimer::timeout, snake.get(), &Snake::Move);
    moveSnakeTimer->start(snake->GetMoveSpeed());
}

void GameField::paintEvent(QPaintEvent* e) {
    QPainter painter;
    painter.begin(this);
    if (isGameOver) {
        painter.setFont(QFont("Arial", 35, 700));
        painter.drawText(QRect(0, 0, width(), height()), Qt::AlignCenter, ("GAME OVER !\nSCORE : " + std::to_string(score)).data());
        return;
    }
    
    painter.drawRect(0, 0, width(), height());
    snake->Draw(&painter);
    food->Draw(&painter);

    painter.end();
    snake->moveBlocked = false;
}

void GameField::keyPressEvent(QKeyEvent* e) {
    auto k = e->key();
    auto dir = snake->GetDir();

    if (k == Qt::Key_Space) {
        if (isGameOver) {
            StartNewGame();
            return;
        }
        isPaused = !isPaused;
        TogglePause();
        std::string text = "score : " + std::to_string(score) + "\nSPACE to ";
        text += isPaused ? "continue" : "stop";
        emit ChangeTextSignal(text);
    }
    
    if (snake->moveBlocked) return;
    
    if (k == Qt::Key_Left && dir != Direction::right) {
        snake->SetDir(Direction::left);
        snake->moveBlocked = true;
    }
    else if (k == Qt::Key_Right && dir != Direction::left) {
        snake->SetDir(Direction::right);
        snake->moveBlocked = true;
    }
    else if (k == Qt::Key_Down && dir != Direction::up) {
        snake->SetDir(Direction::down);
        snake->moveBlocked = true;
    }
    else if (k == Qt::Key_Up && dir != Direction::down) {
        snake->SetDir(Direction::up);
        snake->moveBlocked = true;
    }
}

void GameField::TogglePause() {
    if (isPaused) {
        moveSnakeTimer->stop();
    }
    else {
        moveSnakeTimer->start(snake->GetMoveSpeed());
    }
}

void GameField::GameOver() {
    isGameOver = true;
    emit ChangeTextSignal("SPACE - restart");
    snake = std::make_unique<Snake>(this);
    repaint();
}

void GameField::StartNewGame() {
    isGameOver = false;
    score = 0;
    isPaused = 0;
    
    connect(moveSnakeTimer.get(), &QTimer::timeout, snake.get(), &Snake::Move);
    moveSnakeTimer->start(snake->GetMoveSpeed());
    emit ChangeTextSignal("score : 0\nSPACE to stop");
}

void GameField::IncScore() noexcept {
    ++score; 
    emit ChangeTextSignal(
        ("score : " + std::to_string(score) + "\nSPACE to stop").data()
    );
}


Food::Food(GameField* ow, int s) : SnakeItem(0, 0), owner(ow), size(s) {
    x = owner->FieldSize() / 2;
    y = x;
}

void Food::SpawnNew(const std::list<std::unique_ptr<SnakeItem>>& bannedSpots) {
    x = QRandomGenerator::global()->bounded(0, owner->FieldSize() - 1);
    y = QRandomGenerator::global()->bounded(0, owner->FieldSize() - 1);
    
    for (const auto& item : bannedSpots) {
        if (item->X() == x && item->Y() == y) {
            SpawnNew(bannedSpots);
        }
    }
}

void Food::Draw(QPainter* painter) const {
    QColor red("red");
    Qt::BrushStyle style = Qt::SolidPattern;
    QBrush brush(red, style);
    painter->setBrush(brush);
    painter->setPen(Qt::NoPen);
    painter->drawEllipse(size * X(), size * Y(), size, size);
}