import 'dart:io';

void main() {
  print("how many numbers do you want to add in your list");
  var count_numbers = stdin.readLineSync();
  var count = int.parse(count_numbers ?? '0');
  print("the count is $count");
  print("enter the $count numbers in the list.\n");
  var number_list = [];
  for (int i = 0; i <= count - 1; i++) {
    var number = stdin.readLineSync();
    var num = int.parse(number ?? '0');
    number_list.add(num);
  }
  print(number_list);
  int findmaximumu() {
    int findnum = 0;
    for (int i = 0; i <= count - 1; i++) {
      if (findnum < number_list[i]) {
        findnum = number_list[i];
      }
    }
    return findnum;
  }

  int findminimum() {
    int findnum = 1000;
    for (int i = 0; i <= count - 1; i++) {
      if (findnum > number_list[i]) {
        findnum = number_list[i];
      }
    }
    return findnum;
  }

  double findsum() {
    double sum = 0;
    for (int i = 0; i <= count - 1; i++) {
      sum += number_list[i];
    }

    return sum;
  }

  double findaverage() {
    double total = findsum();
    double average = total / count;
    return average;
  }

  int max = findmaximumu();
  int min = findminimum();
  double sumofall = findsum();
  double avg = findaverage();
  print("the maximum number in the list is $max");
  print("the minimum number in the list is $min");
  print("the sum of the numbers in the list is $sumofall");
  print("the average of the numbers in the list is $avg");
}
