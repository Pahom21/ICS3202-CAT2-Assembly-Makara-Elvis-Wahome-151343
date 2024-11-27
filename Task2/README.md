# **Task 2: Array Manipulation with Looping and Reversal**

## **Overview**
This program:
1. Accepts an array of 5 single-digit integers from the user.
2. Reverses the array in place.
3. Outputs the reversed array, displaying each digit on a new line.

The program ensures robust input handling and error messages for invalid data.

---

## **Features**
- **Input Parsing**: Validates user input to ensure only digits are accepted.
- **In-Place Reversal**: Reverses the array without using additional memory.
- **Error Handling**: Detects invalid input (e.g., missing digits or non-numeric characters) and prompts the user to re-enter data.

---

## **How to Compile and Run**

### **Step 1: Assemble**
```bash
nasm -f elf64 -g -o array_reverse.o array_reverse.asm
```

### **Step 2: Link**
```bash
ld -o array_reverse array_reverse.o
```

### **Step 3: Run**
```bash
./array_reverse
```

---

## **Input Format**
- Enter exactly **5 single digits** separated by spaces.
- Example: `1 2 3 4 5`

---

## **Sample Outputs**

### **Valid Input**
1. Input:
   ```
   1 2 3 4 5
   ```
2. Output:
   ```
   Reversed array:
   5
   4
   3
   2
   1
   ```

### **Invalid Input**
1. Input:
   ```
   1 2 a 4 5
   ```
2. Output:
   ```
   Invalid input! Please try again.
   ```

---

## **Program Flow**

1. **Prompt**:
   - Displays a message asking the user to enter 5 single-digit integers.
2. **Input Parsing**:
   - Processes user input character by character.
   - Validates each character to ensure it is a digit.
   - Skips invalid characters (e.g., letters, special characters).
3. **Array Reversal**:
   - Reverses the array in place using two pointers (start and end).
   - Swaps the elements at the two pointers and moves the pointers toward each other.
4. **Output**:
   - Displays the reversed array, printing each digit on a new line.

---

## **Key Learnings**
- **Input Validation**:
  - Ensuring robust handling of user input prevents crashes or undefined behavior.
- **In-Place Reversal**:
  - Avoiding additional memory usage demonstrates efficient manipulation of data.
- **Error Handling**:
  - Clear error messages improve user experience and program usability.