# fastqc
This repository contains the docker file used to run fastqc v0.11.9.

This dockerfile can be used in a DNANexus app or elsewhere but can be mounted with the command
`docker run -v /local/fastq/dir:/home/dnanexus seglh/fastqc:v0.11.9 --extract -k 7 -o output sample.fastq.gz`
or in a dnanexus app:
`docker run -v /home/dnanexus:/home/dnanexus seglh/fastqc:v0.11.9 --extract -k 7 -o output sample.fastq.gz`

In the above example the files will be output into a subfolder named output
Multiple files will be produced including:
* html report named with the fastq name
* folder named with the fastq name, containing a number of data and images from the report, including fastq_data.txt
* a zip archive containing the above folder.

### making and saving tar
`sudo docker build -t seglh-fastqc:v0.11.9 /folder/containing/dockerfile`
`sudo docker save seglh-fastqc:v0.11.9 > seglh-fastqc:v0.11.9.tar`