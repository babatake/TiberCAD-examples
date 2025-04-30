📄 Example: Quantum-Poisson Self-Consistent Simulation

This example performs a self-consistent 1D simulation of a quantum well structure, coupling the Poisson equation with the Schrödinger equation using the Envelope Function Approximation (EFA).
🧪 Files Included

    quantum_poisson.geo
    GMSH geometry file defining a 1D heterostructure with quantum well and barrier layers, aligned along the x-axis.

    quantum_poisson.tib
    TiberCAD input file setting up:

        Regions and material definitions (e.g. InGaAs, GaAs)

        efaschroedinger module for quantum state calculation

        driftdiffusion module for classical carrier transport

        selfconsistent module to iteratively solve Poisson and Schrödinger equations until convergence

        Optional traps or fixed charges (if present)

🔍 Simulation Description

    Structure Type: Quantum well heterostructure

    Dimension: 1D

    Modules Used: efaschroedinger, driftdiffusion, selfconsistent

    Objectives:

        Solve the quantum-confined energy levels and wavefunctions

        Compute electrostatic potential distribution from charge

        Capture quantum-capacitance effects and band bending through self-consistency

    Output Format:

        .dat files for quantized levels and potential

        .agr for plotting via Grace (for 1D output)

▶️ How to Run

tibercad quantum_poisson.tib

Then use xmgrace or a Python script to plot results such as energy bands, potential, and carrier distributions.
💡 Notes

    This simulation illustrates the quantum electrostatics essential in HEMTs, tunnel FETs, and quantum well devices.

    You can adjust well width, doping, or material composition to explore different confinement and charge behaviors.
