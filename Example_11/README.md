📄 Example: Quantum Well Simulation Using EFA

This example demonstrates a 1D quantum well simulation using TiberCAD, applying the Envelope Function Approximation (EFA) to compute quantized energy states and carrier wavefunctions.
🧪 Files Included

    quantum_well.geo
    GMSH geometry file defining a 1D heterostructure with multiple material layers:

        Central quantum well region

        Surrounding barrier layers

        Boundary points for electrical contacts

    quantum_well.tib
    TiberCAD input file that sets up:

        Material and region assignments

        Band structure properties (bandgap, effective mass, offsets)

        efaschroedinger module to solve the Schrödinger equation in the quantum well

        Output of energy levels, wavefunctions, and density of states

        Optional visualization options using .vtk or .dat formats

🔍 Simulation Overview

    Structure Type: Quantum Well (1D)

    Physics Modules:

        efaschroedinger: Solves for bound state energies and envelope functions

    Objective:

        Determine discrete energy levels due to quantum confinement

        Analyze the shape and localization of electron and hole wavefunctions

▶️ How to Run

tibercad quantum_well.tib

    Plot .dat output files using tools like xmgrace, gnuplot, or Python-based tools.

    For spatial visualization of wavefunctions, open .vtk/.vtu files in ParaView.

💡 Notes

    This example is useful for modeling active regions in quantum well lasers or LEDs.

    Can be extended to include self-consistent Poisson coupling or optical transition calculations using opticskp.
