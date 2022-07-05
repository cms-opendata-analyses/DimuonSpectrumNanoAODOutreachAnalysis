# Analysis of the di-muon spectrum using data from the CMS detector

Analysis using reduced NanoAOD files created from CMS open data producing a high statistics di-muon spectrum

![](dimuonSpectrum.png)

## How to run this?

The analysis needs solely a ROOT installation (6.16 or greater). You can get the software easily using the CMS Open Data VM and CVMFS. Just run the following command in the terminal to source an appropriate software stack:

```bash
source /cvmfs/sft.cern.ch/lcg/views/LCG_95/x86_64-slc6-gcc8-opt/setup.sh
```

To download the files, you can either use `git` with the following command or download them directly via the web browser.

```bash
git clone git://github.com/cms-opendata-analyses/DimuonSpectrumNanoAODOutreachAnalysis -b v1.4
```

The analysis code itself is provided in Python and C++. The instructions to run the scripts is shown below:

**Python (notebook):**

The notebook can either be run locally or via [binder](https://mybinder.org/) in the browser. To run locally, use the following command.

```bash
jupyter notebook
```

To run via binder, you just have to click the following link and follow the instructions. You can ignore the two error messages.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/cms-opendata-analyses/DimuonSpectrumNanoAODOutreachAnalysis/v1.4)

**Python (interactive):**

Note the `-i` flag, which keeps the Python interpreter alive after the end of the script so that the interactive plot can still be explored.

```bash
python -i dimuonSpectrum.py
```

**C++ (interactive):**

```bash
root -l dimuonSpectrum.C
```

**C++ (compiled):**

Note that you have to select the compiler based on your system.

```bash
g++ -O3 -o dimuonSpectrum dimuonSpectrum.C $(root-config --cflags --libs)
./dimuonSpectrum
```
