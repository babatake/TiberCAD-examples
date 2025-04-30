📄 Example: Hole Transport Simulation in a-NPD Bulk Structure

This example demonstrates a 1D drift-diffusion simulation of hole transport in an organic semiconductor material (a-NPD) using TiberCAD, and compares results to experimental I–V and mobility data.
🧪 Files Included

    bulk.geo
    GMSH geometry file defining a 1D bulk structure for simulating carrier transport in a-NPD.

    bulk_aNPD.tib
    TiberCAD input file that configures:

        Organic material properties for a-NPD

        Single-carrier (hole) injection and transport via the driftdiffusion module

        Contact voltages for simulating current–voltage characteristics

        Optional settings for temperature, mobility model, and trap states

    I_V_experimental.dat
    Experimental current–voltage (I–V) data for comparison with simulation results.

    a-NPD_hole_mobility_experimental.dat
    Experimental hole mobility values for a-NPD, useful for calibration or benchmarking.

🔍 Simulation Description

    Material: a-NPD (organic hole transport material)

    Dimension: 1D

    Modules Used: driftdiffusion

    Objectives:

        Simulate hole-only device current under applied bias

        Compare simulated I–V curves and mobilities with experimental data

        Study mobility dependence and injection characteristics

    Output Format:

        .agr or .dat for plotting I–V curves

        External .dat files for direct comparison

▶️ How to Run

tibercad bulk_aNPD.tib

Use xmgrace, gnuplot, or Python to compare I(V) simulation results with I_V_experimental.dat.
💡 Notes

    This simulation is ideal for modeling hole-only devices and extracting charge transport parameters in organic electronics.

    You can tune mobility models, trap densities, and contact properties to fit experimental data more closely.
