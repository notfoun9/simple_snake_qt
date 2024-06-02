#include <mainwindow/mainwindow.hpp>

MainWindow::MainWindow(QWidget* parent) : QMainWindow(parent) {
    // setFixedSize(320, 380);

    gameField = std::make_shared<GameField>();
    helpField = std::make_unique<HelpField>();

    connect(gameField.get(), &GameField::ChangeTextSignal, helpField.get(), &HelpField::ChangeTextSlot);

    centralWidget = new QWidget;
    gridLayout = std::make_unique<QGridLayout>();
    gridLayout->addWidget(gameField.get(), 0, 0);
    gridLayout->addWidget(helpField.get(), 1, 0);

    centralWidget->setLayout(gridLayout.get());
    setCentralWidget(centralWidget);
}