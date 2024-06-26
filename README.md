# University Parking Management System

<!-- ![alt text](https://media.shahr.ir/d/2021/11/27/3/21194.jpg) -->

![alt text](https://media.hamshahrionline.ir/d/2022/08/17/4/4718571.jpg?ts=1660714779000)

### Project Overview

This project is part of the Digital System Design course under the supervision of Dr. Foshati. It aims to design and implement a robust university parking management system, providing efficient and real-time monitoring of parking spaces. This system distinguishes between university-affiliated and non-university vehicles, ensuring optimal use of the available parking capacity. The project is developed using Verilog and implemented on an FPGA to leverage its high performance and reliability in managing digital circuits.

[برای خواندن گزارش فارسی کلیک کنید.](https://github.com/erfnzdeh/DSD-Project/blob/main/Report_Persian_DSD_Project_401011180.pdf)

### Features

- **Capacity Management**: The parking lot has a total capacity of 700 cars.
  - From 8 AM to 1 PM, 200 spaces are available for entry.
  - From 1 PM to 4 PM, 500 spaces are available for entry.
- **Vehicle Differentiation**: The system can distinguish between university and non-university vehicles.
- **Real-Time Monitoring**: Tracks the number of university vehicles parked, vacated spaces, and entries/exits.

### Inputs and Outputs

#### Outputs

| Outputs              | Description                                              |
| -------------------- | -------------------------------------------------------- |
| uni_parked_car       | Number of university vehicles parked in the parking lot. |
| parked_care          | Number of parked cars related to available capacity.     |
| uni_vacated_space    | Number of vacated spaces related to the university.      |
| vacated_space        | Number of vacated spaces related to available capacity.  |
| uni_is_vacated_space | Is there a vacated space for the university?             |
| is_vacated_space     | Is there a vacated space for available capacity?         |

#### Inputs

| Inputs             | Description                                   |
| ------------------ | --------------------------------------------- |
| car_entered        | Car entry                                     |
| is_uni_car_entered | Is the entered car related to the university? |
| car_exited         | Car exit                                      |
| is_uni_car_exited  | Is the exited car related to the university?  |

### Implementation

The project is designed using Verilog and implemented on an FPGA to ensure accurate and real-time management of parking resources. The FPGA implementation is chosen for its reliability and performance in handling digital circuits.

### Usage

1. **Compilation**: Compile the Verilog code using a suitable compiler.
2. **Simulation**: Simulate the design to verify functionality using testbenches.
3. **Synthesis**: Synthesize the design for FPGA implementation.
4. **Programming**: Program the FPGA with the synthesized design.
5. **Testing**: Test the implementation in a controlled environment to ensure proper operation.

### Future Enhancements

- Integrate a user interface for real-time monitoring and management.
- Implement additional features like reservation of parking spots.
- Enhance the system to handle a larger number of vehicles and more complex parking policies.

### Contributors

- Pourya Erfanzadeh | 401011180

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
