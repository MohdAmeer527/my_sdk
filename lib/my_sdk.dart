// lib/my_sdk.dart

/// A utility class for string manipulation.
class StringUtils {
  /// Reverses a given string.
  static String reverse(String input) {
    return input.split('').reversed.join();
  }

  /// Checks if a string is a palindrome.
  static bool isPalindrome(String input) {
    String cleanedInput = input.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    return cleanedInput == reverse(cleanedInput);
  }
}

/// A utility class for mathematical operations.
class MathUtils {
  /// Calculates the factorial of a number.
  static int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
  }

  /// Checks if a number is prime.
  static bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) return false;
    }
    return true;
  }
}