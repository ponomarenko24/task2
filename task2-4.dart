import 'dart:io';

void main() {
    print(timeTransformation());
}

double timeTransformation() {
  print('''
Choose from 1 to 4 to select you transformation:
1. Hours to minutes
2. Hours to seconds
3. Minutes to hours
4. Minutes to seconds''');
  print("Input from 1 to 4 to select type of transformation:");
  int transformType = inputCheck('choose');
  print("Input time for transform");
  double timeToTransform = inputCheck('time').toDouble();
  return switch (transformType) {
    1 => hoursToMinutes(timeToTransform),
    2 => hoursToSeconds(timeToTransform),
    3 => minutesToHours(timeToTransform),
    4 => minutesToSeconds(timeToTransform),
    _ => 0
  };
}

int inputCheck(String type) {
    while (true) {
      int userInput = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
      if (isCorrectInput(userInput, type)) {
        return userInput;
    } else {
     print("Wrong input. Try again");
     continue;
    }
    }
}

bool isCorrectInput(int input, String type) {
  return switch (type) {
    'choose' =>  (input > 0 && input < 5) ? true : false,
    'time' => input > 0 ? true : false,
    _ => false
  };
}

const secInMin = 60;

double hoursToMinutes(double hours) {
  return hours * secInMin;
}

double hoursToSeconds(double hours) {
  return hoursToMinutes(hours) * secInMin;
}

double minutesToHours(double minutes) {
  return minutes / secInMin;
}

double minutesToSeconds(double minutes) {
  return minutes * secInMin;
}