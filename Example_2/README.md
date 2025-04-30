📄 Example: 2D MOSFET Device Simulation

This example demonstrates a 2D drift-diffusion simulation of a silicon MOSFET using TiberCAD.
🧪 Files Included

    tut_02.geo
    GMSH geometry file defining the 2D MOSFET layout in the x–y plane. It includes:

        Substrate (p-type)

        Source and Drain (n⁺ doping)

        Gate contact

        Oxide layer (SiO₂)

    tut_02.tib
    TiberCAD input file defining:

        Material assignments (Si, SiO₂)

        Doping profiles in source, drain, and substrate

        driftdiffusion module to solve Poisson and carrier transport equations

        Sweep over gate voltage (Vg) and drain voltage (Vd) to obtain device characteristics

        Contacts with Schottky or ohmic boundary conditions

🔍 Simulation Description

    Device Type: Planar MOSFET

    Dimension: 2D (x–y plane)

    Modules Used: driftdiffusion, sweep

    Objectives:

        Simulate electrostatic potential, carrier distributions, and current flow

        Extract I–V characteristics under varying gate and drain bias

    Output Format: .vtk (viewable in ParaView)

▶️ How to Run

tibercad tut_02.tib

Then open the .vtu files in ParaView to visualize potential, carrier densities, and electric field distributions.
💡 Notes

    This is a standard benchmark example in TiberCAD for 2D MOSFET device modeling.

    The simulation includes field-dependent mobility, SRH recombination, and contact physics.

    Useful for learning how to define doping, contacts, and voltage sweeps in TiberCAD.
