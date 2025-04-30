📄 Example: Basic 1D Bulk Semiconductor Simulation

This example demonstrates a basic 1D drift-diffusion simulation of a lightly doped bulk semiconductor using TiberCAD, aimed at visualizing electric potential, carrier concentration, and current flow in a homogeneously doped structure.
🧪 Files Included

    bulk.geo
    GMSH geometry file defining a simple 1D simulation domain along the x-axis with:

        A single semiconductor region (e.g., silicon or compound semiconductor)

        Contact points at each end of the device

    bulk.tib
    TiberCAD input file that configures:

        Region and material (e.g., silicon)

        Doping concentration (typically uniform donor or acceptor)

        Use of the driftdiffusion module to solve Poisson and carrier continuity equations

        Boundary conditions (e.g., ohmic contacts or applied bias)

        Output settings for potential, electric field, and carrier distributions

🔍 Simulation Description

    Device Type: Uniform bulk semiconductor

    Dimension: 1D

    Modules Used: driftdiffusion

    Objectives:

        Simulate steady-state carrier transport under bias

        Evaluate electric field, potential drop, and carrier density

        Use as a baseline for more complex structures (e.g., p-n junctions, heterostructures)

    Output Format:

        .dat or .agr files for plotting using Grace, Gnuplot, or Python

▶️ How to Run

tibercad bulk.tib

Plot output using:

xmgrace output_potential.dat

or convert to CSV and use Python tools.
💡 Notes

    This example is useful as a starting point for students and researchers learning how to use TiberCAD.

    Easily extendable to include multiple regions, doping gradients, or quantum effects with EFA.
