# macOS setup for web development

*remember to put all these shell script into home folder*

### STEP 1:  Disable SIP prior to all of these. (some changes we make requires you do this, for example disable the notification center on your mac.)

1. Boot into recovery mode and check the status of SIP.
    * `csrutil status`
2. Disable SIP.
    * `csrutil disable`
3. Restart your device and check whether SIP is disabled.

### STEP 2: Delete spotlight icon on menu bar
1. `cd /System/Library/CoreServices/Spotlight.app/Contents/MacOS`
2. `sudo cp Spotlight Spotlight.bak`
3. `ls`
4. At this point you should see 2 files are being listed, one is `Spotlight` the other one is `Spotlight.bak` **Do not proceed if you cannot see both files!**
5. * For macOS 10.11-10.14 
`sudo perl -pi -e 's|(\x00\x00\x00\x00\x00\x00\x47\x40\x00\x00\x00\x00\x00\x00)\x42\x40(\x00\x00\x80\x3f\x00\x00\x70\x42)|$1\x00\x00$2|sg' Spotlight`
    * For macOS 10.10
    `sudo perl -pi -e 's|(\x48\xb8\x00\x00\x00\x00\x00\x00)\x42\x40(\x48\x89\x47\x10\x48\xB8\x00\x00\x00\x00\x00\x00\x36\x40)|$1\x00\x00$2|sg' Spotlight`
6. `cmp -l Spotlight Spotlight.bak`
7. You should see something like this: 
* `248855 0 102`
* `248856 0 100`
8. `sudo codesign -f -s - Spotlight`
9. `sudo killall Spotlight`

### STEP 3: Install shell scripts
* homebrew.sh
    ```
    chmod +x ./brew.sh
    ./brew.sh
    ```

* macOS.sh
    ```
    chmod +x ./macOS.sh
    ./macOS.sh
    ```

* zsh.sh (install zsh & Oh My Zsh)
    ```
    chmod +x ./zsh.sh
    ./zsh.sh

    # Then follow these steps: 
    # Go to System Preferences
    # Click on "Users & Groups"
    # Click the lock to make changes.
    # Right click the current user -> Advanced options
    # Change the login shell to /bin/zsh in the dropdown.
    # Open a new terminal and verify with echo $SHELL
    ```
### Final step, re-enable SIP on your machine. 

### Step 4, sync up VS CODE extensions.

```
code --install-extension 2gua.rainbow-brackets
code --install-extension abusaidm.html-snippets
code --install-extension alefragnani.project-manager
code --install-extension be5invis.vscode-custom-css
code --install-extension brpaz.file-templates
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension donjayamanne.githistory
code --install-extension dzannotti.vscode-babel-coloring
code --install-extension ecmel.vscode-html-css
code --install-extension EditorConfig.EditorConfig
code --install-extension EQuimper.react-native-react-redux
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension formulahendry.code-runner
code --install-extension gamunu.vscode-yarn
code --install-extension hnw.vscode-auto-open-markdown-preview
code --install-extension HookyQR.beautify
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension leizongmin.node-module-intellisense
code --install-extension leveluptutorials.theme-levelup
code --install-extension ms-vscode.csharp
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension naumovs.color-highlight
code --install-extension oderwat.indent-rainbow
code --install-extension PKief.material-icon-theme
code --install-extension ritwickdey.LiveServer
code --install-extension Shan.code-settings-sync
code --install-extension SmukkeKim.theme-setimonokai
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension WallabyJs.quokka-vscode
code --install-extension whizkydee.material-palenight-theme
code --install-extension whtouche.vscode-js-console-utils
code --install-extension xabikos.JavaScriptSnippets
code --install-extension zhuangtongfa.Material-theme
```


*References:*
* https://www.idownloadblog.com/2017/02/02/disable-spotlight-remove-menu-bar/

* https://www.idownloadblog.com/2016/02/01/disable-rootless-system-integrity-protection/