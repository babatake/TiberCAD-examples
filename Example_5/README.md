📄 Example: Nanocolumn (Nanowire) Device Simulation

This example demonstrates a 2D simulation of a nanocolumn (nanowire) device using TiberCAD, showcasing carrier transport and electrostatic behavior in vertically aligned nanoscale structures.
🧪 Files Included

    nanocolumn.geo
    GMSH geometry file that defines a nanocolumn structure in 2D, likely representing a cross-section of a vertical nanowire device, with separate regions for:

        Core

        Shell or cladding

        Contact terminals (top/bottom or radial)

    nanocolumn.tib
    TiberCAD input file configuring:

        Materials (e.g. GaAs, InGaAs, or Si-based regions)

        Doping profiles

        driftdiffusion module to simulate electrostatic potential and carrier transport

        Contact voltages or boundary conditions

🔍 Simulation Description

    Device Type: Vertical Nanowire (Nanocolumn)

    Dimension: 2D cylindrical cross-section

    Physics: Poisson + Drift-Diffusion

    Objective:

        Analyze carrier injection, electric potential distribution, and current flow

        Evaluate device behavior under forward/reverse bias

    Output Format: .vtk (for use with ParaView)

▶️ How to Run

tibercad nanocolumn.tib

Then open the resulting .vtu files in ParaView to explore the spatial distribution of potential, carrier concentrations, and current densities.
💡 Notes

    Nanocolumn structures are important in photodetectors, nanowire FETs, and solar cells.

    This example can be adapted to study radial junctions, core–shell architectures, or quantum confinement effects (with EFA or TB modules).
