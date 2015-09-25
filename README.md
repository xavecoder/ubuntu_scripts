## Things to do after installing Elementary OS

#### Installation Sequence
1. Install Common Programs
    - **script:** ./install_common_programs.sh
    - Run on your **user account** (not as root)
    - Check if the *LINK_** are valid
    - Dropbox can present some errors

2. Install Atlas on Performance Mode
    - **script:** ././atlas_+_numpy/intall_atlas.sh
    - **info:** ./atlas_+_numpy/README.txt
    - If you cannot install it, install the normal version which is in **./install_dev_programs.sh**

3. Install Dev Programs
    - **script:** ./install_dev_programs.sh

4. Do the Manual Installation
    - Instructions below

5. Install and Configure IFT
    - see: ./ift.txt

#### Manual Installation
- Elementary OS Shortcuts: http://lmelinux.net/2014/07/26/elementary-os-keyboard-shortcuts/

- Enable the Tap to click of the touchpad
    - System Settings > Touchpad > Tap to Click

- Enable Minimize Window Buttom: http://itsfoss.com/add-minimize-button-in-elementary-os-luna/
    - Install the elementary-tweaks

        ```
        sudo add-apt-repository -y ppa:mpstark/elementary-tweaks-daily
        sudo apt-get update
        sudo apt-get -y install elementary-tweaks
        ```
    - Go to System Settings > Tweaks > Appearance:
        - Change the "Window Controls" to OS X

- Enable the double click to open a file/dir
    - Go to System Settings > Tweaks > Applications > Files:
        - Turn off: Single click

- Configure Sublime Text
    - Add the sublime font on Preferences > Settings User:
        "font_face": "monaco",
        "font_size": 14

    - Copy the content of ./sublime/my_keys.sublime-keymap into Preferences > Key Bindings User

    - Insert Custom User Preferences > Setting User:
    "rulers": [100],
    "tab_size": 4,
    "translate_tabs_to_spaces": true

    - Install the themes in ./sublime/
        - http://colorsublime.com/how-to-install-a-theme
        ```
        $ cd ~/.config/sublime-text-3/Packages (<sublime-text-3 Packages directory>
        $ mkdir Colorsublime-Themes
        $ cp <elementary_script_dir>/sublime/*.tmTheme Colorsublime-Themes
        ```
        - The theme that I've been using is the *1337.tmTheme*

    - Install Package Control https://sublime.wbond.net/installation
    - Then, to install a package: On Sublime, press ctrl+shift+p, install Package and select the package
    - Some packages to install:
        - SideBarEnhancements
        - PackageResourceViewer
        - Alignment: ctrl+alt+a para alinhar
        - BracketHighlighter
        - AStyleFormatter - ctrl+alt+f para alinhar todo o arquivo, ctrl+k+f para alinhar um trecho selecionado
        - ColorPicker: ctrl+shift+p, color... escolha a cor
        - Cython
        - LateXTool
            + It's required to install: latexmk
            + After Installing, Reconfigure LatexTools
                * Preferences > Package Settings > LatexTools > Reconfigure LatexTool
            + Edit custom settins in Preferences > Package Settings > LatexTools > Settings User:
                * "keep_focus": false,
                * "display_log" : true,
        - Git
        - Trimmer: helps you remove unnecessary spaces, as well as trailing spaces
        - DocBlockr: lets you create documentation or annotation for your codes with ease, by parsing the functions, parameters, variables, and automatically adding some possible documentation
        - MarkDownEditing: edit .md
        - FileDiffs:  allows you to see the differences between two files in SublimeText
        - C++11
        - Markdown Preview
        - Aligntab
        - Fold Comments - ctrl+. to fold/unfold all comments in the text

        - Clang-Complete (Auto completion to C/C++)
            - https://packagecontrol.io/packages/Clang-Complete
            ```
            $ cd ~/.config/sublime-text-3/Packages (<sublime-text-3 Packages directory>  # see note above
            $ git clone https://github.com/lvzixun/Clang-Complete.git
            $ cd Clang-Complete
            $ make linux
            ```
            - Go to the configuration file in *~/.config/sublime-text-3/Packages/Clang-Complete/cc.sublime-settings* and add the following content
            ```
            "additional_language_options":
            {
                // For example, you can use "c++": ["-std=c++11"] to enable C++11 features.
                "c++" : ["-std=c++11"],
                ...
            },
            
            ...

            // add the following include paths.
            // CHECK the versions of GCC, CLANG, and LLVM
            "include_options":
            [
                ...
                "-isystem", "/usr/include",
                "-isystem", "/usr/include/c++/*",
                "-isystem", "/usr/lib/gcc/x86_64-linux-gnu/4.8/include/",
                "-isystem", "/usr/lib/gcc/x86_64-linux-gnu/4.9/include-fixed",
                "-isystem", "/usr/lib/llvm-3.5/lib/clang/3.5.0/include/",
                "-isystem", "/usr/local/opt/llvm/include",
                "-Wall"
            ],
            ```
            - In the configuration file of the projects, for example, **~/Dropbox/workspace/apps/ift/ift.sublime-project**, add
            ```
            "settings":
            {
                "cc_include_options":
                [
                    "-I/home/samuka/Dropbox/workspace/apps/ift/include"
                ]
            }
            ```


        For Web
        - LiveReload - realoads the web page automatically after saving the source.
        - ColorHighlighter
        - AutoFileName
        - CSScomb // code style formatter
        - Bootstrap3 Snippets
        - Sass
        - jQuery Snippets pack
        - PHPIntel
        - CSS Snippets
        - CSS Completions
        - CSS3
        - HTMLAttributes
        - HTML Snippets
        - HTMLBeautify
        - Emmet - several snippets for web development
        - LiveStyle - Live bi-directional CSS edit of new generation
                    - if you edit the css by the browser, it is edit in the source file
        - HTML5 - snippets and bundlers for HTML5


- Terminal History - https://coderwall.com/p/oqtj8w/the-single-most-useful-thing-in-bash
    - Create ~/.inputrc and fill it with this:
        ```
        "\e[A": history-search-backward
        "\e[B": history-search-forward
        set show-all-if-ambiguous on
        set completion-ignore-case on

        # mappings for Ctrl-left-arrow and Ctrl-right-arrow for word moving
        "\e[1;5C": forward-word
        "\e[1;5D": backward-word
        "\e[5C": forward-word
        "\e[5D": backward-word
        "\e\e[C": forward-word
        "\e\e[D": backward-word
        ```
    - Restart the terminal

- Clion:
	- Download on https://www.jetbrains.com/clion/download/
    - Force Font Anti-Alising:
        - Open: clion_directory/bin/clion64.vmoptions and add:
            -Dawt.useSystemAAFontSettings=on
            -Dswing.aatext=true
            -Dsun.java2d.xrender=true
    - Increase the JVM Memory
        - Open: clion_directory/bin/clion64.vmoptions
            -Xms1024m

	- Import my custom (MyClionPreferences.jar) preferences on Clion:
		- File > Import Setting
		- My preferences includes color scheme, some configuration editor zoom with ctrl+scroll, show line number,
		  font anti-aliasing, sublime-like keybind, etc.
		- It is required the fonts: monaco.ttf and FreeSans.ttf
	- To create snippets:
		- File > Settings > Editor > Live Templates
	- Some interesting Custom Keybinds:
		- Ctrl+shift+MouseButton1 = Adds carets (multiple cursors) where you click - like Ctrl+MouseButton1 on Sublime
		- Ctrl+Alt+DragMouseButton1 = Add carets where in the lines that you select
		- Alt+Shift+Up/Down = Clone a caret above/bottom
		- Ctrl+MouseButton1 or F12 = Go to Definition
		- Ctrl+Alt+Enter = Split Line - E.g: If the caret is in the half of a string and you enter
										with this shortcut, the line will be splitted and the "" will
										be added automatically
		- Ctrl+. = Fold/Unfold code blocks
		- Ctrl+P = Search a file - like Sublime
		- Ctrl+Shift+P = Search a symbol, like Classes, Structs, Functions, Methods...
		- Ctrl+Alt+P = Search Classes and Structs...
		- Ctrl+H = Replace (in the current file)
		- Ctrl+Shift+H = Replace in a path
		- Ctrl+M or Shift+F4 = Open Source in a new window
		- Ctrl+Shift+E = Split pane/editor vertically
		- Ctrl+Shift+O = Split pane/editor horizontally
		- Ctrl+Shift+W = Unsplit the current panes/editors
		- Ctrl+Alt+Shift+W = Unsplit all panes/editors
		- Ctrl+E = Move to the next Splitter
		- Ctrl+Q = Move to the previou Splitter
		- Alt+1 = Show/Hide the Project Tool Window
		- Ctrl+T = Open Recent Files Window
		- Ctrl+Shift+T = Reopen Closed Tabs
		- Ctrl+F4 = Close All Tabs

- Tex Live Packages
    - Add in .bashrc:
        PATH=$PATH:/usr/local/texlive/2014/bin/i386-linux
        
- Install Multimedia Codecs and Enable DVD Playback (it requires an Enter in a new window)
    ```
    sudo apt-add-repository -y ppa:mc3man/trusty-media
    sudo apt-get -y update
    sudo apt-get -y install ubuntu-restricted-extras ffmpeg gstreamer0.10-plugins-ugly libavcodec-extra-54 libvdpau-va-gl1 libmad0 mpg321 gstreamer1.0-libav
    ```
- Skype
    - Add it in Session Applications
        - On terminal: `gnome-session-properties`
        - Add: **skype**

- Dropbox: fix the dropbox notifier
    - After the installation, on terminal:
    
    `dropbox stop && env XDG_CURRENT_DESKTOP=Unity dropbox start`

    - Go to Dropbox Preferences via Dropbox notifier on the system tray
        - turn off "Start Dropbox on system startup" 
    - Go to "Session Applications"
        - On terminal: `gnome-session-properties`
    - Add: `env XDG_CURRENT_DESKTOP=Unity dropbox start`

    - Source: http://www.srw2d.com/getting-dropbox-notification-working-in-elementary-os-freya/

- Copy
    - Add it to **alacarte** Menu Editor
    - Login on Copy

- Pop Corn
    - Execute it
    - Add it to **alacarte** Menu Editor

- TLP
    - Add it in Session Applications
        - On Terminal: `gnome-session-properties`
        - Add: tlp start

- Terminator: Adding the custom Keybinding: **ctrl+'**
    ```
    sudo apt-get -y install xbindkeys
    xbindkeys --defaults > ~/.xbindkeysrc
    ```
    - Open **~/.xbindkeysrc**
    - Type before the end section:
        ```
        "terminator"
        
        control+apostrophe
        ```
    - Now, on terminal, reload the xbindkeys

        `xbindkeys`
    
    - Your custom keybinding is ready!

    - Sources
        - http://unix.stackexchange.com/questions/94622/how-to-run-a-script-by-shortkey-in-elementaryos
        - http://www.vivaolinux.com.br/artigo/Teclas-de-atalho-com-Xbindkeys?pagina=2

- Eclipse
    - Add it to **alacarte** Menu Editor
    - Install Subclipse (SVN on Eclipse)
        - Help > Eclipse Marketplace

- Gnome System Monitor
    - Install it on Software Center
    - Add the keybinding: ctrl+shift+esc
        - Open **~/.xbindkeysrc**
        - Type before the end section:
            ```
            "gnome-system-monitor"
            
            control+shift+escape
            ```
        - Now, on terminal, reload the xbindkeys

        `xbindkeys`
    
        - Your custom keybinding is ready!


- Xampp
    - Download: https://www.apachefriends.org/xampp-files/5.6.8/xampp-linux-x64-5.6.8-0-installer.run

- Kingsoft Office (WPS)
    - Adding the pt_BR dict
        - Check if the folder **~/.kingsoft/office6/dicts** exists, then:
        ```$ cp ./wps/pt_BR ~/.kingsoft/office6/dicts -ax```
        - Now, go to WPS and check: Review > Spell Check

- Enable Banco do Brasil and Santander on Firefox
    ```
    sudo mkdir -p /etc/.java/.systemPrefs
    sudo chmod 755 -R /etc/.java 
    sudo add-apt-repository -y ppa:webupd8team/java 
    sudo apt-get update 
    sudo apt-get install -y oracle-jdk7-installer icedtea-7-plugin 
    ```

- Fixing the problem of accents on PlayOnLinux Office 2010:
    - Open the .desktop of the Excel, Word, and PowerPoint
        - they can be founded in ~/.local/share/applications/ or /local/share/applications/
            - playonlinux-Microsoft Excel 2010.desktop 
            - playonlinux-Microsoft Powerpoint 2010.desktop 
            - playonlinux-Microsoft Word 2010.desktop 
    - Replace the following comand in each one:
        ```
        Exec=env XMODIFIERS='' playonlinux --run "Microsoft Excel 2010" %F
        Exec=env XMODIFIERS='' playonlinux --run "Microsoft Powerpoint 2010" %F
        Exec=env XMODIFIERS='' playonlinux --run "Microsoft Word 2010" %F
        ```