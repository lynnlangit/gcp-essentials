# DataPlex

Features shown below - components of a DataMesh using GCP services (featuring GCP DataPlex) shown below.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dataplex-features.png" width=600>

- 2 min video --> https://www.youtube.com/watch?v=bbFeAt7cw1g
- 45 min video --> https://www.youtube.com/watch?v=j2hU_vkiWa0

from the GCP docs *"You can use Dataplex to build a data mesh architecture. The GCP Dataplex service includes features, such as a lake, zones, and assets, to build a data mesh.
A data mesh is an organizational and technical approach that decentralizes data ownership among domain data owners. These owners provide the data as a product in a standard way and facilitate communication among different parts of the 
organization to distribute datasets across different locations."*

## Links to Get Started

- build --> https://cloud.google.com/dataplex/docs/build-a-data-mesh?hl=en_US
- guides --> https://cloud.google.com/dataplex/docs/guides
- whitepaper --> https://services.google.com/fh/files/misc/build-a-modern-distributed-datamesh-with-google-cloud-whitepaper.pdf
- best practices --> https://cloud.google.com/dataplex/docs/best-practices

Dataplex domains example shown below (from linked whitepaper above)

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dataplex-domains.png" width=900>

## DataPlex Features

 - Search DataMesh data (search across authorized data domains, use metadata in search parameters)  
 
 <img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dp-search-1.png" width=900>  
 
 - Filtered Search (filter search by common parameters, source, type, project, can include search across public BigQuery data too)  
 
  <img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dp-search2.png" width=900>  
 
 - Data Lake Management (create and manage Data Lakes with raw or curated data zones)  
 
  <img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dp-dl-manage-1.png" width=900>  
  
 - Data Lake Security (secure data lake resources by assigning data or asset permissions)  
 
  <img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dp-dl-secure-2.png" width=900>  
  
 - Data Lake Processing (process data lake data using defined tasks)  
 
 <img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dp-dl-process-3.png" width=900>  
 
 - Explore DataMesh data (explore datamesh data using SparkSQL or Jupyter notebooks, can create custom exploration environments too)  
 
  <img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/dp-dl-explore-5.png" width=900>

## Works with BigLake

See also the BigLake page in this section - [link](https://github.com/lynnlangit/gcp-essentials/blob/master/4_big%20data_and_genomics/4k_BigLake_%26_Dataplex/BigLake.md)

## Example / Genomics Domain

Shown below is an example architecture, including the compute portions for genomics

<img src="https://github.com/lynnlangit/gcp-for-bioinformatics/blob/master/images/batch-pipelines.png" width=1000>
