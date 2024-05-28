#pragma once

#include <game/game.hpp>
#include <helpfield/helpfield.hpp>
#include <QtWidgets/QGridLayout>

class MainWindow : public QMainWindow {
    Q_OBJECT
public:
    MainWindow(QWidget* parent = nullptr);

private:
    std::shared_ptr<GameField> gameField;
    std::unique_ptr<HelpField> helpField;
    std::unique_ptr<QWidget> centralWidget;
    std::unique_ptr<QGridLayout> gridLayout;
} ;