#include <helpfield/helpfield.hpp>

HelpField::HelpField() {
    setFixedSize(500, 70);
    text = "score : 0\n SPACE to pause";
}

void HelpField::paintEvent(QPaintEvent* e) {
    QPainter painter;
    painter.begin(this);
    painter.drawRect(0, 0, width(), height());
    painter.setFont(QFont("Arial", 25, 700));

    painter.drawText(QRect(0, 0, width(), height()), Qt::AlignCenter, text.data());
    painter.end();
}

void HelpField::ChangeTextSlot(const std::string& str) {
    text = str;
    repaint();
}