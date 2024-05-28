#pragma once

#include <QtGui/QPainter>
#include <QtWidgets/QWidget>

class HelpField : public QWidget {
public:
    HelpField();

private:
    void paintEvent(QPaintEvent* e) override;
    std::string text;
public slots:
    void ChangeTextSlot(const std::string& str);
};