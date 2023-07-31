# Executable Files Counter

This project includes a simple Bash script that counts the number of executable files in each directory listed in your `$PATH`.

## How it Works

The script performs the following steps:

1. Defines a function `count_executables()` which counts the number of executable files in a given directory.
2. Changes the delimiters in the `$PATH` variable to ':'.
3. Iterates over each directory in `$PATH`, calling `count_executables()` for each one and echoing the results.
4. Resets the `IFS` (Internal Field Separator) back to its original value.

## Usage

To use this script, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the directory containing the script.
3. Make the script executable using the command `chmod +x scriptname.sh`.
4. Run the script with the command `./path.sh`.

## Contributions

Contributions to this project are welcome. If you have an idea for an improvement, please open an issue to discuss it before making your change.

## License

This project is licensed under the MIT License. See the `LICENSE` file in this repository for more information.

## Contact

If you have questions about this project, please open an issue or submit a pull request.
