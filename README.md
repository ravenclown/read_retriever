# read_retriever
1 rule snakefile for retrieving read files from databases, add the corresponding accession number to config file.

usage : 
    snakemake --use-conda -j {threads}

supports:
    an SRA/EBI/DDJ accession
        (SRR, SRX, SRS or SRP)
        (ERR, ERX, ERS or ERP)
        (DRR, DRS, DRX or DRP)

    a GEO accession (GSE or GSM)

    an ENCODE accession (ENCSR, ENCSB or ENCSD)

    a Bioproject accession (CXR)

    a Biosample accession (SAMN)

    a DOI

