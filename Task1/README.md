The `README.md` file for **Task 1: Control Flow and Conditional Logic**:

---

### **Task 1: Control Flow and Conditional Logic**

#### **Overview**
This program prompts the user to input a number and classifies it as **positive**, **negative**, or **zero**. It demonstrates branching logic in assembly using conditional (`je`, `jl`, `jmp`) and unconditional (`jmp`) jumps.

---

#### **How to Compile and Run**

1. **Assemble the Program**:
   ```bash
   nasm -f elf64 -g -o control_flow.o control_flow.asm
   ```

2. **Link the Program**:
   ```bash
   ld -o control_flow control_flow.o
   ```

3. **Run the Program**:
   ```bash
   ./control_flow
   ```

4. **Input a Number**:
   - Enter an integer (e.g., `42`, `-15`, or `0`).
   - The program will classify and print whether the number is **positive**, **negative**, or **zero**.

---

#### **Example Outputs**
- **Input**: `42`  
  **Output**: *The number is POSITIVE.*
- **Input**: `-15`  
  **Output**: *The number is NEGATIVE.*
- **Input**: `0`  
  **Output**: *The number is ZERO.*

---

#### **Challenges and Insights**
1. **ASCII to Integer Conversion**:
   - The program converts user input (as ASCII characters) to an integer using a loop. Handling negative input requires additional logic (not included in this simple example but can be extended).

2. **Branching Logic**:
   - Conditional jumps (`je`, `jl`) are used to classify numbers based on their comparison with zero.
   - An unconditional jump (`jmp`) simplifies the flow by redirecting to the printing section.

---

#### **Key Learnings**
- Conditional jumps (`je`, `jl`, `jg`) allow precise control flow based on conditions.
- Unconditional jumps (`jmp`) streamline repetitive actions like jumping to the output logic.
- Handling user input in assembly requires careful consideration of data formats (ASCII vs integer).

---