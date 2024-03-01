void main() {
//Напишите программу, которая находит и выводит на экран наибольший элемент в данном массиве чисел, а также его индекс
//List<int> numbers = [12, 45, 7, 23, 56, 89, 32];
  List<int> numbers = [12, 45, 7, 23, 56, 89, 32];
  var max = numbers[0];
  var index;
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
      index = i;
    }
  }
  print('$max, $index');

//Напишите программу, которая проверяет, все ли элементы в массиве уникальны (не повторяются). если да, то необходимо вывести true
//List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//Решите задачу о подсчете количества четных чисел в массиве.
  List<int> numberss = [1, 2, 3, 4, 5, 6, 7, 8, 9]; // массив чисел

  bool allUnique = true;

  for (int i = 0; i < numberss.length; i++) {
    for (int j = i + 1; j < numberss.length; j++) {
      if (numberss[i] == numberss[j]) {
        allUnique = false;
        break;
      }
    }
    if (!allUnique) {
      break;
    }
  }

  print(allUnique);

//Отсортируйте массив чисел по возрастанию, используя цикл for и условный оператор if-else.

  List<int> numbersss = [3, 6, 8, 12, 9, 10, 11];
  int n = numbersss.length;

  // Сортировка пузырьком
  for (int f = 0; f < n - 1; f++) {
    for (int s = 0; s < n - f - 1; s++) {
      if (numbersss[s] > numbersss[s + 1]) {
        int temp = numbersss[s];
        numbersss[s] = numbersss[s + 1];
        numbersss[s + 1] = temp;
      }
    }
  }

  // Вывод отсортированного массива
  print('Отсортированный массив по возрастанию: $numbersss');

  List<int> numberssss = [3, 6, 8, 12, 9, 10, 11];
  int maxEven = 0;

  for (int numm in numberssss) {
    if (numm % 2 == 0 && numm > maxEven) {
      maxEven = numm;
    }
  }

  if (maxEven != 0) {
    print('Наибольшее четное число в массиве: $maxEven');
  } else {
    print('массиве нет четных чисел.');
  }
}
