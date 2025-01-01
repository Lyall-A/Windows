# [Installing Windows (Lyall's way)](https://www.microsoft.com/software-download/windows11)

![Desktop Screenshot](Screenshot.png)

## Windows Setup
* Do NOT sign in with Microsoft
* Reject all privacy/telemetry settings

## After setup
* Activate Windows by running `irm https://get.activated.win | iex` in PowerShell
* Download [this repository](https://github.com/Lyall-A/Windows)
* Extract to Desktop
* Install [Chocolatey](https://chocolatey.org/install#individual)
  * Or run `Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))` in PowerShell with administrator
* Open the extracted folder and go to `Lyall-A-main > Scripts`
* Run `Enable Windows highest mode.bat` as administrator to use higher resolution when booting
* Run `Install packages with Chocolatey.bat` as administrator to install all applications, this doesn't include stuff like NVIDIA or any peripheral related stuff
  * Wait for the script to finish installing everything
  * Some stuff will likely fail, install those manually
* Install any other applications
* Remove all default pinned apps in Start menu
* Disable stuff in Task Manager Startup apps
* Organise taskbar and system tray
* Set [settings](#settings)
* Set [application settings](#application-settings)

## Settings
* **System**:
  * **About**:
    * Rename this PC
  * **Clipboard**:
    * Clipboard history: `On`
  * **Notifications**:
    * **Turn on do not disturb automatically**:
      * When duplicating your display (priority notification banners are also hidden): `No`
      * When playing a game: `No`
      * When using an app in full-screen mode (priority notifaction banners are also hidden): `No`
      * For the first hour after a Windows feature update: `No`
  * **Sound**:
    * Set Output and Input devices
* **Bluetooth & devices > Mouse**:
  * Enhance pointer precision: `Off`
* **Personalisation**:
  * **Background**:
    * Personalize your background: `Picture`
  * **Colours**:
    * Choose your mode: `Dark`
  * **Lock screen**:
    * Lock screen status: `None`
  * **Start**:
    * Show recently added apps: `On`
    * Show the most used apps: `On`
    * Show recently opened items in Start, Jump Lists, and File Explorer: `Off`
    * Show recommendations for tips, shortcuts, new apps, and more: `Off`
    * Show account-related notifications: `Off`
  * **Taskbar**:
    * **Taskbar items**:
      * Search: `Search box`
      * Copilot (preview): `Off`
      * Task view: `Off`
      * Widgets: `Off`
    * **Taskbar behaviours**:
      * Taskbar alignment: `Left`
  * **Accessibility**:
    * **Keyboard**:
      * Go to Sticky keys and Filter keys and turn off the keyboard shortcuts

## Application Settings
* **File Explorer**:
  * **View > Show**:
    * File name extensions: `Checked`
    * Hidden items: `Checked`
  * **Options**:
    * **General**:
      * Open File Explorer to: `This PC`
      * **Privacy**:
        * All unchecked
* **Winaero Tweaker**:
  * **File > Import/Export Tweaks > Import tweaks from a file > Next > Browse**:
    * Select Winaero Tweaker config
    * Next > Finish
* **Voicemeeter**:
  * **Menu**:
    * Auto Restart Audio Engine (A1 Device): `Checked`
    * System Tray: `Checked`
    * Run on Windows Startup: `Checked`
    * **Load Settings...**:
      * Select Voicemeeter config
* **Macro Buttons**:
  * System Tray (Close = Hide): `Checked`
  * Store Last Buttons State: `Checked`
  * Run MacroButtons on Voicemeeter start: `Checked`
  * **Load Button Map**:
    * Select Macro Buttons config
* **Brave**:
  * **Sync**:
    * **Start using sync > I have a Sync Code**:
      * Enter sync code
    * **Manage your synced devices**:
      * Sync Settings: `Sync everything`
  * **Get started**:
    * On start-up: `Open the New Tab page`
  * **Appearance > Toolbar**:
    * Show Home button: `Off`
    * Show bookmarks button: `On`
    * Show bookmarks bar: `Always`
    * Show Brave News button: `Off`
    * Show Leo AI button: `Off`
    * Show Brave Rewards button: `Off`
    * Show Brave Wallet button: `Off`
    * Show sidebar button: `Off`
    * Show VPN button: `Off`
    * **Show autocomplete suggestions in address bar**:
      * All unchecked except `Bookmarks` and `Quick commands`
    * Use wide address bar: `On`
    * Always show full URLs: `On`
  * **Autofill and password**:
    * Allow auto-fill in private windows: `Off`
  * **Downloads**:
    * Ask where to save each file before downloading: `Off`
  * **Help tips**:
    * Warn me before closing window with multiple tabs: `Off`
  * **Customize (New Tab)**:
    * Background Image: `Off`
    * Brave Stats: `Off`
    * Top Sites: `Off`
    * Clock: `On`
    * Cards: `Off`
    * Search: `Off`
  * **Extensions**:
    * **Violentmonkey**:
      * Import all your scripts
* **TranslucentTB**:
  * Desktop: `Clear`
  * Maximized window: `Acrylic`
  * Rest disabled
* **Spotify**:
  * **Audio quality**:
    * Streaming quality: `High` or `Very high` with Premium
    * Download: `Very high` with Premium
    * Auto-adjust quality: `Off`
    * Normalise volume: `Off`
  * **Start-up and window behaviour**:
    * Open Spotify automatically after you log in to the computer: `Minimised`
    * Close button should minimise the Spotify window: `On`
* **Logitech G Hub**:
  * Allow games & applications to control illumination: `Unchecked`
  * Desktop notifications: `Unchecked`
  * Device recommendation: `Unchecked`

## Other applications not yet added to [Application Settings](#application-settings):
* OBS Studio
* ShareX
* OpenRGB