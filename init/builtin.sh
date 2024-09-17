########## Built-in command are part of shell itself, execut quickly, and ogten ########## manage the shell environment.
type cd
########## External command are separate programs locate on the file system, and########## the shell runs them by spawning new processes.
type ls
######################################################
cd	 # Change the current directory
echo	 # Print text or variables to the terminal
pwd	 # Print the current working directory
exit	 # Exit the current shell session
export	 # Set or export environment variables to be available
	 # export PATH=$PATH:/new/path
alias 	 # Create shortcuts or aliases for commands.
	 # alias ll='ls -la'
unset	 # Remove shell variables or functions.
set 	 # Display or set shell options or variables.
type 	 # Display information about how a command is interpreted
	 # (whether it's a bultin, alias, or external).
source 	 # Execute command from a file in the current shell environment.
read 	 # Read input from the user.
history	 # Show the history of commands.
jobs 	 # List background jovs started by the shell.
fg 	 # Bring a background jov to the foreground.
bg	 # Resume a stopped jov in the background.
help -s	 # List bultin command in bash
