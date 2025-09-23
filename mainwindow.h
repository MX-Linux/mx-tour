/**********************************************************************
 *  mainwindow.h
 **********************************************************************
 * Copyright (C) 2015-2024 MX Authors
 *
 * Authors: Adrian
 *          Paul David Callahan
 *          Dolphin Oracle
 *          MX Linux <http://mxlinux.org>
 *
 * This file is part of mx-welcome.
 *
 * mx-welcome is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * mx-welcome is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with mx-welcome.  If not, see <http://www.gnu.org/licenses/>.
 **********************************************************************/

#pragma once

#include <QCommandLineParser>
#include <QMessageBox>
#include <QProcess>
#include <QSettings>

namespace Ui
{
class MainWindow;
}

class MainWindow : public QDialog
{
    Q_OBJECT

public:
    explicit MainWindow(const QCommandLineParser &arg_parser, QWidget *parent = nullptr);
    ~MainWindow() override;

    static QString runCmd(const QString &cmd);
    static QString getVersion(const QString &name);

    void setup();
    QString version;
    bool checkXFCE() const;
    bool checkFluxbox() const;
    bool checkPlasma() const;
    void fluxboxTour();
    void xfceTour();
    void kdeTour();

private slots:
    void on_buttonAbout_clicked();

    void on_buttonNext_clicked();

    void on_buttonPrevious_clicked();

    void on_buttonFAQ_clicked();

    void on_buttonManual_clicked();

    void on_buttonWiki_clicked();

    void on_buttonVideo_clicked();

    void on_buttonForum_clicked();

    void on_buttonFacebook_clicked();

    void on_buttonReddit_clicked();

    void on_tabWidget_currentChanged(int index);

private:
    Ui::MainWindow *ui;
    QProcess *proc {};

};
