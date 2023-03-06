configfile:"config.yaml"
accession= config["accession"]

rule all:
    input:
        expand("{accession}_reads/{accession}_1.fastq.gz", accession= config["accession"]),
        expand("{accession}_reads/{accession}_2.fastq.gz", accession= config["accession"])

rule download_from_accession:
  output:
       "{accession}_reads/{accession}_1.fastq.gz",
       "{accession}_reads/{accession}_2.fastq.gz"
  params:
    accession = "{accession}"
  conda:
    "download.yml"
  shell:
    'wget $(ffq --ftp {accession} | jq -r ".[] | .url")  -P {accession}_reads'
