# UncapitalizeExtensions
UncapitalizeExtensions is a bash script that will uncapitalize all extensions of files starting at a specified directory and recursively moving downward.

Run the script with

Argument 1: full starting directory path

Argument 2: extension name in lowercase.

The script will start at the starting directory path and recursively find all files with the extensions, case insensitive. It will then check each file's extension for capitalization, and if the extension is capitalized, then the script will uncapitalize it.

Make sure you have permissions in that directory and its subdirectories, or the mv command will fail.

Examples:

uncapextensions.sh /path/to/StartingDirectory ext

uncapextensions.sh "/home/Michelangelo/My Books" pdf
