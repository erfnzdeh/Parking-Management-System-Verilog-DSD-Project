# University Parking Management System

<!-- ![alt text](https://media.shahr.ir/d/2021/11/27/3/21194.jpg) -->

![alt text](https://media.hamshahrionline.ir/d/2022/08/17/4/4718571.jpg?ts=1660714779000)

## Project Overview

This project is part of the Digital System Design course under the supervision of [Amin Fos'hati](https://scholar.google.com/citations?user=R6Ny-hUAAAAJ&hl=en). It aims to design and implement a robust university parking management system, providing efficient and real-time monitoring of parking spaces. This system distinguishes between university-affiliated and non-university vehicles, ensuring optimal use of the available parking capacity. The project is developed using Verilog and implemented on an FPGA to leverage its high performance and reliability in managing digital circuits.

[CLICK HERE TO READ PERSIAN REPORT](https://github.com/erfnzdeh/DSD-Project/blob/main/Report_Persian_DSD_Project_401011180.pdf)

## Tools

The project is implemented using Verilog HDL (Hardware Description Language) and may utilize simulation tools such as ModelSim or Xilinx Vivado for testing and verification. Synthesis tools like Xilinx Vivado Synthesis or Intel Quartus Prime are used to convert the Verilog code into logic that can be implemented on FPGAs.

## Implementation Details

This project utilizes Verilog to create a parking management system. The system monitors the number of parked and vacated cars, maintaining separate counts for university-affiliated and non-university vehicles. Additionally, the system enforces maximum capacity limits for parking spaces. Initial capacities are statically determined, while capacities for non-university vehicles vary dynamically based on time.

## How to Run

To run the system on an FPGA:

  - Use the appropriate synthesis tool (e.g., Xilinx Vivado Synthesis, Intel Quartus Prime) to synthesize the Verilog code.
  - Verify the synthesized design through simulation to ensure functionality meets expectations.
  - Generate the bitstream file that configures the FPGA with the synthesized design.
  - Program the FPGA with the generated bitstream using tools provided by the FPGA vendor.

## Results

The system effectively manages parking by accurately tracking the number of cars parked and vacated.

## Features

- **Capacity Management**: The parking lot has a total capacity of 700 cars.
  - From 8 AM to 1 PM, 200 spaces are available for entry.
  - From 1 PM to 4 PM, 500 spaces are available for entry.
- **Vehicle Differentiation**: The system can distinguish between university and non-university vehicles.
- **Real-Time Monitoring**: Tracks the number of university vehicles parked, vacated spaces, and entries/exits.

## Inputs and Outputs

### Outputs

| Outputs              | Description                                              |
| -------------------- | -------------------------------------------------------- |
| uni_parked_car       | Number of university vehicles parked in the parking lot. |
| parked_care          | Number of parked cars related to available capacity.     |
| uni_vacated_space    | Number of vacated spaces related to the university.      |
| vacated_space        | Number of vacated spaces related to available capacity.  |
| uni_is_vacated_space | Is there a vacated space for the university?             |
| is_vacated_space     | Is there a vacated space for available capacity?         |

### Inputs

| Inputs             | Description                                   |
| ------------------ | --------------------------------------------- |
| car_entered        | Car entry                                     |
| is_uni_car_entered | Is the entered car related to the university? |
| car_exited         | Car exit                                      |
| is_uni_car_exited  | Is the exited car related to the university?  |

## Future Enhancements

- Integrate a user interface for real-time monitoring and management.
- Implement additional features like reservation of parking spots.
- Enhance the system to handle a larger number of vehicles and more complex parking policies.

## Related Links

- [Verilog HDL](https://en.wikipedia.org/wiki/Verilog)
- [ModelSim](https://www.mentor.com/products/fv/modelsim/)
- [Intel Quartus Prime](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/overview.html)

## Contributors

- [Pourya Erfanzadeh](https://github.com/erfnzdeh)

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
