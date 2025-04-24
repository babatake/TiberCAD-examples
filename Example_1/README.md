📄 Example: 1D pn Diode Simulation

This example demonstrates a 1D simulation of a pn junction diode using TiberCAD.
🧪 Files Included

    diode_1D.geo
    GMSH geometry file defining a one-dimensional structure along the x-axis, including:

        "p" and "n" regions (for the p-type and n-type sides)

        "anode" and "cathode" contact points

    diode_1D.tib
    TiberCAD input file defining:

        Two regions with different doping types:

            p-side: acceptor doping (e.g. 1e17 cm⁻³)

            n-side: donor doping (e.g. 1e16 cm⁻³)

        driftdiffusion module to simulate electrostatics and carrier transport

        sweep module to vary the bias voltage and obtain I-V characteristics

🔍 Simulation Description

    Device: pn Junction Diode

    Simulation Type: 1D Poisson + Drift-Diffusion

    Objective: Simulate the current-voltage (I-V) characteristics under forward and reverse bias

    Output Format: ASCII (grace format)

▶️ Run Instructions

tibercad diode_1D.tib

View results with plotting tools like xmgrace, or convert data to CSV for use with Python/Excel.
💡 Notes

    This example is a fundamental building block for more complex devices like LEDs, photodiodes, and bipolar transistors.

    The simulation includes recombination effects (e.g. Shockley-Read-Hall) and doping profiles to model real device behavior.
