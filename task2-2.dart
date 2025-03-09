import 'dart:math';
import 'dart:io';

void main() {
    int generatedNumber = (Random().nextInt(100) + 1);
    int userInput;
    while (true) {
      print("Input your number:");
      userInput = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (userInput > 0 && userInput < 101) {
        if (userInput == generatedNumber) {
         print("YOU WIN!!!");
         break;
        } else if (userInput > generatedNumber) {
         print("Your number is bigger. Try again");
        } else if (userInput < generatedNumber) {
         print("Your number is lower. Try again");
        }
      } else {
        print("Wrong input. For correct game input integer number from 1 to 100");
      }
    }
}