# **Task 4: Data Monitoring and Control Using Port-Based Simulation**

## **Overview**
This program simulates a sensor-based control system that:
1. Reads a simulated **sensor value** (user input).
2. Controls the **motor** and **alarm** based on predefined sensor thresholds:
   - **High Level** (> 80): Motor ON, Alarm ON.
   - **Moderate Level** (> 50): Motor OFF, Alarm OFF.
   - **Low Level** (≤ 50): Motor ON, Alarm OFF.
3. Displays the statuses of the **motor** and **alarm** to the user.

---

## **Features**
- **Sensor Input**: User-provided input simulates the sensor value.
- **Dynamic Control**:
  - Activates or deactivates the motor and alarm based on sensor thresholds.
- **Real-Time Feedback**:
  - Outputs the motor and alarm statuses (ON or OFF).

---

## **How to Compile and Run**

### **Step 1: Assemble**
```bash
nasm -f elf64 -g -o sensor_control.o sensor_control.asm
```

### **Step 2: Link**
```bash
ld -o sensor_control sensor_control.o
```

### **Step 3: Run**
```bash
./sensor_control
```

---

## **Input Format**
- Provide a **positive integer** as the sensor value.
- The program processes this value to determine motor and alarm statuses.

---

## **Sample Outputs**

### **Case 1: High Level (Sensor Value > 80)**
1. Input:
   ```
   85
   ```
2. Output:
   ```
   Motor Status: ON
   Alarm Status: ON
   ```

### **Case 2: Moderate Level (Sensor Value > 50 and ≤ 80)**
1. Input:
   ```
   65
   ```
2. Output:
   ```
   Motor Status: OFF
   Alarm Status: OFF
   ```

### **Case 3: Low Level (Sensor Value ≤ 50)**
1. Input:
   ```
   30
   ```
2. Output:
   ```
   Motor Status: ON
   Alarm Status: OFF
   ```

### **Invalid Input**
1. Input:
   ```
   ABC
   ```
2. Output:
   ```
   Motor Status: OFF
   Alarm Status: OFF
   ```

---

## **Thresholds**
| **Level**          | **Threshold** | **Motor Status** | **Alarm Status** |
|---------------------|---------------|------------------|------------------|
| **High Level**      | > 80          | ON               | ON               |
| **Moderate Level**  | > 50 and ≤ 80 | OFF              | OFF              |
| **Low Level**       | ≤ 50          | ON               | OFF              |

---

## **Program Flow**

1. **Sensor Value Input**:
   - Prompts the user to enter a sensor value.
   - Converts the input from ASCII to an integer using the `atoi` subroutine.

2. **Decision Making**:
   - Compares the sensor value against the **High Level** and **Moderate Level** thresholds.
   - Sets the statuses of the motor and alarm accordingly.

3. **Output Status**:
   - Displays the current statuses of the motor and alarm:
     - **ON** if activated.
     - **OFF** if deactivated.

4. **Exit**:
   - Ends the program after displaying statuses.

---

## **Key Learnings**
- **Sensor Simulation**:
  - User input effectively simulates real-world sensor data.
- **Threshold-Based Logic**:
  - Simple comparisons and jumps (`cmp`, `jg`, `je`) are used for decision-making.
- **ASCII to Integer Conversion**:
  - The `atoi` subroutine efficiently converts input to numeric values.
