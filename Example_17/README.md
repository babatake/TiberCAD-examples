📄 Example: InAs Quantum Well Simulation

This example demonstrates a 1D quantum well simulation using InAs-based heterostructures in TiberCAD, with optional drift-diffusion analysis of charge transport.
🧪 Files Included

    InAs_qw.geo
    GMSH geometry file defining a 1D layered structure consisting of:

        InAs quantum well

        Barrier layers (e.g., AlSb or GaSb)

        Contact boundaries

    InAs_qw.tib
    TiberCAD input file that includes:

        Region and material specifications

        Use of the efaschroedinger module to compute:

            Bound energy states

            Envelope wavefunctions (1D)

        Optional driftdiffusion module for charge transport under applied bias

        Configuration for plotting or exporting results

    dd.tsv
    Auxiliary data or output file (e.g., drift-diffusion results or I–V data), viewable in spreadsheet or plotting tools

🔍 Simulation Description

    Device Type: InAs Quantum Well Structure

    Dimension: 1D

    Modules Used: efaschroedinger, optionally driftdiffusion

    Objectives:

        Solve for quantized electron states in the quantum well

        Analyze potential distribution and carrier transport

        Output energy levels and I–V characteristics (if applicable)

    Output Format:

        .dat, .tsv for data analysis

        Optional .vtk or .agr for visualization

▶️ How to Run

tibercad InAs_qw.tib

Then view results using:

    xmgrace or Python (for .dat/.tsv plots)

    ParaView if .vtk output is included

💡 Notes

    This simulation is relevant for high-speed transistors, photodetectors, or quantum cascade lasers using InAs material systems.

    You can modify material composition (e.g., In₀.₅₃Ga₀.₄₇As) or quantum well width to explore band structure tuning.
