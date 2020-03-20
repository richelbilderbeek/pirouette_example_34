#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex34
#SBATCH --output=example_34.log
#
rm -rf example_34
rm *.png
time Rscript example_34.R
zip -r pirouette_example_34.zip example_34 example_34.R scripts *.png

