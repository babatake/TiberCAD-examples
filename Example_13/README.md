📄 Example: Silicon Nanowire FET (NWFET) Simulation

This example demonstrates a 2D simulation of a silicon-based nanowire field-effect transistor (Si NWFET) using TiberCAD, focusing on carrier transport and electrostatic potential in a nanoscale transistor structure.
🧪 Files Included

    Si_NWFET.geo
    GMSH geometry file defining a cross-section of a silicon nanowire transistor, typically including:

        Silicon nanowire core

        Gate dielectric (e.g., SiO₂ or high-k layer)

        Gate electrode

        Source/drain contacts

    Si_NWFET.tib
    TiberCAD input file setting up:

        Region and material definitions (e.g., silicon, oxide)

        Doping profiles for source and drain

        driftdiffusion module for electron/hole transport

        Contact definitions and gate bias control

        Optional strain, mobility, and recombination models

🔍 Simulation Description

    Device Type: Silicon Nanowire Field-Effect Transistor (NWFET)

    Dimension: 2D cross-section (typically cylindrical or rectangular wire)

    Modules Used: driftdiffusion

    Objectives:

        Simulate electrostatic potential, carrier distribution, and current flow

        Analyze gate modulation of channel conduction

        Evaluate potential for short-channel effects and mobility degradation

    Output Format: .vtk or .vtu for spatial data, .dat for I–V characteristics

▶️ How to Run

tibercad Si_NWFET.tib

Open the output files in ParaView to visualize potential, current density, and carrier concentrations.
💡 Notes

    This example is suitable for understanding advanced nanoscale FET operation, particularly in GAA (gate-all-around) or FinFET-like structures.

    Easily extendable to include quantum confinement, high-k dielectrics, or strain engineering.
