#!/bin/bash
#SBATCH --output=log/sbatch/smk-%j.out
#SBATCH --time=50-00:00:00
#SBATCH --mail-user=rabraham@bcgsc.ca
#SBATCH --qos=prod

cd /projects/HostSeq/hostseq_smk_hla && \
#python /projects/HostSeq/hostseq_smk_hla/configs/make_samples_list.py && \
snakemake --profile configs/smk_profiles/cookie_numbers/ all_targets --cores 8
#snakemake --delete-temp-output --cores 8
#report_and_diagnostic
#snakemake -R $(snakemake --list-code-changes) --touch --cores 1
