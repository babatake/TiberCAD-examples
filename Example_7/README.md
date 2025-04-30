📄 Example: Quantum Well LED Spectrum Simulation

This example demonstrates the simulation of an LED based on a quantum well structure, using TiberCAD to calculate spontaneous emission spectra and energy levels via quantum mechanical modeling.
🧪 Files Included

    led_spectrum.geo
    GMSH geometry file defining the 1D quantum well LED structure, typically including:

        Active region (e.g. InGaN or InGaAs quantum well)

        Barrier layers and cladding

        Contacts at top and bottom of the device

    led_spectrum.tib
    TiberCAD input file including:

        Material and doping definitions

        efaschroedinger module to compute quantized energy states and envelope functions

        opticskp module to simulate spontaneous emission spectra

        Optional driftdiffusion or thermal modules for coupled analysis

🔍 Simulation Description

    Device Type: Quantum Well LED

    Dimension: 1D

    Modules Used: efaschroedinger, opticskp

    Objectives:

        Compute quantized energy levels and wavefunctions

        Calculate spontaneous emission spectrum

        Understand optical transitions in quantum well LEDs

    Output Format:

        .dat files for spectrum and energy levels

        Visualization via Grace, gnuplot, or custom tools

▶️ How to Run

tibercad led_spectrum.tib

Then plot opticskp.dat or related files to view the emission spectrum.
💡 Notes

    Ideal for studying spectral output of quantum well-based emitters such as LEDs and laser diodes.

    You can modify quantum well width, material composition, or temperature to observe spectral shifts.
