# TiberCAD-examples
Example projects and simulation scripts for semiconductor device modeling using TiberCAD.

This repository also includes some of the official example simulations that come with TiberCAD, such as 1D bulk silicon and pn diode models.

How to Run a TiberCAD .tib File

There are two common ways to run a TiberCAD .tib simulation script: using the command line directly, or using a Python script to automate the process.
1. Running from the Command Line

To execute a .tib file using TiberCAD from the terminal, follow these steps:

    Open a terminal window.

    Navigate to the folder where your .tib file is located using the cd command. For example:

cd /path/to/your/tib/files

Run the .tib file using the TiberCAD executable:

    /usr/local/bin/tibercad diode_1D.tib

Replace /usr/local/bin/tibercad with the actual path to the tibercad binary on your system if it’s different.
2. Running from a Python Script

You can also execute the .tib file using a Python script, which is helpful for automation or integration with other tools:

# Run a TiberCAD .tib script
import subprocess

tib_file = "diode_1D.tib"
tib_exec = "/usr/local/bin/tibercad"

result = subprocess.run([tib_exec, tib_file], capture_output=True, text=True)

print(result.stdout)  # Display standard output

Make sure to either:

    Run this Python script from the same directory where the .tib file is located, or

    Provide the full path to the .tib file in the tib_file variable.
