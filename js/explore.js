// takes string as a parameter
// output a string that's the reverse
// for each index of letter, minus index variable and output that letter

function reverseString(string) {
  index = string.length
  for (var index = string.length; index >= 0; index--) {
    console.log(string[index]);
  }
}

  reverseString("hello");