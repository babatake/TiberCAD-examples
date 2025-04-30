📄 Example: Hole-Only Device Simulation for ITO/P3HT Structure

This example demonstrates a 1D simulation of hole transport in an ITO/P3HT organic semiconductor device using TiberCAD, including a comparison to experimental HOMO-level transport data.
🧪 Files Included

    bulk.geo
    GMSH geometry file defining the 1D vertical stack structure used for simulating hole transport.

    ITO_P3HT.tib
    TiberCAD input file that sets up:

        Organic material layers: ITO (contact) and P3HT (hole transport)

        Drift-diffusion transport of holes

        Boundary voltages for extracting current–voltage behavior

        Mobility models, HOMO energy levels, or trap effects

    homo_experimental.dat
    Experimental data file of hole transport characteristics (e.g., mobility or I–V curve) to be used for fitting and validation.

    homo_fit.dat
    Fitted or simulated data output for comparison with experimental results.

    test.conf.bkp
    Optional configuration or backup file, possibly containing auxiliary settings for material parameters or plotting preferences.

🔍 Simulation Description

    Material System: ITO/P3HT (hole-only device)

    Dimension: 1D

    Modules Used: driftdiffusion

    Objectives:

        Simulate hole injection and transport through P3HT

        Extract or validate mobility parameters

        Fit model results to experimental data of HOMO transport

    Output Format:

        .dat files for current, carrier densities, potential

        .agr or .tsv files for data comparison

▶️ How to Run

tibercad ITO_P3HT.tib

Then compare the simulated results (homo_fit.dat) with experimental measurements (homo_experimental.dat) using:

    Python (e.g., matplotlib)

    Grace (xmgrace)

    Excel/LibreOffice

💡 Notes

    This example is ideal for studying hole mobility, trap-limited transport, and injection barriers in organic semiconductors.

    Can be extended with field-dependent mobility models or Poole–Frenkel behavior.
