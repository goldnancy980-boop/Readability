# CS50 Readability

A C program that estimates the grade level required to understand a given text using the **Coleman–Liau index**.



## About the Project

I developed this project as part of the CS50 curriculum to practice C programming, string manipulation and text analysis.

The program prompts the user to enter a text, analyzes its letters, words and sentences, then applies the Coleman–Liau formula to estimate its reading level.

The result is displayed as a grade level, such as `Before Grade 1`, `Grade 3` or `Grade 16+`.



## How It Works

The program uses the **Coleman–Liau index** to estimate the school grade level needed to understand a text.

The formula is:

$$
\text{index} = 0.0588 \times L - 0.296 \times S - 15.8
$$

Where:

* **L** is the average number of letters per 100 words.
* **S** is the average number of sentences per 100 words.

The program rounds the calculated index to the nearest whole number and displays the corresponding grade level.

### Output Examples

* **Less than 1:** `Before Grade 1`
* **1–15:** `Grade 1–15`
* **16 or higher:** `Grade 16+`


## Development Environment

To make my code easier to use, compile and test, I decided to simplify the development environment by including two configuration files.

### 1. GitHub Codespaces Configuration

I configured `.devcontainer/devcontainer.json` to install the required CS50 library automatically when a GitHub Codespace is created. This helps prevent errors caused by a missing `cs50.h` header or an unavailable CS50 library.

### 2. Makefile

I included a `Makefile` to simplify compilation by specifying the necessary compiler flags and linking the CS50 and Math libraries. This allows the program to be compiled with a single command:

```bash
make readability
```

These configurations reduce manual setup and make the project easier to run in GitHub Codespaces.



## How to Run

### Option 1: GitHub Codespaces

1. Open the repository on GitHub.

2. Click the green **Code** button and select **Codespaces**.

3. Click **Create codespace on main**.

4. Once the environment loads, compile the program:

   ```bash
   make readability
   ```

5. Run the program:

   ```bash
   ./readability
   ```

6. Enter a text when prompted.

### Option 2: Run Locally

Ensure you have a C compiler, the CS50 library and the Math library installed. Open the terminal in the project directory and run:

```bash
make readability
./readability
```

**Note:** The automatic installation configured for GitHub Codespaces does not necessarily apply to your local computer.



## Testing

Test the program with different passages to verify that it correctly calculates reading levels, including `Before Grade 1` and `Grade 16+`.


## Project Structure

* `.devcontainer/devcontainer.json` — Configures the GitHub Codespaces development environment.
* `Makefile` — Simplifies compilation and links the required libraries.
* `readability.c` — Contains the C program that calculates the reading level.
* `README.md` — Documents the project, setup and usage instructions.


## Learning Objectives

* C programming and string manipulation.
* Text analysis and implementation of the Coleman–Liau formula.
* Compilation using a `Makefile` and configuration of GitHub Codespaces.
