# Custom Shell Environment

#### Participants
- Benie-Joy
- Atebe Marc
- Ange Fresnelle

## Prerequisites
Before getting started, ensure you have the following:

- Docker installed on your system
- Basic understanding of Docker concepts
- Basic command-line skills

## Solution to Exercise 2
 ### Step 1: Cloning the repository
 Let's clone this repository. Get to your terminal and create a directory. In that directory, do:
 ```sh
 $ git init
 ```
 Then do:
 ```sh
 $ git clone  git@github.com:Marc-Jr/Customize_shell_env.
 ```
### Step 2: Ceating a docker container
 Let's build a docker image from the Dockerfile in `Customize_shell_env` directory:
 ```sh
 $ docker build -t custom .
 ```
 Next let's do:
 ```sh
 $ docker run -it custom
 ```
 This command launches an interactive shell inside a Docker container
 > :bulb: **Tip:** *press **q*** 

 ### Step 3: Executing the script.sh
 Now that you are in the docker container, run:
 ```sh
  .  ./script.sh
  ```
  Welcome to our **Custom Shell Environment !!!**
  You can run `la`, to view all files and even hidden ones. You can run `aliases` to view every alias we created.

  ## Why it should work
  From our `.zshrc` file, when;
  `
  $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
  `  is sourced, everything we type in our container's shell should be highlighted.
  Also when `$ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh` is sourced, our shell should suggest to us a command, file or directory. It turns a command passed in the shell to *red* in case the command is not found.

  **Spaceship** is a minimalistic, powerful and extremely customizable Zsh prompt. Thus we made use of it for our prompt order.

  > :bulb: **Tip:** See /.zshrc file for more details




  