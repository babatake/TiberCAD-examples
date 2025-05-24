#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Mar 25 21:00:58 2025

@author: tbaba
"""

import subprocess

# .tibファイルの内容（文字列として定義！）
tib_code = """
Device quantum_well {
    meshfile = quantum_well_2D.msh
    mesh_units = 1e-6

    Region well {
        material = GaAs
        Doping {
            density = 1e22
            type = donor
            level = 0.025
        }
    }

    Region barrier {
        material = AlGaAs
        x = 0.3
        Doping {
            density = 5e22
            type = donor
            level = 0.025
        }
    }
}

Module efaschroedinger {
    name = efa_el
    regions = (well)
    carriers = (electrons)
    number_of_eigenstates = 10

    plot = (EnergyLevels, WaveFunctions, ElectronDensity)

    Physics {
        particle = el
        model = single_band
    }

    Solver {
        solver = krylovshur
        guess = 1.4
        eigen_solver_tolerance = 1e-6
    }
}

Module efaschroedinger {
    name = efa_hl
    regions = (well)
    carriers = (holes)
    number_of_eigenstates = 10

    plot = (EnergyLevels, WaveFunctions, HoleDensity)

    Physics {
        particle = hl
        model = single_band
        effective_mass = 0.5
    }

    Solver {
        solver = krylovshur
        guess = -0.1
        eigen_solver_tolerance = 1e-6
    }
}

Module opticskp {
    name = optics
    regions = (well)
    plot = (optical_spectrum_k_0)

    initial_state_model = efa_el
    final_state_model = efa_hl

    initial_state_particle = el
    final_state_particle = hl

    Emin = 1.2
    Emax = 1.8
    dE = 0.003

    gain_model {
        polarization = TE
        temperature = 300
        broadening = 0.02
    }

    output_format = dat
}

Contact cathode {
    voltage = $Vbias[0.0]
}

Contact anode {
    voltage = 0.0
}

Module sweep {
    name = sweep_bias
    variable = $Vbias
    solve = optics
    start = 0.0
    stop = 1.5
    steps = 16
    plot_data = true
}

Simulation {
    temperature = 300
    verbose = 3
    solve = (efa_el, efa_hl, optics, sweep_bias)
    resultpath = output_gain_vs_bias
    output_format = vtk
}
"""

# .tibファイルとして保存
with open("test.tib", "w") as f:
    f.write(tib_code.strip())

# tiberCADを実行
subprocess.run(["tibercad", "test.tib"])
