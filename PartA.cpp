#include <iostream>
using namespace std;

// Function to calculate factorial recursively
int factorial(int n) {
    if (n == 0 || n == 1)
        return 1;
    else
        return n * factorial(n - 1);
}

int main() {
    int num;
    cout << "Enter a number to calculate its factorial: ";
    cin >> num;
    
    // Check for negative input
    if (num < 0) {
        cout << "Factorial is not defined for negative numbers.";
    } else {
        int result = factorial(num);
        cout << "Factorial of " << num << " is: " << result;
    }

    return 0;
}
