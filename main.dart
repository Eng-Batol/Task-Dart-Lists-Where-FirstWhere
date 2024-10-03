void main() {
//   ### 🍋 Lists

// 1. Given this list of integers: `[5, 3, 15, 4, 1]`.
  List<int> numbers = [5, 3, 15, 4, 1];

  /// creat a list

// Using a `forEach` method, count the sum of those elements.
  int sum =
      0; // we declar the sum so we can use it in the for each we gave it 0 so it will not effect the sum
  numbers.forEach((elment) => {
        sum = elment + sum
      }); /* we call the list then we put it with in foreach ((we put the elmnet of the list so we can use them and save the sum+ the elmnt 5 and extra  ))
  we use this sighn so it will be shortcut => inside the forecha also 
  (we did the calcolarion which is the sum= elemnt+sum) then we save the result in the sum */
  print(sum); // we print the sum
// ----------
// 2. Using the same list of integers.

// Using a `forEach` method find the largest number
  // int elment2 = 0;
  // numbers.forEach((elment2)) {
  //   // بالمرة الوحدة انا قاع ادش داخل الاري وقوله حق كل رقم داخل اللفه الوحده معطتة اسم وهو الاسم الي داخل () الاقواس

  print(numbers);
  // ----------

// 🍋 Task 2: Using the same list of integers, use a `forEach` method to find the largest number
  int largest = numbers[0];
  numbers.forEach((number) {
    if (number > largest) {
      largest = number;
    }
  });
  print("The largest number is $largest");

// ----------
// 🍋 Where
// Task 3: Write a function called filterVisitors that takes 2 arguments, a list of ages and a minimum age allowed to enter.
// Return a list of all ages that are more than the minimum age.
  List<int> ages = [12, 15, 20, 25, 30];
  int minimumAge = 19;

  List<int> filterVisitors(List<int> ages, int minAge) {
    return ages.where((age) => age > minAge).toList();
  }

  List<int> allowedVisitors = filterVisitors(ages, minimumAge);
  print('Allowed visitors: $allowedVisitors');
// ----------
// 🍋 FirstWhere
// Task 4: Write a function called findOdds that takes a list of numbers and returns the first odd number.
  int findOdds(List<int> numbers) {
    return numbers.firstWhere((number) => number.isOdd, orElse: () => 0);
  }

  int firstOdd = findOdds(numbers);
  print('First odd number: $firstOdd');

// ----------
// 🤼‍♂️ orElse
// Task 5: Use the orElse named argument with FirstWhere to return a 0 if no odd number is found.
  List<int> evenNumbers = [2, 4, 6, 8, 10];
  int firstOddInEvenList = findOdds(evenNumbers);
  print('First odd in even list (or 0 if not found): $firstOddInEvenList');
}
