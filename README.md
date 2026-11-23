# Adams-Bashforth-Moulton Predictor-Corrector in Fortran

A Fortran implementation of the 4th-order **Adams-Bashforth-Moulton Predictor-Corrector** method for solving first-order ordinary differential equations (ODEs).

## Overview

- Starts with 4th-order Runge-Kutta (RK4) to generate the initial points.
- Uses the Adams-Bashforth predictor and Adams-Moulton corrector in PECE mode for $O(h^4)$ accuracy.

## Usage

Compile and run with `gfortran`:

```bash
gfortran abm4.f90 -o abm4
./abm4
