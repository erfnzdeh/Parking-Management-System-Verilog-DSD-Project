---

Design a circuit for university parking management that has the following capabilities:

1. The university parking space is for faculty and staff, with a maximum capacity of 500 cars.
2. Considering that the total parking space is 700 cars:
   - From 8 AM to 1 PM, only 200 spaces are available for entry.
   - From 1 PM to 4 PM, capacity increases, and 500 spaces are available for entry.

**a)** If, during the entry or exit of a vehicle, an input signal specifies the type of vehicle (university or not), describe the circuit using Verilog (or another hardware description language) that has the following inputs and outputs:

| Outputs              | Description                                              |
| -------------------- | -------------------------------------------------------- |
| uni_parked_car       | Number of university vehicles parked in the parking lot. |
| parked_care          | Number of parked cars related to available capacity.     |
| uni_vacated_space    | Number of vacated spaces related to the university.      |
| vacated_space        | Number of vacated spaces related to available capacity.  |
| uni_is_vacated_space | Is there a vacated space for the university?             |
| is_vacated_space     | Is there a vacated space for available capacity?         |
| car_entered          | Car entry                                                |
| is_uni_car_entered   | Is the entered car related to the university?            |
| car_exited           | Car exit                                                 |
| is_uni_car_exited    | Is the exited car related to the university?             |

Design another set of inputs/outputs if needed and mention the reason for it to ensure proper functionality.

**b)** Choose a circuit and describe its implementation on an FPGA with proper reasoning.

---

<!-- # Question

---

Design a 512-bit processor with the following three components:

1. A register file with 4 512-bit registers named A1 to A4 that can store data. This register file should be capable of performing addition and multiplication operations with inputs from A1 and A2, outputting the result in A3. The output from A3 should be able to be transferred to A4.
2. A memory with a depth of 512 and a width of 32 bits. This memory should be capable of storing 16 consecutive addresses from memory in one instruction cycle.
3. A set of instructions for this processor that includes:
   - Storing data from one of the registers into memory
   - Loading data from memory into one of the registers
   - Adding and multiplying data from the registers and storing the result back into one of the registers

Design your circuit and ensure its correctness by testing it for edge cases. Pay attention to additional requirements like flags and processor states.

--- -->
