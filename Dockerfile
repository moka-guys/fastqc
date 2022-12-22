FROM ubuntu:22.04
FROM openjdk:8
LABEL author="Aled Jones" \
	description="FastQC v0.11.9"\
    maintainer="Synnovis Bioformatics team at Guy's Hospital"
RUN mkdir -p /home/dnanexus
WORKDIR /usr/local
ADD https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip .
RUN unzip fastqc_v0.11.9.zip && rm -f fastqc_v0.11.9.zip && chmod 755 FastQC/fastqc
WORKDIR /home/dnanexus
ENTRYPOINT [ "/usr/local/FastQC/fastqc" ]
