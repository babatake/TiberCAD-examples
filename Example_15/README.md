📄 Example: Bipolar Junction Transistor (BJT) Simulation

This example demonstrates a 2D simulation of a Bipolar Junction Transistor (BJT) using TiberCAD, focusing on charge injection, carrier diffusion, and current amplification.
🧪 Files Included

    bjt.geo
    GMSH geometry file defining the 2D cross-section of a BJT device with:

        Emitter, base, and collector regions

        Contact locations

        Appropriate meshing for drift-diffusion simulation

    bjt.tib
    TiberCAD input file that configures:

        Region definitions and doping concentrations (typically n⁺pⁿ or p⁺nᵖ)

        driftdiffusion module to model:

            Carrier injection and recombination

            Potential distribution and electric fields

            Collector and base current

        Contact voltages and boundary conditions

        Plot options for current density, potential, and carrier profiles

🔍 Simulation Description

    Device Type: NPN or PNP Bipolar Junction Transistor

    Dimension: 2D (planar or vertical structure)

    Modules Used: driftdiffusion

    Objectives:

        Visualize carrier injection and transport across junctions

        Simulate base modulation and collector current amplification

        Extract I–V characteristics under varying bias conditions

    Output Format: .vtk/.vtu (field visualization) and .dat for numeric plots

▶️ How to Run

tibercad bjt.tib

Use ParaView to visualize carrier concentration, potential, and current densities. Use plotting tools for current-voltage analysis.
💡 Notes

    This example is ideal for understanding the internal physics of bipolar transistors and comparing with analytical Ebers-Moll or Gummel-Poon models.

    You can extend it to heterojunction BJTs (HBTs) by modifying the material properties.
