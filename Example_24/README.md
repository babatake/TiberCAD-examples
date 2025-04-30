📄 Example: 2D Planar Transistor Simulation

This example demonstrates a 2D drift-diffusion simulation of a planar transistor structure using TiberCAD, focusing on electrostatics, carrier transport, and current-voltage characteristics.
🧪 Files Included

    transistor.geo
    GMSH geometry file defining the 2D layout of a planar transistor, including:

        Source, drain, and gate regions

        Semiconductor channel

        Insulating and contact boundaries

    transistor.tib
    TiberCAD input file that configures:

        Region definitions and material properties

        Doping profiles for source and drain

        Use of the driftdiffusion module to solve Poisson and carrier continuity equations

        Application of gate and drain biases to simulate switching behavior

        Output of electrostatic potential, carrier densities, and current densities

🔍 Simulation Description

    Device Type: Planar Field-Effect Transistor (FET)

    Dimension: 2D (x–y cross-section)

    Modules Used: driftdiffusion

    Objectives:

        Analyze carrier distribution, electric field, and current flow

        Study gate control, channel modulation, and short-channel effects

        Generate I–V characteristics under gate and drain bias sweeps

    Output Format:

        .vtk or .vtu files for ParaView visualization

        .dat files for numeric plotting

▶️ How to Run

tibercad transistor.tib

Then use ParaView to view spatial data, or xmgrace / Python for .dat plots.
💡 Notes

    This example is useful for studying MOSFET-like behavior in custom or research-grade layouts.

    You can extend it to include quantum corrections, mobility models, or strain effects.
