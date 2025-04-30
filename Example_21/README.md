📄 Example: Atomistic Simulation of LED with Random Alloy Using Tight-Binding

This example demonstrates an atomistic-scale simulation of a quantum well LED using TiberCAD, incorporating random alloy composition and the tight-binding (TB) method to capture atomistic disorder and band structure variation.
🧪 Files Included

    led.geo
    GMSH geometry file defining a 3D LED structure, including:

        Active region with random alloy quantum well (e.g., InGaN)

        Barrier and cladding layers

        Electrode/contact boundaries

    led_TB_random_alloy.tib
    TiberCAD input file that sets up:

        tb (tight-binding) module for electronic state calculation

        Random alloy configuration in the active region

        Material definitions and band edge randomness due to composition fluctuation

        Outputs: energy levels and spatially resolved wavefunctions

    led_atomistic.tib
    Optional variant input for deterministic or reference atomistic simulation, possibly without alloy randomness

🔍 Simulation Description

    Device Type: Quantum Well LED (e.g., InGaN/GaN)

    Dimension: 3D (atomistic grid)

    Modules Used: tb (tight-binding), possibly elasticity, polarization

    Objectives:

        Capture band structure variation due to random alloying

        Calculate quantized energy levels and wavefunctions

        Visualize carrier localization, band tailing, and inhomogeneous broadening

    Output Format:

        .vtu/.vtk for visualizing energy levels and wavefunctions in ParaView

        .dat for energy spectra

▶️ How to Run

tibercad led_TB_random_alloy.tib
# or optionally:
tibercad led_atomistic.tib

Visualize .vtu results in ParaView to inspect atomistic spatial wavefunctions and potential landscape.
💡 Notes

    This simulation is suitable for modeling InGaN-based LEDs where random alloy fluctuations strongly affect emission spectra.

    Can be extended with optical transition rate calculations or coupled with opticskp.
