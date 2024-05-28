#pragma once

#include <game/game.hpp>
#include <helpfield/helpfield.hpp>
#include <QtWidgets/QGridLayout>

class MainWindow : public QMainWindow {
    Q_OBJECT
public:
    MainWindow(QWidget* parent = nullptr);
    ~MainWindow() {}

private:
    std::shared_ptr<GameField> gameField;
    HelpField* helpField;
    QWidget* centralWidget;
    QGridLayout* gridLayout;
} ;