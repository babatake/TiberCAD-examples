📄 Example: Quantum Well Structure Simulation

This example demonstrates a 1D quantum well simulation using TiberCAD, combining quantum mechanical effects (via the envelope function approximation) with classical carrier transport.
🧪 Files Included

    quantum_well.geo
    GMSH geometry file defining a 1D heterostructure with multiple layers:

        Quantum well (e.g. InGaAs)

        Barrier layers (e.g. GaAs or AlGaAs)

        Boundary contacts

    quantum_well.tib
    TiberCAD input file that sets up:

        Region and material definitions (with band offsets)

        Doping levels (if present)

        efaschroedinger module to solve the Schrödinger equation using the envelope function approximation (EFA)

        Optional coupling with drift-diffusion module for carrier transport

        Output of quantized energy levels and wavefunctions

🔍 Simulation Description

    Structure Type: Quantum well (e.g. GaAs/InGaAs/GaAs)

    Dimension: 1D

    Modules Used: efaschroedinger, (optional) driftdiffusion

    Objectives:

        Calculate bound energy states of electrons and holes

        Visualize wavefunctions (envelope functions)

        Optionally evaluate carrier transport influenced by quantum confinement

    Output Format:

        .dat files for energy levels and wavefunctions

        .grace format or .vtk depending on configuration

▶️ How to Run

tibercad quantum_well.tib

Visualize results (e.g. quantum_electrons.dat) using any ASCII-compatible plot tool like xmgrace, gnuplot, or Python scripts.
💡 Notes

    This example is essential for modeling quantum wells in lasers, LEDs, or HEMTs.

    You can customize material composition, well width, and doping to study band structure engineering and quantum confinement effects.
