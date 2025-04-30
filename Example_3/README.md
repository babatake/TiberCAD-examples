📄 Example: 1D InGaAs Device Simulation

This example demonstrates a 1D drift-diffusion simulation of an InGaAs-based semiconductor structure using TiberCAD.
🧪 Files Included

    InGaAs_1D.geo
    GMSH geometry file defining a simple 1D device structure along the x-axis with assigned physical regions and boundary contacts.

    InGaAs_1D.tib
    TiberCAD input file that includes:

        Material specification for InGaAs

        Region definitions and doping profile

        Drift-diffusion module for solving electrostatic potential and carrier transport

        Contact voltages and a sweep module to perform bias scanning (e.g. I–V characteristic)

🔍 Simulation Description

    Material: In₀.₅₃Ga₀.₄₇As

    Simulation Type: 1D Poisson + Drift-Diffusion

    Objective:

        Analyze carrier transport and potential distribution under bias

        Generate I–V characteristics

    Output Format: .grace format for plotting

▶️ How to Run

tibercad InGaAs_1D.tib

Plot the resulting .agr file using xmgrace or similar ASCII plotting tools.
💡 Notes

    This example is ideal for modeling InGaAs-based photodetectors or HEMT channels in simplified 1D geometry.

    You can easily modify the doping or material composition to study the impact on device characteristics.
