# Env variables 
set -e  # exit on error 
set -x  # echo commands to terminal

# Run cellranger count
cellranger count \
    --id ${ALIGN_ID} \
    --transcriptome ${REFERENCE_PATH} \
    --fastqs ${FASTQ_PATHS} \
    ${CELLRANGER_ARG_STRING}

# Create mkmolinfo results
cd ${OUTDIR}/outs  # mkmolinfo writes results to cwd
mkmolinfo ${OUTDIR}
