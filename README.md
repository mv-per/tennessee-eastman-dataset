# Tennessee Eastman Dataset

This repository contains simulation data from the Tennessee Eastman Challenge Process, a widely used benchmark for process control and fault detection research in chemical engineering.

## Overview

The Tennessee Eastman Challenge Process is a realistic industrial process simulation that includes multiple operating modes and various fault scenarios. This dataset provides comprehensive simulation data for research in process monitoring, fault detection, and control system design.

## Repository Structure

```
tennessee-eastman-dataset/
├── LICENSE
├── README.md
├── simulations/          # Simulation data
│   ├── mode_1/          # Mode 1 operation data
│   ├── mode_3/          # Mode 3 operation data
│   └── mode_4/          # Mode 4 operation data
└── simulator/           # MATLAB/Simulink simulation files
```

## Simulation Data

### Mode 1 Simulations

The `simulations/mode_1/` directory contains comprehensive simulation data for Mode 1 operations:

#### Normal Operations
- **`mode1_normal_50.xlsx`**: 50 hours of normal Mode 1 operations
- **`mode1_normal_500.xlsx`**: 500 hours of normal Mode 1 operations

#### Fault Scenarios
The `faults/` subdirectory contains fault simulation data with:
- **21 different fault types** representing various process disturbances and equipment failures
- **5 simulation batches** for each fault type (providing statistical variability)
- **File naming convention**: `mode1_{fault_number}_{batch_number}.xlsx`
  - Fault numbers: 1-21 (corresponding to the 21 standard Tennessee Eastman faults)
  - Batch numbers: 1-5 (five independent simulation runs per fault)

### Mode 3 and Mode 4 Simulations

- **`mode3_normal_50.xlsx`**: 50 hours of normal Mode 3 operations
- **`mode4_normal_50.xlsx`**: 50 hours of normal Mode 4 operations

## Tennessee Eastman Fault Types

The dataset includes simulations for all 21 standard fault scenarios:

1. A/C feed ratio, B composition constant (Stream 4)
2. B composition, A/C ratio constant (Stream 4) 
3. D feed temperature (Stream 2)
4. Reactor cooling water inlet temperature
5. Condenser cooling water inlet temperature
6. A feed loss (Stream 1)
7. C header pressure loss-reduced availability (Stream 4)
8. A, B, C feed composition (Stream 4)
9. D feed temperature (Stream 2)
10. C feed temperature (Stream 4)
11. Reactor cooling water inlet temperature
12. Condenser cooling water inlet temperature
13. Reaction kinetics
14. Reactor cooling water valve
15. Condenser cooling water valve
16. Unknown
17. Unknown
18. Unknown
19. Unknown
20. Unknown
21. The valve for Stream 4 was fixed at the steady state position

## Simulator Files

The `simulator/` directory contains the original MATLAB/Simulink simulation environment:

- **MATLAB/Simulink models**: `.mdl` and `.slxc` files for different operating modes
- **C source code**: `temexd_mod.c` and compiled MEX files
- **Initialization scripts**: Setup files for different operating modes
- **Documentation**: `ADCHEM15_0010_MS.pdf` with detailed process description

## Data Format

All simulation data is provided in Excel (.xlsx) format with time series data including:
- Process variables (temperatures, pressures, flow rates, etc.)
- Manipulated variables (valve positions, setpoints)
- Measured disturbances
- Fault indicators (where applicable)

## Usage

This dataset is suitable for:
- **Fault detection and diagnosis** algorithm development and testing
- **Process monitoring** system design
- **Control system** performance evaluation
- **Machine learning** applications in process industries
- **Benchmarking** of various process analytics methods

## Citation

If you use this dataset in your research, please cite the original Tennessee Eastman Challenge Process papers and any relevant publications associated with this specific dataset.

## License

See the LICENSE file for details regarding the use and distribution of this dataset.

## References

- Downs, J.J. and Vogel, E.F. (1993). "A plant-wide industrial process control problem." Computers & Chemical Engineering, 17(3), 245-255.
- Ricker, N.L. (1996). "Decentralized control of the Tennessee Eastman Challenge Process." Journal of Process Control, 6(4), 205-221.
- Bathelt, A., Ricker, N. L., & Jelali, M. (2015). Revision of the Tennessee Eastman process model. IFAC-PapersOnLine, 48(8), 309-314.