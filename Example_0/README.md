📄 Example 0: Bulk Silicon 1D Simulation

This example demonstrates a simple 1D drift-diffusion simulation of lightly doped bulk silicon using TiberCAD.
🧪 Files Included

    bulk.geo
    GMSH geometry file that defines a 1D silicon structure along the x-axis. It specifies the physical line "bulk" and two contact points: "Anode" and "Cathode".

    bulk.tib
    TiberCAD input file that sets up:

        the simulation domain (Region bulk)

        material properties (Silicon)

        doping (1e16 cm⁻³ donor)

        driftdiffusion module for solving the Poisson and carrier transport equations

        a sweep module to simulate I-V characteristics by varying anode voltage

🔍 Simulation Description

    Device: Lightly doped bulk silicon

    Simulation Type: 1D Poisson + Drift-Diffusion

    Goal: Extract the current-voltage (I-V) characteristics

    Output Format: ASCII (grace format)

▶️ Run Instructions (Linux/macOS)

tibercad bulk.tib

You may visualize the output with tools like xmgrace or any other ASCII-compatible plot viewer.
💡 Notes

    Make sure GMSH was used to generate the mesh file bulk.msh before running the simulation.

    This example serves as a minimal starting point for building more advanced semiconductor simulations.
