📄 Example: Dye-Sensitized Solar Cell (DSC) Simulation

This example demonstrates a 2D simulation of a Dye-Sensitized Solar Cell (DSC) using TiberCAD, focusing on charge transport, electric potential, and energy-level alignment in hybrid organic/inorganic photovoltaic systems.
🧪 Files Included

    DSC.geo
    GMSH geometry file defining a layered DSC structure, typically including:

        Transparent conducting oxide (TCO)

        TiO₂ nanoporous layer (semiconductor)

        Electrolyte region

        Counter electrode

        Properly assigned contacts and interfaces

    DSC.tib
    TiberCAD input file configuring:

        Region definitions with materials like TiO₂, electrolyte, and ITO

        driftdiffusion module to simulate ionic/electronic transport

        Boundary conditions and illumination settings

        Energy level alignment and redox potential definitions

        Output of carrier density, electric field, and potential maps

    test.conf.bkp
    Backup of a custom configuration file (e.g., material definitions, plot settings, or sweep options)

🔍 Simulation Description

    Device Type: Dye-Sensitized Solar Cell (DSC)

    Dimension: 2D (planar cross-section)

    Modules Used: driftdiffusion

    Objectives:

        Model photoinduced charge generation and transport

        Visualize electrostatic potential, carrier distributions, and internal fields

        Evaluate I–V characteristics and device efficiency

    Output Format:

        .vtk/.vtu for visualization in ParaView

        .dat or .agr for I–V curves and energy band plots

▶️ How to Run

tibercad DSC.tib

Optional: Ensure any custom config files (like test.conf.bkp) are renamed or included as needed by your tib input.
💡 Notes

    This example is suitable for modeling organic-inorganic hybrid solar cells with multiple charge carrier species (electrons, holes, ions).

    Extendable to include trap states, interface recombination, or optical generation profiles.
