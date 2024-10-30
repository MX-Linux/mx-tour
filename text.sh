#!/bin/bash

#information about appfinder menu on used on MX fluxobx
app_finder=$(gettext 'The Application Finder (Applications Menu) is a easy to use and flexible main menu.

It consists of three main areas:
(1) Application Categories
(2) Search bar
(3) Individual Applications

You can open the Application Finder by Left-Clicking on the MX logo in the Panel or Quick Launch Dock.

When you first open it you are shown a list of all installed applications.
Additionally, you can browse through applications by clicking on the categories.

If you’re not sure exactly where a program is listed, the search field is automatically focused when opening the menu, so you can just search by application name or general words such as "browser".

To open an application, Double-Click on it or click the Launch button (4).

You can edit the menu behavior and appearance by clicking the Preferences (5) button.')

#information on conky desktop information display
conky=$(gettext 'You may have wondered about the Clock in the upper right corner of your screen, it is a Conky.

Conky is a light-weight system monitor that can display any kind of information on your desktop, either as text, or using simple progress bars and graph widgets, with different fonts and colors.

It can display the status of the CPU, memory, disk storage, temperatures, network interfaces, battery power, e-mail inboxes, many popular music players, weather updates, news feeds, and much more.

MX Linux comes with many different Conkies to choose from or edit.

MX Linux comes with three tools for Conky:
• Conky Toggle - to easily turn Conky off or on
• MX Conky - enables detailed changes to the actively running Conky
• Conky Manager - utility for managing and viewing Conky configuration files')

#information on plasma-discover software manager
discover=$(gettext 'Discover is also available for use to search for, install, or remove packages and applications quickly, safely, and easily.

It is a KDE native application so it also allows you to install KDE application and Plasma Add-ons such as widgets and extensions.

Discover may be considered more user friendly for new users but it is not configured for One Click installs from the MX "Popular Applications", the MX Test, Debian Backports, and Flatpak repositories.  For these you should use MX Package Installer.')

#information on the xfce4-panel docklike plugin, which doubles as tasklist and application launcher
docklike=$(gettext 'Docklike Taskbar is a lightweight, modern, and minimalist application taskbar that sits in the panel below the clock.  It starts with Firefox browser and Thunar File Manager pinned on it.

A few things to know about Docklike Taskbar are that you can:

(1) "Pin" an open application by Right-Clicking and checking "Pin to Dock"
(2) Customize the look and feel by Right-Clicking between two icons and selecting (3) Properties

The Docklike Taskbar (3) Properties can also be accessed from the Panel Tab of MX Tweak.
')

#information on KDE default menu
kde_menu=$(gettext 'The Application Menu is a easy to use and flexible main menu.

It consists of five main areas:
(1) Favorites Quick Links
(2) Recent Applications and Files
(3) Application Categories
(4) Search bar
(5) System Quick Links

You can open the Application Menu by Left-Clicking on it or pressing the "Windows" key on your keyboard.

You can browse through all of your installed applications by clicking on the categories on the side.

Favorites are easy to add, reorder, and remove by Right-Clicking on any application and select “Add to Favorites”. Simply drag and drop your favorites list to arrange them.

If you’re not sure exactly where a program is listed, the search field is automatically focused when opening the menu, so you can just search by application name or general words such as "browser".

You can edit the Application Menu properties by Right-Clicking on it.')

#informatoin on KDE default panel configuration
kde_panel=($gettext 'The default KDE panel sits at the bottom on the screen and includes from left to right:

(1) Application Menu

(2) Virtual Desktop switcher

(3) Task Manager
    • Settings Manager
    • Thunar File Manager
    • Firefox browser

(4) System Tray
    • Discover
    • Yakuake drop down terminal
    • Klipper clipboard utility
    • Audio Volume Settings
    • Network Connection Settings
    • Show Status and Notifications

(5) Digital Clock

You can modify the panel by Right-Clicking on it and choosing "Edit Panel" or "Add Widgets".
Panel orientation is easily changeable in MX Tools > MX Tweak.')

#information on KDE default systray configuration
kde_systray=$(gettext 'Place holder text for KDE System Tray.

Systme Tray consists of:
(1) Discover Notifier
(2) Yakuake (Drop Down Terminal)
(3) Klipper (Clipboard Utility)
(4) Audio Volume Settings - Adjust the volume of devices and applications
(5) Network Connection Manager
(6) Status and Notifications')

#Introduction that is presented when KDE is the detected environment
kde_tour_intro=$(gettext 'Using a new Operating System for the first time can seem challenging and scary.

MX Tour is designed to introduce and orient you to many of the features and graphical tools of MX Linux KDE Edition.

Each of the topic areas have been separated into Tabs on the far left.

You can navigate these Tabs by clicking on them or using the Up and Down arrow keys on your keyboard.

We hope you find this tour useful!
')

#information on mx-tweak options under KDE
kde_tweak=$(gettext 'MX Tweak brings together some small but often used customizations organized under different Tabs.

Tabs Overview:
 • Plasma - change the location, orientation, and options of the panel
 • Other - enable internal drive mount options, TearFree rendering, switch administrative account

Note: Some "tweaks" may not always appear, as they are desktop environment and hardware dependent.
')

#information on plasma-discover handling update notifications on KDE
kde_update=$(gettext 'Updates in MX KDE are handled by the Discover application.

When updates are available, the Discover icon will appear with a red dot on it in the System Tray area of the panel.

You can then Left-Click the Discover icon in the System Tray and it will open to show you available updates.

You can install all available updates or selectively choose the ones you want.

Right-Clicking the Discover icon allows you to:
    • Open Discover
    • See Updates
    • Refresh
    • Quit
')

#information on mx-snaphshot tool
mx_snapshot=$(gettext 'MX Snapshot allows you to create a bootable ISO file of your currently running MX Linux installation.

Using MX Live USB Maker, you can write the ISO file to CD/DVD or USB to use as a recovery method or to install on other systems.

Two types of Snapshot ISO files can be created:
• “Personal Snapshot” - saves almost everything, used to backup current system, and personal files
• “System Snapshot” - with apps you installed and without ones you removed, and no personal files
')

#information on the mx tool set
mx_tools=$(gettext 'Many applications have been developed specifically for MX Linux, adapted or brought over from antiX Linux, or adapted from outside sources to save you effort with important tasks often involving unintuitive steps.

The MX Tools dashboard (shown above), centralizes and organizes these tools for easy access and use.

Lets explore some MX Tools to help you setup and use your computer.
')

#Information on mx tweak application
mx_tweak=$(gettext 'MX Tweak brings together many small but often used customizations organized under different Tabs.

Tabs Overview:
 • Panel - change the location and orientation of the panel, access the Docklike Taskbar properties
 • Theme - select a Theme Set and or individual Application, Window Manager, and Icon themes
 • Compositor - change commonly needed Window Manager Compositor options
 • Display - change Desktop scaling, monitor resolution, and brightness settings
 • Config Options - change Single-Click and Double-Click options and enable Desktop Zoom
 • Other - enable internal drive mount options, TearFree rendering, switch administrative account

Note: Some "tweaks" may not always appear, as they are desktop environment and hardware dependent.
')

#information on mx-updater apt-notifier tool
mx_updater=$(gettext 'MX Updater sits in the Notification Area of the panel.

The icon turns green when updates are available and notifications will also alert you that updates exist. Left-Clicking the icon opens a window showing available updates.

Right-Clicking the icon brings up a menu with many options, such as:
(1) View and Upgrade - opens a window showing availabe updates
(2) Check for Updates - checks for more updates
(3) Preferences - opens the preferences window
')

#information on MX Welcome screen
mx_welcome=$(gettext 'When you booted your system for the first time, you should have noticed a Welcome screen that appeared in the center of the screen that offers quick orientation and help links for new and veteran users.

You can access MX Welcome again by finding it in the main Main Application Menu or by opening MX Tools.

You can use the "Show this dialog at start up" checkbox (as shown above) if you would like to see MX Welcome each time your system starts and uncheck it when you no longer need it.
')

#Information on mx fluxbox app finder options
mxfb_app_finder=$(gettext 'There are three very different application finders in MXFB, providing the user with choice of which to retain and use.

1. The Applications Menu ("Appfinder") is opened by Left-Clicking on the MX logo in the Panel. It consists of three main areas:

(1) Search Bar at the top
(2) Tabs on the left side for Applications, Categories and Help
(3) Tab details on the right side

The search field is automatically focused when opening the menu, so you can just search by application name or general words such as "browser". To open an application, Click on your selection or press Return. You can edit the menu behavior and appearance using the contents of the Help tab.

(Appfinder is built using "rofi," a very flexible and fast app with many applications that can be launched by pressing the logo or super key. Its settings are available in a separate app "Rofi Manager" that includes a large selection of possible templates.)

2. A second applications menu (the "rootMenu") is revealed by a right-click on the desktop and is a legacy of the original Fluxbox. It is a static and very rapid menu of common applications that can easily be edited by the user.

3. Included at the top of that rootMenu, finally, is a third application finder called "All Apps." It is similar in structure and behavior to a typical Debian menu, and updates automatically.

')

#Information on the conky desktop monitor tool on fluxbox
mxfb_conky=$(gettext 'You may have wondered about the Clock in the upper right corner of your screen, it is a Conky.

Conky is a light-weight system monitor that can display the status of the CPU, memory, disk storage, temperatures, network interfaces, battery power, e-mail inboxes, many popular music players, weather updates, news feeds, and much more.

MX Linux comes with many different Conkies to choose from or edit.

MX Linux comes with three tools for Conky:
• Conky Toggle - to easily turn Conky off or on
• MX Conky - enables detailed changes to the actively running Conky
• Conky Manager - utility for managing and viewing Conky configuration files
')

#information on mx fluxbox left hand side dock
mxfb_dock=$(gettext 'The Quick Launch Application Dock sits on the left side of the screen and by default provides easy access to a few commonly used applications.

It consists of:
(1) MX Tools
(2) MX Fluxbox Settings Manager
(3) MX Fluxbox User Manual

The default dock can easily be modified using MX Dockmaker; furthermore, it can be placed on auto-hide or cancelled completely using the root Menu > Out of Sight.

Another dock option is available using tint2 (the software behind the panel), which makes much greater customization possible. Two tint2 dock configurations can be found using the root Menu > Appearance > Dock.
')

#Information of mx fluxbox settings manager
mxfb_settings=$(gettext 'MXFB Settings Manager is your one-stop shop for tools to save you effort with important tasks and customizations using settings often involving unintuitive steps.

MXFB Settings Manager includes many applications have been developed specifically for MX Linux Fluxbox.
')

#introduction for mx tour when fluxbox is detected environment
mxfb_tour_intro=$(gettext 'Using a new Operating System for the first time can seem challenging and scary.

MX Tour is designed to introduce and orient you to many of the features and graphical tools of MX Linux Fluxbox Edition (MXFB).

Each of the topic areas has been separated into Tabs on the far left.
You can use the Tabs by clicking them or use your keyboard Up and Down arrow keys.

We hope you find this tour useful!
')

#information of mx tweak options for fluxbox
mxfb_tweak=$(gettext 'MX Tweak brings together many small customizations organized under different Tabs.

Tabs Overview:
 • Themes - select appearance elements: theme, MXFB style, icons and cursor; there is a separate app for Font
 • Fluxbox - set values for Dock, Menu, Desktop Icon, Toolbar and Thunar; Reset to defaults
 • Other - enable internal drive mount options, reset login screen, disable the All Apps menu, switch administrative account

Note: Some "tweaks" may not always appear, as they are desktop environment and hardware dependent.
')

#information on mx packageinstaller
mxpi=$(gettext 'MX Package Installer, often referred to simply as MXPI, allows you to search for, install, or remove packages and applications quickly, safely, and easily.

It consists of Tabs to help you install "Popular Applications" and any package in the MX/Debian Stable, the MX Test, Debian Backports, and Flatpak repositories.

The Popular Applications tab is organized by categories for easy searching and install.

The MX Test Repo tab is a safe and effective way to install new incoming applications that are waiting to be moved to the MX Stable repositories.

The Search function located in the upper right can help you locate applications easier.

And the Console Output tab can help you troubleshoot installation or removal issues.
')

#information on quick system info tool
qsi=$(gettext 'Quick System Info, also known as QSI, is a great and easy way to get a lot of information about your computer hardware and MX Linux installation.

The output is automatically copied to the clipboard, it can also be pasted directly into a MX Forum post complete with code tags, or pasted into a Text document for use later.

QSI is also a handy log viewer.

It is important to include your QSI when asking for help on the MX Forum so that the MX Community can better help you.

QSI automatically filters potentially sensitive information such as personal identifiers, showing it instead as "<filter>".
')

#Information on timeshift system rollback tool
timeshift=$(gettext 'Timeshift is an application that provides functionality similar to the System Restore feature in Windows and the Time Machine tool in Mac OS. Timeshift protects your system by taking incremental snapshots of the file system and settings at scheduled intervals. These snapshots can be restored at a later date to undo all changes to the system.

When you open Timeshift the first time, a Setup Wizard will run allowing you to select the location snapshots are saved to, the schedule, and if you want to include personal files or not.  You can rerun the Setup Wizard or change these settings at any time.

User files such as documents, pictures and music are excluded by default. This ensures that your personal files remain unchanged when you restore your system to an earlier date.

ATTENTION!
• Pay attention to the Snapshot schedule and disk space.  You can uncheck all boxes to make only on demand snapshots.
• Timeshift is NOT a backup tool, for full system backups please use MX Snapshot or luckyBackup.
')

#information on the bottom panel of fluxbox configuration
tint2_panel=$(gettext 'Lets explore some of the key components of the Tint2 panel at the bottom of the screen.

(1) Appfinder (Application Menu)

(2) Settings Manager
(3) Thunar File Manager
(4) Web Browser

(5) Notification Area consisting of:
    • Update manager
    • Network manager
    • Sound manager
    • Clipboard manager

(6) Clock (Date Time)
    • Left-Click to open a calendar, Escape (Esc) to close
    • Right-Click to set a alarm

(7) Power Button which opens a window to:
    • Lock • Log Out • Restart • Shutdown • Suspend

Even more options to customize your panel exist under Settings Manager > Tint2 Manager, where many other templates are available.
')

#information on Xfce default menu
whisker_menu=$(gettext '
The Whisker Menu (Applications Menu) is a easy to use and flexible main menu.

It consists of four main areas:
(1) Application Categories
(2) Individual Applications
(3) System Quick Links
(4) Search bar

You can open the Whisker Menu by Left-Clicking on it or pressing the "Windows" key on your keyboard.

You can browse through all of your installed applications by clicking on the categories on the side. Additionally, Whisker Menu keeps a list of the last ten Recently Used applications.

When you first open it you are shown a list of applications marked as favorites.  Favorites are easy to add and remove by Right-Clicking on any application and select “Add to Favorites”. Simply drag and drop your favorites list to arrange them.

If you’re not sure exactly where a program is listed, the search field is automatically focused when opening the menu, so you can just search by application name or general words such as "browser".

You can edit the Whisker Menu properties by Right-Clicking on it.
')

#information on default Xfce panel
xfce_panel=$(gettext '
You have probably noticed that the default desktop of MX Linux has a single vertical panel on the left side of the screen.

This may be very different to what you are used to, but it saves screen space for your applications, and it can become very natural after a short amount of time.

Panel orientation is easily changeable in MX Tools > MX Tweak.

Even more options to customize your panel exist under Settings Manager > Panel

Lets explore some of the key components of the panel from top to bottom:

(1) Power Button which opens a window to:
    • Log Out
    • Restart
    • Shutdown
    • Suspend

(2) Clock (Date Time)
    • Left-Click to open a calendar
    • Right-Click to change the properties

(3) Docklike Taskbar (Application Switcher)
    • Firefox browser
    • Thunar File Manager

(4) Notification Area consists of (from top to bottom)
    • Volume manager
    • USB ejector
    • Clipboard manager
    • Network manager
    • Update manager
    • Power manager

(5) Whisker Menu (Application Menu)
')

#Introduction given when Xfce is detected environment
xfce_tour_intro=$(gettext 'Using a new Operating System for the first time can seem challenging and scary.

MX Tour is designed to introduce and orient you to many of the features and gUsing a new Operating System for the first time can seem challenging and scary.

MX Tour is designed to introduce and orient you to many of the features and graphical tools of MX Linux Xfce Edition.

Each of the topic areas have been separated into Tabs on the far left.

You can navigate these Tabs by clicking on them or using the Up and Down arrow keys on your keyboard.

We hope you find this tour useful!
raphical tools of MX Linux Xfce Edition.

Each of the topic areas have been separated into Tabs on the far left.

You can navigate these Tabs by clicking on them or using the Up and Down arrow keys on your keyboard.

We hope you find this tour useful!
')
