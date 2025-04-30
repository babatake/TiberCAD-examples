📄 Example: GaN Quantum Dot Simulation using Tight-Binding (TB) Model

This example demonstrates the simulation of a GaN-based quantum dot using the Tight-Binding (TB) method in TiberCAD, suitable for computing atomistic electronic states in low-dimensional structures.
🧪 Files Included

    quantum_dot_GaN_TB.geo
    GMSH geometry file defining a 3D nanostructure, representing:

        A GaN quantum dot embedded in a matrix (e.g., AlN or vacuum)

        Atomistic mesh suitable for tight-binding calculations

    quantum_dot_GaN_TB.tib
    TiberCAD input file setting up:

        Use of the tb (tight-binding) module for solving quantum states on an atomistic grid

        Material definitions for GaN and surrounding media

        Output of energy levels and spatially resolved wavefunctions

        Optional coupling to strain and polarization fields

🔍 Simulation Description

    Device Type: GaN Quantum Dot

    Dimension: 3D

    Modules Used: tb (tight-binding), optional elasticity, polarization

    Objectives:

        Compute discrete energy levels in GaN nanostructure

        Visualize quantum confinement and wavefunction localization

        Study strain-induced band structure modification (if enabled)

    Output Format:

        .dat for energy eigenvalues

        .vtk or .vtu for wavefunction and atomistic property visualization in ParaView

▶️ How to Run

tibercad quantum_dot_GaN_TB.tib

Then open .vtk output files in ParaView for visualization of wavefunctions and potential distributions.
💡 Notes

    The tight-binding model enables atomistic resolution, capturing effects like valence band mixing, strain, and piezoelectric fields, which are critical in GaN quantum dots for optoelectronic devices.

    You can tune quantum dot size, shape, or surrounding material to investigate confinement effects.
