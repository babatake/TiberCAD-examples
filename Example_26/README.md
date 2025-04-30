📄 Example: Band Dispersion Calculation for GaAs and GaN

This example demonstrates how to compute the band structure dispersion (E–k relationship) for pure GaAs and GaN using TiberCAD, based on effective mass approximation or k·p models.
🧪 Files Included

    bulk.geo
    GMSH geometry file representing a simple 1D bulk structure used as the computational domain for E–k analysis (wave vector scanning).

    pureGaAs_dispersion.tib
    TiberCAD input file that sets up:

        Material: GaAs

        Use of the efaschroedinger module with wavevector-dependent boundary conditions

        Output of energy eigenvalues as a function of k (momentum)

        Possibly includes strain-free, symmetric boundary configuration

    pureGaN_dispersion.tib
    Similar to the GaAs case, but for GaN material. Used to compare band structure curvature and effective mass.

🔍 Simulation Description

    Materials: GaAs and GaN

    Purpose: Band dispersion (E vs. k) extraction

    Dimension: 1D (suitable for effective mass or k·p approximation)

    Modules Used: efaschroedinger

    Objectives:

        Calculate quantized energy levels for different wavevectors

        Analyze band curvature and effective mass

        Compare direct vs. indirect gap characteristics (e.g., GaAs vs. GaN)

    Output Format:

        .dat files containing E–k data

        Ready for plotting with Python, Gnuplot, or Grace

▶️ How to Run

tibercad pureGaAs_dispersion.tib
tibercad pureGaN_dispersion.tib

Then plot E–k curves using:

import matplotlib.pyplot as plt
import numpy as np

data = np.loadtxt("dispersion_GaAs.dat")  # Replace with actual filename
k = data[:, 0]
E = data[:, 1]
plt.plot(k, E)
plt.xlabel("Wavevector k")
plt.ylabel("Energy (eV)")
plt.title("GaAs Band Dispersion")
plt.show()

💡 Notes

    This method provides an approximation of the band structure near band edges.

    You can improve accuracy by using multi-band k·p models or tight-binding if needed.

    Useful for extracting effective mass, band curvature, and comparing different materials.
