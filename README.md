# cli_setup

1. Enable [WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10). 

2. Enable [WSL2](https://docs.microsoft.com/en-us/windows/wsl/install-win10) (optional, but recommended).  

3. Download [Windows Terminal](https://www.microsoft.com/en-au/p/windows-terminal/9n0dx20hk701?activetab=pivot:overviewtab) from the Microsoft Store.

4. Download a Linux Distro (Ubuntu, Debian, etc.) from the Microsoft Store.  
Go to this [link](https://kontext.tech/column/tools/308/how-to-install-windows-subsystem-for-linux-on-a-non-c-drive) and this [link](https://docs.microsoft.com/en-us/windows/wsl/install-manual?irgwc=1&OCID=AID2000142_aff_7593_1243925&tduid=%28ir__mpjwjfvnawkft03okk0sohzwxu2xulk0qznn9v9y00%29%287593%29%281243925%29%28je6NUbpObpQ-xn0vqCvHmf.B2hXo7o_E5A%29%28%29&irclickid=_mpjwjfvnawkft03okk0sohzwxu2xulk0qznn9v9y00#downloading-distros?ranMID=24542&ranEAID=je6NUbpObpQ&ranSiteID=je6NUbpObpQ-xn0vqCvHmf.B2hXo7o_E5A&epi=je6NUbpObpQ-xn0vqCvHmf.B2hXo7o_E5A) if you wish to install the distro on a different drive.

5. Run the Linux Distro for the first time. (If you installed via Microsoft Store, it can be run through Start. If you installed on a different drive, the link will tell you how to run it the first time). You will need to enter a username and password. Once this is complete, you can close the distro.
  
6. Go to [NerdFonts](nerdfonts.com) and download a font. This is to allow the terminal to display icons. The default font cannot display icons. The font I am using is "DroidSansMono Nerd Font". Once the font is download, extract the folder and install the fonts.

7. Open Windows Terminal and go through the settings. Set default profile, font, acrylic and opacities.

8. Once all these changes have been made, every thing is good to go!

9. Run `$ sudo apt update`, `$ sudo apt upgrade` (or your distro's equivalent) to update your packages. 

10. Once that is complete, check if git and curl is installed by running `$ git --version` and `$ curl --version`.

11. If these are not installed, run `$ sudo apt install git` and `$ sudo apt install curl` (or use another package manager).  

12. Install the Homebrew Package Manager by running `$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`.  When it is done, it should show a message at the end to add brew to PATH. Copy and paste these TWO instructions into terminal subsequently. 

13. (Optional) Run `$ sudo apt install gcc`.  

14. We will now install our shell: Z-Shell (zsh).  
Run `$ sudo apt install zsh -y` followed by `$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`.  
You will be prompt to set is as default shell (do so!). You will need to enter your password. The cursor will not move so be careful when inputting your password.  

15. Your terminal should look different at this stage. We will continue to make it better!  
Run `$ git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k` 

16. We now need to edit the .zshrc file.  
`$ vim ~/.zshrc`  
Change ZSH_THEME="powerlevel10k/powerlevel10k"  
Save the file and restart Windows Terminal.  

17. You should be prompt with a setup, set it up as you like. My configuration is as follows:  
Rainbow, Unicode, No time, Slanted, Sharp, Flat, One line, Compact, Many icons, Concise, No transient prompt, Quiet.  
Save the configuration and the shell setup is complete!  

18. Here is the extra stuff that makes life on the command line a lot more better.  
# ICONS:  
Run `$ brew install lsd`  
Edit .zshrc. Add `alias ls="lsd"` to the file. There is an alias section near the bottom of the file, add it there.  
Restart terminal.  

