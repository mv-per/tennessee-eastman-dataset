# Mode 1 Simulation Data

This directory contains comprehensive simulation data for the Tennessee Eastman Challenge Process operating in Mode 1 conditions.

## Files Overview

### Normal Operations
- **`mode1_normal_50.xlsx`**: 50 hours of normal Mode 1 operations
  - Contains baseline process behavior under normal operating conditions
  - No faults or disturbances introduced
  - Useful for establishing normal operating patterns and control system performance

- **`mode1_normal_500.xlsx`**: 500 hours of normal Mode 1 operations  
  - Extended normal operation dataset
  - Provides long-term process behavior and variability
  - Ideal for statistical analysis and baseline model development

### Fault Scenarios (`faults/` directory)

The faults directory contains simulation data for all 21 Tennessee Eastman fault scenarios, with 5 independent simulation batches for each fault type.

#### File Naming Convention
Files are named as: `mode1_{fault_number}_{batch_number}.xlsx`

- **Fault Number**: 1-21 (corresponding to the 21 standard Tennessee Eastman faults)
- **Batch Number**: 1-5 (five independent simulation runs per fault type)

#### Complete Fault List
1. **Fault 1**: A/C feed ratio, B composition constant (Stream 4)
2. **Fault 2**: B composition, A/C ratio constant (Stream 4)
3. **Fault 3**: D feed temperature (Stream 2)
4. **Fault 4**: Reactor cooling water inlet temperature
5. **Fault 5**: Condenser cooling water inlet temperature
6. **Fault 6**: A feed loss (Stream 1)
7. **Fault 7**: C header pressure loss-reduced availability (Stream 4)
8. **Fault 8**: A, B, C feed composition (Stream 4)
9. **Fault 9**: D feed temperature (Stream 2)
10. **Fault 10**: C feed temperature (Stream 4)
11. **Fault 11**: Reactor cooling water inlet temperature
12. **Fault 12**: Condenser cooling water inlet temperature
13. **Fault 13**: Reaction kinetics
14. **Fault 14**: Reactor cooling water valve
15. **Fault 15**: Condenser cooling water valve
16. **Fault 16**: Unknown
17. **Fault 17**: Unknown
18. **Fault 18**: Unknown
19. **Fault 19**: Unknown
20. **Fault 20**: Unknown
21. **Fault 21**: The valve for Stream 4 was fixed at the steady state position

#### Available Files
Each fault type has 5 simulation batches:
- `mode1_1_1.xlsx` through `mode1_1_5.xlsx` (Fault 1, Batches 1-5)
- `mode1_2_1.xlsx` through `mode1_2_5.xlsx` (Fault 2, Batches 1-5)
- ...
- `mode1_21_1.xlsx` through `mode1_21_5.xlsx` (Fault 21, Batches 1-5)

**Total**: 105 fault simulation files (21 faults × 5 batches each)

## Data Structure

All Excel files contain time series data with columns typically including:
- **Time**: Simulation time stamps
- **Process Variables**: Temperatures, pressures, flow rates, compositions
- **Manipulated Variables**: Valve positions, controller setpoints
- **Measured Disturbances**: External disturbances affecting the process
- **Fault Indicators**: Flags indicating when faults are active (in fault scenarios)

## Usage Notes

- **Normal operation files** are ideal for establishing baseline behavior and training normal operation models
- **Fault scenario files** provide labeled data for fault detection and diagnosis algorithm development
- **Multiple batches** for each fault allow for statistical analysis and cross-validation
- **Mode 1 conditions** represent one of the standard operating points of the Tennessee Eastman process

## Applications

This dataset is particularly useful for:
- Developing and testing fault detection algorithms
- Training machine learning models for process monitoring
- Benchmarking process analytics methods
- Studying process dynamics and control system behavior
- Research in multivariate statistical process control