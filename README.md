# First Unique Character

This program finds the first unique character in a given text.

## Getting Started

To run the program, follow these steps:

1. Clone the repository:
```zsh
git clone https://github.com/jaroshevskii/first-unique-character.git
```
2. Navigate to the project directory:
```zsh
cd first-unique-character
```
3. Compile and run the program:
```zsh
swift run
```

## How It Works

The program defines a function `firstUniqueCharacter(in text: String) -> Character?` that takes a text as input and returns the first unique character found in the text, or nil if there are no unique characters.

The function follows these steps to find the first unique character:

1. Split the input text into individual words using `.whitespacesAndNewlines` as the separator.
2. Initialize an empty array `uniqueCharacters` to store the unique characters found.
3. Iterate over each word in the text.
4. For each word, iterate over each character in the word.
5. Check if the character appears only once in the word by comparing the first and last index of the character in the word.
6. If the character is unique in the word, append it to the `uniqueCharacters` array and break the loop.
7. After processing all the words, iterate over the unique characters in the `uniqueCharacters` array.
8. Check if each unique character appears only once in the `uniqueCharacters` array.
9. Return the first character that appears only once, or nil if no unique characters are found.

## Example

Given the provided text:

```
The Tao gave birth to machine language.
Machine language gave birth to the assembler.
The assembler gave birth to the compiler.
Now there are ten thousand languages.
Each language has its purpose, however humble.
Each language expresses the Yin and Yang of software.
Each language has its place within the Tao.
But do not program in COBOL if you can avoid it.
        -- Geoffrey James, "The Tao of Programming"
```

The program will find the first unique character in the text, which is 'm'. It will then print the following message:

```zsh
The first unique character in the text is 'm'.
```

If there are no unique characters in the text, the program will print:

```zsh
There are no unique characters in the text.
```

## License

Licensed under the [MIT License](LICENSE).
