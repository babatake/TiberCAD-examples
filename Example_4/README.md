📄 Example: 2D MOSFET with Transfer Characteristics Simulation

This example demonstrates a 2D simulation of a silicon-based MOSFET using TiberCAD, including transfer and output characteristics via voltage sweep.
🧪 Files Included

    mosfet.geo
    GMSH geometry file defining the 2D planar structure of the MOSFET, including:

        Substrate, Source, Drain, and Gate

        Oxide layer (SiO₂) separation

        Properly labeled contacts for simulation

    mosfet.tib
    TiberCAD input file setting up:

        Device structure and material regions

        Doping profiles (acceptor for substrate, donor for source/drain)

        driftdiffusion module to simulate carrier transport

        Contacts and electric biasing

    transchar.tib
    Sweep configuration file performing:

        Gate voltage sweep (Vg) at fixed drain bias to extract transfer characteristics (Id–Vg)

        Suitable for evaluating threshold voltage and subthreshold slope

🔍 Simulation Description

    Device: Planar silicon MOSFET

    Dimension: 2D (x–y plane)

    Modules Used: driftdiffusion, sweep

    Simulation Goals:

        Compute electric potential, carrier densities, and current distributions

        Extract transfer (Id–Vg) and output (Id–Vd) characteristics

    Output Format: .vtk for field quantities (viewable in ParaView), and .dat for I–V curves

▶️ How to Run

    First, simulate the baseline MOSFET structure:

tibercad mosfet.tib

    Then, perform the transfer characteristics sweep:

tibercad transchar.tib

    Visualize results using:

        ParaView for spatial field maps (.vtu)

        Grace or Python/Excel for .dat output curves

💡 Notes

    This example showcases how to combine device-level modeling with bias sweeping to study switching characteristics.

    It serves as a foundation for benchmarking or extending to advanced FET designs (e.g. FinFET, SOI MOSFETs).
