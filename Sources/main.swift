//
// main.swift
// FirstUniqueCharacter
//

import Foundation

/// Finds the first unique character in the given text.
///
/// - Parameter text: The input text to search for unique characters.
/// - Returns: The first unique character found, or `nil` if there are no unique characters.
func firstUniqueCharacter(in text: String) -> Character? {
  let words = text.components(separatedBy: .whitespacesAndNewlines)
  var uniqueCharacters = [Character]()

  // Iterate over each word in the text.
  for word in words {
    // Iterate over each character in the word.
    for character in word {
      // Check if the character appears only once in the word.
      if word.firstIndex(of: character) == word.lastIndex(of: character) {
        uniqueCharacters.append(character)
        break
      }
    }
  }

  // Iterate over the unique characters.
  for character in uniqueCharacters {
    // Check if the character appears only once in the unique сharacters array.
    if uniqueCharacters.firstIndex(of: character) == uniqueCharacters.lastIndex(of: character) {
      return character
    }
  }

  return nil
}

let text = """
The Tao gave birth to machine language.
Machine language gave birth to the assembler.
The assembler gave birth to the compiler.
Now there are ten thousand languages.
Each language has its purpose, however humble.
Each language expresses the Yin and Yang of software.
Each language has its place within the Tao.
But do not program in COBOL if you can avoid it.
        -- Geoffrey James, "The Tao of Programming"
"""

print(text, terminator: "\n\n")

// Find the first unique character in the text.
if let character = firstUniqueCharacter(in: text) {
  print("The first unique character in the text is '\(character)'.")
} else {
  print("There are no unique characters in the text.")
}
// Prints "The first unique character in the text is 'm'."
