import 'dart:io';

void main() {
  while (true) {
    stdout.write('Enter the first number: ');
    double num1 = double.parse(stdin.readLineSync()!);

    print('\nSelect an operation:');
    print('1. Sum');
    print('2. Difference');
    print('3. Product');
    print('4. Quotient');
    print('5. Exit');
    stdout.write('Enter your choice (1-5): ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('Exiting the program. Goodbye!');
      break;
    }

    stdout.write('Enter the second number: ');
    double num2 = double.parse(stdin.readLineSync()!);

    double result;
    switch (choice) {
      case '1':
        result = sum(num1, num2);
        print('Result: $num1 + $num2 = $result');
        break;
      case '2':
        result = difference(num1, num2);
        print('Result: $num1 - $num2 = $result');
        break;
      case '3':
        result = product(num1, num2);
        print('Result: $num1 * $num2 = $result');
        break;
      case '4':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed.');
        } else {
          result = quotient(num1, num2);
          print('Result: $num1 / $num2 = $result');
        }
        break;
      default:
        print('Invalid choice. Please select a valid option.');
        continue;
    }

    stdout.write('\nDo you want to perform another operation? (yes/no): ');
    String? continueChoice = stdin.readLineSync()?.toLowerCase();
    if (continueChoice == 'no') {
      print('Exiting the program. Goodbye!');
      break;
    }
    print('');
  }
}

double sum(double a, double b) => a + b;
double difference(double a, double b) => a - b;
double product(double a, double b) => a * b;
double quotient(double a, double b) => a / b;
