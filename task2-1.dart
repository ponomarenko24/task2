import 'dart:io';

void main() {
  print('Input your day number123');
  int input = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print(convertDay(input));
}

String convertDay(int dayNum) {
  return switch(dayNum) {
    1 => 'Monday',
    2 => 'Tuesday',
    3 => 'Wednesday',
    4 => 'Thursday',
    5 => 'Friday',
    6 => 'Saturday',
    7 => 'Sunday',
    _ => 'Error input. Try again'
  };
}