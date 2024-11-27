# **Factorial Calculation Program**

## **Overview**
This program calculates the factorial of a user-provided number between `0` and `12`. It:
1. Prompts the user to enter a number.
2. Validates the input to ensure it is within the acceptable range.
3. Computes the factorial using an **iterative approach**.
4. Displays the result in a formatted message.

---

## **Features**
- **Input Handling**:
  - Accepts user input via standard input.
  - Validates input to ensure it is a number between `0` and `12`.
- **Factorial Calculation**:
  - Uses an efficient iterative method to compute factorials.
  - Handles edge cases (e.g., `0! = 1`).
- **Output Formatting**:
  - Displays the factorial result in a clear message format.
- **Error Handling**:
  - Detects invalid inputs (e.g., out-of-range or non-numeric values) and exits gracefully.

---

## **How to Compile and Run**

### **Step 1: Assemble**
```bash
nasm -f elf64 -g -o factorial.o factorial.asm
```

### **Step 2: Link**
```bash
ld -o factorial factorial.o
```

### **Step 3: Run**
```bash
./factorial
```

---

## **Input Format**
- Provide a single integer between `0` and `12` as input.
- Example:
  ```
  Enter a number (0-12): 5
  ```

---

## **Sample Outputs**

### **Valid Input**
1. Input:
   ```
   Enter a number (0-12): 5
   ```
2. Output:
   ```
   Factorial is: 120
   ```

3. Input:
   ```
   Enter a number (0-12): 0
   ```
4. Output:
   ```
   Factorial is: 1
   ```

### **Invalid Input**
1. Input:
   ```
   Enter a number (0-12): 15
   ```
2. Output:
   ```
   [Program exits without result]
   ```

---

## **Program Flow**

1. **Prompt**:
   - Displays: `Enter a number (0-12):`.
2. **Input Handling**:
   - Reads input from the user.
   - Converts input from ASCII to an integer using the `atoi` subroutine.
   - Validates the range of the input (`0 ≤ input ≤ 12`).
3. **Factorial Calculation**:
   - Uses an iterative loop (`factorial_loop`) to compute the factorial.
   - Handles the special case `0! = 1`.
4. **Result Conversion**:
   - Converts the calculated result to a string using the `itoa` subroutine.
5. **Output**:
   - Displays: `Factorial is: <result>`.
6. **Exit**:
   - Terminates the program gracefully.

---

## **Key Learnings**
- **Efficient Iterative Factorial Calculation**:
  - The program avoids recursion, reducing stack usage and improving performance.
- **Dynamic Input Handling**:
  - Validates user input for correctness and handles edge cases gracefully.
- **Output Formatting**:
  - Uses an `itoa` subroutine to convert integers to strings for user-friendly output.