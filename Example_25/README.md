📄 Example: Quantum Superlattice Simulation

This example demonstrates the simulation of a quantum well superlattice (SL) or heterostructure using TiberCAD, employing quantum mechanical modeling to calculate confined energy states across multiple potential wells.
🧪 Files Included

    sl.geo
    GMSH geometry file defining a 1D layered superlattice structure, typically including:

        Alternating quantum wells and barrier layers

        Material stack with appropriate band offsets

        Boundary conditions for solving wavefunctions

    test.tib
    TiberCAD input file that configures:

        Material definitions and layer assignments

        efaschroedinger module for solving the envelope-function-based Schrödinger equation

        Extraction of bound states and wavefunction profiles

        Optional coupling to Poisson or drift-diffusion modules

🔍 Simulation Description

    Structure Type: Quantum Well Superlattice (e.g., GaAs/AlAs)

    Dimension: 1D

    Modules Used: efaschroedinger, optionally selfconsistent or driftdiffusion

    Objectives:

        Solve for quantized energy levels in coupled quantum wells

        Analyze wavefunction coupling, tunneling, and miniband formation

        Visualize confinement and energy band alignment

    Output Format:

        .dat files for energy levels and wavefunctions

        .agr or .vtk for visualization

▶️ How to Run

tibercad test.tib

Visualize results using:

    xmgrace or gnuplot for plotting .dat output

    ParaView for .vtk-based spatial field data (if included)

💡 Notes

    This example is useful for modeling quantum cascade structures, IR photodetectors, and SL-based lasers.

    You can extend the structure to include bias-dependent transport, effective mass variation, or temperature effects.
