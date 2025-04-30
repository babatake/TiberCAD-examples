📄 Example: Quantum Well LED Simulation with Band Tail State Analysis

This example demonstrates the simulation of a quantum well LED structure using TiberCAD, with focus on analyzing band tail states in the energy spectrum.
🧪 Files Included

    led.geo
    GMSH geometry file defining a 1D or 2D quantum well LED structure, typically including:

        Active region (quantum well)

        Barrier layers

        Electrical contact boundaries

    led.tib
    TiberCAD input file setting up:

        Material regions and doping

        Use of the efaschroedinger module to calculate quantized energy levels and wavefunctions

        Optional drift-diffusion for carrier transport

        Output of spontaneous emission, potential profile, and wavefunctions

    tail.dat
    Data file containing computed or fitted band tail states or density-of-states tail information for evaluating sub-bandgap optical transitions or localization effects.

🔍 Simulation Description

    Device Type: Quantum Well LED

    Dimension: 1D or 2D depending on geometry

    Modules Used: efaschroedinger, optionally opticskp, driftdiffusion

    Objectives:

        Simulate quantum confinement and carrier levels in the LED

        Evaluate influence of band tailing on carrier localization or emission spectrum

        Visualize energy levels, envelope functions, and density of tail states

    Output Format:

        .dat files (e.g., tail.dat, energy levels)

        .vtu/.vtk if visualization of spatial fields is enabled

▶️ How to Run

tibercad led.tib

Then use:

    xmgrace, Python, or Excel to visualize tail.dat and energy levels

    ParaView for .vtu field visualization if applicable

💡 Notes

    Band tail states are important in disordered semiconductors or alloyed materials like InGaN.

    This example can be extended with random alloy modeling, optical spectra, or recombination dynamics.
