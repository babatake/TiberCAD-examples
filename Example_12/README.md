📄 Example: Quantum Disk Simulation

This example demonstrates the simulation of a quantum disk heterostructure using TiberCAD, focusing on quantized energy levels and wavefunctions in a radially confined geometry.
🧪 Files Included

    qdisk.geo
    GMSH geometry file defining a 2D axisymmetric quantum disk, typically comprising:

        A central disk region (quantum well or dot)

        Surrounding barrier layers

        Boundary regions for setting electrical or mechanical conditions

    qdisk.tib
    Main TiberCAD input file configuring:

        Material and region definitions (e.g., InGaN/GaN or InGaAs/GaAs)

        Use of efaschroedinger module to calculate bound states and envelope functions

        Optional coupling to strain (elasticity) or polarization effects

    qdisk_win.tib
    Variant input file, potentially configured for Windows environment or alternative solver settings

🔍 Simulation Description

    Structure Type: Quantum Disk (axially symmetric 2D geometry)

    Modules Used:

        efaschroedinger for solving quantum states

        Optional: elasticity, polarization depending on file content

    Objectives:

        Compute quantized energy levels in disk-like structures

        Analyze spatial wavefunction distribution

        Understand confinement effects in disk-shaped quantum nanostructures

    Output Format:

        .vtu or .vtk files for spatial visualization

        .dat for energy levels and eigenstates

▶️ How to Run

tibercad qdisk.tib
# or
tibercad qdisk_win.tib

Then view .vtu or .vtk output in ParaView.
💡 Notes

    Quantum disks are useful in nanowire LEDs, single-photon sources, and disk-shaped quantum dots.

    This example highlights radial and vertical confinement in a simple cylindrical coordinate setup.
