📄 Example: Solar Cell Simulation

This example demonstrates the simulation of a semiconductor solar cell using TiberCAD, focusing on carrier generation, separation, and current-voltage characteristics under illumination.
🧪 Files Included

    solarcell.geo
    GMSH geometry file defining the 2D structure of the solar cell, typically including:

        Absorber layer (e.g., Si, GaAs, or InGaP)

        Emitter and base regions

        Front/back contacts

        Optional passivation or anti-reflection layers

    solarcell.tib
    TiberCAD input file that sets up:

        Material and region definitions with proper doping

        Use of the driftdiffusion module to simulate:

            Electric potential

            Carrier transport

            Photogenerated current

        Optical generation profile or parameters (if specified)

        Sweep module for obtaining I–V characteristics

🔍 Simulation Description

    Device Type: Planar Solar Cell

    Dimension: 2D

    Modules Used: driftdiffusion, sweep

    Objectives:

        Compute electric field, carrier densities, and photocurrent

        Extract I–V curves under illumination

        Evaluate efficiency, fill factor, and open-circuit voltage

    Output Format:

        .vtk for field quantities (for ParaView)

        .dat for I–V data (viewable with Grace, Gnuplot, or Python)

▶️ How to Run

tibercad solarcell.tib

Then open the results in ParaView or plot the I–V characteristics using a graphing tool of your choice.
💡 Notes

    This simulation is useful for studying bulk or thin-film solar cells, including heterojunctions.

    Can be extended to include quantum effects, temperature dependence, or optical generation profiles.
