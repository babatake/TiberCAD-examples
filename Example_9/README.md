📄 Example: 2D pn Junction Simulation

This example demonstrates a 2D drift-diffusion simulation of a planar pn junction using TiberCAD, suitable for understanding carrier dynamics and electrostatics in a basic semiconductor diode structure.
🧪 Files Included

    tut_09.geo
    GMSH geometry file defining a 2D rectangular pn junction structure in the xy-plane, with:

        p-type and n-type regions

        Defined contacts for anode and cathode

        Proper meshing for electrostatic and carrier transport simulation

    tut_09.tib
    TiberCAD input file specifying:

        Region materials (e.g., Silicon)

        Doping concentrations (acceptor/donor)

        driftdiffusion module to solve Poisson and carrier continuity equations

        Boundary conditions for contact voltages

        Plot settings for electrical quantities such as potential, current density, and carrier distribution

🔍 Simulation Description

    Device Type: Planar pn Junction Diode

    Dimension: 2D (x–y)

    Modules Used: driftdiffusion

    Objective:

        Solve for electrostatic potential, electron/hole densities, and current densities

        Visualize diode behavior under equilibrium or applied bias

    Output Format: .vtk (for visualization in ParaView)

▶️ How to Run

tibercad tut_09.tib

Open the resulting .vtu files in ParaView to explore spatial distributions of:

    Electric potential

    Carrier concentrations

    Current flow

💡 Notes

    This example provides a fundamental benchmark for diode behavior and serves as a foundation for more advanced structures like photodiodes and bipolar transistors.

    You can expand this model by adding temperature effects, recombination mechanisms, or quantum modules.
