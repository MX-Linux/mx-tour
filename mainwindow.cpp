/**********************************************************************
 *  mainwindow.cpp
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

#include <QDebug>
#include <QDir>
#include <QFileInfo>
#include <QTextEdit>

#include "about.h"
#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "version.h"

MainWindow::MainWindow(const QCommandLineParser& arg_parser, QWidget* parent)
    : QDialog(parent),
      ui(new Ui::MainWindow)
{
    // qDebug().noquote() << QCoreApplication::applicationName() << "version:" << VERSION;
    ui->setupUi(this);
    setWindowFlags(Qt::Window); // For the close, min and max buttons
    connect(ui->buttonCancel, &QPushButton::pressed, this, &MainWindow::close);
    setup();
    ui->tabWidget->setCurrentIndex(0);


}

MainWindow::~MainWindow()
{
    delete ui;
}

// Setup versious items first time program runs
void MainWindow::setup()
{
    version = getVersion("mx-tour");
    if (checkFluxbox()) {
        fluxboxTour();
    } else if (checkPlasma()){
        kdeTour();
    }else {
        xfceTour();{}
    }

    ui->buttonFAQ->setIcon(QIcon::fromTheme("infoview"));
    this->setWindowTitle(tr("MX Tour"));
    this->adjustSize();
}

// Util function for getting bash command output and error code
QString MainWindow::runCmd(const QString& cmd)
{
    QEventLoop loop;
    QProcess proc;
    proc.setProcessChannelMode(QProcess::MergedChannels);
    connect(&proc, QOverload<int, QProcess::ExitStatus>::of(&QProcess::finished), &loop, &QEventLoop::quit);
    proc.start("/bin/bash", {"-c", cmd});
    loop.exec();
    return proc.readAll().trimmed();
}

// Get version of the program
QString MainWindow::getVersion(const QString& name)
{
    return runCmd("dpkg-query -f '${Version}' -W " + name);
}

void MainWindow::on_buttonAbout_clicked()
{
    this->hide();
    displayAboutMsgBox(
        tr("About MX Tour"),
        "<p align=\"center\"><b><h2>" + tr("MX Tour") + "</h2></b></p><p align=\"center\">" + tr("Version: ")
            + version + "</p><p align=\"center\"><h3>" + tr("Explore and learn about MX Linux")
            + "</h3></p><p align=\"center\"><a href=\"http://mxlinux.org\">http://mxlinux.org</a><br /></p>"
              "<p align=\"center\">"
            + tr("Copyright (c) MX Linux") + "<br /><br /></p>",
        "/usr/share/doc/mx-tour/license.html", tr("%1 License").arg(this->windowTitle()));
    this->show();
}


void MainWindow::on_buttonNext_clicked()
{
    ui->tabWidget->setCurrentIndex(ui->tabWidget->currentIndex() + 1);
}


void MainWindow::on_buttonPrevious_clicked()
{
    ui->tabWidget->setCurrentIndex(ui->tabWidget->currentIndex() - 1);
}

bool MainWindow::checkXFCE() const
{
    QString test = runCmd(QStringLiteral("pgrep xfce4-session"));
    return (!test.isEmpty());
}

bool MainWindow::checkFluxbox() const
{
    QString test = runCmd(QStringLiteral("pgrep fluxbox"));

    return (!test.isEmpty());
}

bool MainWindow::checkPlasma() const
{
    QString test = runCmd(QStringLiteral("pgrep plasma"));
    return (!test.isEmpty());
}

void MainWindow::fluxboxTour() {

    ui->tabWidget->removeTab(20);
    ui->tabWidget->removeTab(17);
    ui->tabWidget->removeTab(15);
    ui->tabWidget->removeTab(14);
    ui->tabWidget->removeTab(7);
    ui->tabWidget->removeTab(6);
    ui->tabWidget->removeTab(5);
    ui->tabWidget->removeTab(4);
    ui->tabWidget->removeTab(3);

    ui->graphiclabel->setPixmap(QPixmap(":/images/mxfb_tour_intro.png"));
    ui->graphicMXFBPanel->setPixmap(QPixmap(":images/tint2_panel.png"));
    ui->graphicMXFBappfinder->setPixmap(QPixmap(":images/mxfb_app_finder.png"));
    ui->graphicMXFBAppDock->setPixmap(QPixmap(":images/mxfb_dock.png"));
    ui->graphicConky->setPixmap(QPixmap(":images/conky.png"));
    ui->graphicMXTools->setPixmap(QPixmap(":images/mx_tools.png"));
    ui->graphicMXWelcome->setPixmap(QPixmap(":images/mx_welcome.png"));
    ui->graphicMXFBSettings->setPixmap(QPixmap(":images/mxfb_settings.png"));
    ui->graphicMXTweak->setPixmap(QPixmap(":images/mxfb_tweak.png"));
    ui->graphicInstallApps->setPixmap(QPixmap(":images/mxpi.png"));
    ui->graphicUpdate->setPixmap(QPixmap(":images/mxfb_updater.png"));
    ui->graphicSnapshot->setPixmap(QPixmap(":images/mx_snapshot.png"));
    ui->graphicSystemInfo->setPixmap(QPixmap(":images/qsi.png"));

}

void MainWindow::xfceTour() {
    ui->tabWidget->removeTab(17);
    ui->tabWidget->removeTab(15);
    ui->tabWidget->removeTab(13);
    ui->tabWidget->removeTab(12);
    ui->tabWidget->removeTab(8);
    ui->tabWidget->removeTab(5);
    ui->tabWidget->removeTab(3);
    ui->tabWidget->removeTab(2);
    ui->tabWidget->removeTab(1);

    ui->graphiclabel->setPixmap(QPixmap(":images/xfce_tour_intro.png"));
    ui->graphicXfcePanel->setPixmap(QPixmap(":images/xfce_panel.png"));
    ui->graphicXfceTaskbar->setPixmap(QPixmap(":images/docklike.png"));
    ui->graphicXfceMenu->setPixmap(QPixmap(":images/whisker_menu.png"));
    ui->graphicConky->setPixmap(QPixmap(":images/conky.png"));
    ui->graphicMXTools->setPixmap(QPixmap(":images/mx_tools.png"));
    ui->graphicMXWelcome->setPixmap(QPixmap(":images/mx_welcome.png"));
    ui->graphicXFCETweak->setPixmap(QPixmap(":images/mx_tweak.png"));
    ui->graphicInstallApps->setPixmap(QPixmap(":images/mxpi.png"));
    ui->graphicUpdate->setPixmap(QPixmap(":images/mxfb_updater.png"));
    ui->graphicSnapshot->setPixmap(QPixmap(":images/mx_snapshot.png"));
    ui->graphicSystemInfo->setPixmap(QPixmap(":images/qsi.png"));
    ui->graphicTimeshift->setPixmap(QPixmap(":images/timeshift.png"));
}

void MainWindow::kdeTour() {

    ui->tabWidget->removeTab(14);
    ui->tabWidget->removeTab(13);
    ui->tabWidget->removeTab(12);
    ui->tabWidget->removeTab(8);
    ui->tabWidget->removeTab(7);
    ui->tabWidget->removeTab(6);
    ui->tabWidget->removeTab(4);
    ui->tabWidget->removeTab(2);
    ui->tabWidget->removeTab(1);

    ui->graphiclabel->setPixmap(QPixmap(":images/kde_tour_intro.png"));
    ui->graphicKDEpanel->setPixmap(QPixmap(":images/kde_panel.png"));
    ui->graphicKDEmenu->setPixmap(QPixmap(":images/kde_menu.png"));
    ui->graphicConky->setPixmap(QPixmap(":images/conky.png"));
    ui->graphicMXTools->setPixmap(QPixmap(":images/mx_tools.png"));
    ui->graphicMXWelcome->setPixmap(QPixmap(":images/mx_welcome.png"));
    ui->graphicKDETweak->setPixmap(QPixmap(":images/kde_tweak.png"));
    ui->graphicInstallApps->setPixmap(QPixmap(":images/mxpi.png"));
    ui->graphicUpdate->setPixmap(QPixmap(":images/mxfb_updater.png"));
    ui->graphicSnapshot->setPixmap(QPixmap(":images/mx_snapshot.png"));
    ui->graphicSystemInfo->setPixmap(QPixmap(":images/qsi.png"));
    ui->graphicTimeshift->setPixmap(QPixmap(":images/timeshift.png"));
    ui->graphicDiscover->setPixmap(QPixmap(":/images/discover.png"));
}

