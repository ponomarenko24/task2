import 'dart:io';

void main() {
  while (true) {
    print("Input your positive integer");
    int userInput = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    if (isCorrectInput(userInput)) {
      int result = 0;
      while (userInput > 0) {
        result += userInput;
        userInput -= 1;
      }
      stdout.write('Sum of numbers: ');
      print(result);
      break;
    } else {
      print("Wrong input. Try positive integer");
      continue;
    }
  }
}

bool isCorrectInput(int input) {
  return input > 0 ? true : false;
}