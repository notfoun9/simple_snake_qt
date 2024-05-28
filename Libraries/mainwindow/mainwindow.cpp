#include <mainwindow/mainwindow.hpp>

MainWindow::MainWindow(QWidget* parent) : QMainWindow(parent) {
    // setFixedSize(320, 380);

    gameField = std::make_shared<GameField>();
    helpField = new HelpField();

    connect(gameField.get(), &GameField::ChangeTextSignal, helpField, &HelpField::ChangeTextSlot);

    centralWidget = new QWidget();
    gridLayout = new QGridLayout();
    gridLayout->addWidget(gameField.get(), 0, 0);
    gridLayout->addWidget(helpField, 1, 0);

    centralWidget->setLayout(gridLayout);
    setCentralWidget(centralWidget);
}