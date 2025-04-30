📄 Example: Polarization and Strain-Dependent Simulation of InGaN/GaN Quantum Wells

This example set demonstrates polarization-resolved simulations of InGaN/GaN quantum wells using TiberCAD, with multiple crystallographic orientations (e.g., (10-1-1), (10-1-3), (11-22)) and evaluation of strain and spontaneous polarization effects.
🧪 Files Included

    in_10-1-1.tib, in_10-1-3.tib, in_11-22.tib
    TiberCAD input files for different growth orientations of InGaN/GaN quantum wells, configured to:

        Apply crystal-direction-specific strain tensors

        Use material files including piezoelectric and spontaneous polarization

        Simulate quantum confinement using efaschroedinger and electrostatics using driftdiffusion

    GaN.dat, InGaN.dat, InN.dat
    Material parameter files (possibly with elastic constants, dielectric properties, and polarization coefficients)

    P_and_strain_InGaN.agr
    Output plot of polarization field and strain distribution in InGaN well, viewable via Grace or converted to image

    quantum_well.geo
    1D or 2D geometry definition shared across orientation-specific simulations

    input.tib.in, sweep_angles.sh
    Template input and bash script for sweeping angle-dependent configurations, enabling automated parameterized simulations

🔍 Simulation Description

    System: InGaN/GaN Quantum Well

    Goal: Evaluate the effect of crystal orientation on:

        Polarization fields (spontaneous + piezoelectric)

        Strain distribution

        Energy level alignment and carrier confinement

    Modules Used: efaschroedinger, driftdiffusion, elasticity, polarization

    Output Format:

        .dat and .agr for quantitative plots (energy levels, strain, polarization)

        .vtk if enabled for field visualization

▶️ How to Run

    Run individual orientation simulations:

tibercad in_10-1-1.tib
tibercad in_11-22.tib

    Or batch-sweep using:

bash sweep_angles.sh

    Plot with:

xmgrace P_and_strain_InGaN.agr

💡 Notes

    This example is valuable for investigating nonpolar and semipolar LED structures, where internal fields due to polarization are reduced or redistributed.

    Suitable for optimizing quantum well design, emission wavelength, and efficiency droop mitigation strategies in InGaN devices.
