# Example of free energy calculation using the Locally Distributed Tension (LDT) collective variable

This data/instructions accompany the following manuscript:

**Title:** *Membrane mediated mechanical stimuli produces distinct active states in the AT1 receptor*  
**Authors:** Bharat Poudel, Rajitha Rajeswhar T., Juan Vanegas  
**Pre-print:** <https://www.researchsquare.com/article/rs-2106113/v1>

## Compiling and installing the PLUMED-patched version of GROMACS

The source code for GROMACS can be downloaded from <https://manual.gromacs.org/2019.6/download.html>. PLUMED can be downloaded from <https://www.plumed.org/download>. The particular version of PLUMED used for this study can be found in the following git repository: <https://github.com/vanegasj/plumed2>.

Installation instruction for compiling and installing PLUMED can be found here: <https://www.plumed.org/doc-v2.7/user-doc/html/_installation.html>. This page also contains instruction on how to patch GROMACS with PLUMED. Once the GROMACS code has been patched, you can proceed with the normal compilation and installation of GROMACS.

## Free energy of AT1R with S1I8 partial agonist

The folder S1I8 contains contains the necessary files to reproduce the well-tempered metadynamics free energy calculation shown in Fig. 6c of the manuscript. The file run_metad_sim.sh contains the GROMACS command to launch the WT-metadynamics run with the 8 walkers.
The folder S1I8/reweight contains the combined colvar files and plumed input files to perform the re-weighting and produce the 2D FES data. The script S1I8/reweight/calc_fes.sh will execute the combining procedure and perform the re-weighting using plumed.
