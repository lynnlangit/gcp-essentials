# GCP DataPlex for Data Mesh

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-data-mesh-example.png" width=800>

Use GCP Dataplex to build a data mesh architecture (image above from [GCP whitepaper](https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-data-mesh-example.png)).  Conceptual example shown above.
- GCP Dataplex includes services, such as a lakes, zones, and other assets which you use to build a data mesh.
- See the GCP Whitepaper in this directory for architecture and examples.

## What is a DataMesh?

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/7_sample_data/images/gcp-datamesh.png" width=900>

A data mesh is an organizational and technical approach that *decentralizes data ownership* among domain data owners. 
These owners provide the **data as a product** in a standard way and facilitate communication among different parts of the organization 
to distribute datasets across different locations.  Shown above is a mapping of GCP services and features to Data Mesh concepts. 
- How to build a DataMesh (Google Documentation) --> [link](https://cloud.google.com/dataplex/docs/build-a-data-mesh)
  - Build a DataMesh on GCP (GitHub open source example) --> [link](https://github.com/mansim07/datamesh-on-gcp)
- Create a Metastore on Dataproc (Google Documentation) --> [link](https://cloud.google.com/dataplex/docs/create-lake#metastore)
- Create a Dataplex Data Lake (Google Documentation) --> [link](https://cloud.google.com/dataplex/docs/create-lake#creating-a-lake)
  - Add raw or currated zones to a Data Lake --> [link](https://cloud.google.com/dataplex/docs/create-lake)
  
## Example DataMesh on GCP

From GCP architecture guidance documentation and shown below - [link](https://cloud.google.com/architecture/data-mesh)

<img src="https://cloud.google.com/static/architecture/images/data-mesh-architecture.svg" width=1000>

## Learn More

- Example architecture patterns at `datamesh-architecture.com` --> [link](https://github.com/datamesh-architecture/datamesh-architecture.com)
- List of links `awesome-datamesh` on GitHub --> [link](https://github.com/JacekMajchrzak/awesome-datamesh)
