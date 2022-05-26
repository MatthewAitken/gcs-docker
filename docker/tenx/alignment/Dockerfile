FROM debian:bullseye-slim
LABEL maintainer="Marmot@AllenInstitute.onmicrosoft.com"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Create directory for tenx alignment executables
WORKDIR /tenx_alignment

# Install mkmolinfo 
COPY ./mkmolinfo ./mkmolinfo/mkmolinfo
ENV PATH="/tenx_alignment/mkmolinfo:${PATH}"

# Install cellranger
RUN curl -o cellranger-6.1.2.tar.gz "https://cf.10xgenomics.com/releases/cell-exp/cellranger-6.1.2.tar.gz?Expires=1653557308&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cHM6Ly9jZi4xMHhnZW5vbWljcy5jb20vcmVsZWFzZXMvY2VsbC1leHAvY2VsbHJhbmdlci02LjEuMi50YXIuZ3oiLCJDb25kaXRpb24iOnsiRGF0ZUxlc3NUaGFuIjp7IkFXUzpFcG9jaFRpbWUiOjE2NTM1NTczMDh9fX1dfQ__&Signature=EG416pbyDqFfIYjtF1~dOJPTGH7juztDaz~Vx4g88RMg9RbJn~76WbERIYZNQweKeVSMf8VEyMFmY1-arXdF8ZWGPzpLcSptno9CyjrrwT3rR17fOX87sv2tq1bhatJ-q6zRTtDtGfENeX2eN5Nyh~NJriZ2JUg0H6zrypMZGhaFgD5AnWYpwXtNXFgDqVVYfqoYGezBhJlGCkMnBTRckcJn7Syq3I7tnCd1mvBVge5AOoCl3iZPQuLKYD0KGbsygQajzmkKeoq9Qn6tuXNK0gY9QOguARR3m1dsXgVzcg4ckM16OFiIRgQkrPFiI3cEDE60j2mNcOa2fZ7Ypfwoag__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA" && \
    tar -xzvf cellranger-6.1.2.tar.gz && \
    rm cellranger-6.1.2.tar.gz
ENV PATH="/tenx_alignment/cellranger-6.1.2:${PATH}"

# Copy CMD.sh and add to path
COPY ./CMD.sh ./CMD.sh
