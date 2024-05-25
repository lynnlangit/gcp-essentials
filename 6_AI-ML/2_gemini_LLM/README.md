# GenAI - Google Gemini and other models

The Google Cloud Vertex AI conceptual model for Generative AI workflow is shown below (image from Google documentation at [link](https://cloud.google.com/vertex-ai/generative-ai/docs/learn/overview).)

<img src="https://cloud.google.com/static/vertex-ai/generative-ai/docs/images/generative-ai-workflow.png" width=900>

Vertex AI includes a model garden with a large number of models which are categorized as foundational, fine-tunable or task specific.  These include models built by Google as well as many other industry and open source models. Shown below is screenshot of some of the the currently available models and associated services in the VertexAI Model Garden.

<img src="https://github.com/lynnlangit/gcp-essentials/blob/master/6_AI-ML/images/model-garden.png" width=900>

## What is Gemini LLM?

Google Gemini is a [large language model](https://github.com/lynnlangit/gcp-essentials/blob/master/6_AI-ML/2_gemini_LLM/about-llms.md) that can be used for a variety of tasks, including text generation, text classification, text summarization, text translation, text-to-speech, speech-to-text, image captioning, image classification, image generation, image-to-text, video captioning, video classification, video generation, video-to-text, and multimodal tasks.  

### About Google Gemini Models

Google Gemini is available in three versions: Nano, Pro or Ultra. Nano is the smallest version of Gemini, and is designed for use on mobile devices. Pro is the most powerful version of Gemini, and is designed for use on desktop computers. Ultra is the most powerful version of Gemini, and is designed for use on servers.    Gemini has two editions 1.0 and 1.5.  
- [Gemini 1.5](https://blog.google/technology/ai/google-gemini-next-generation-model-february-2024/) is currently in public preview - among other key features is its ability to accept **~1 MILLION input tokens**.
- [Gemini model lifecycle information](https://cloud.google.com/vertex-ai/generative-ai/docs/learn/model-versioning#stable-versions-available) is summarized in this page
- [Google Gemma](https://cloud.google.com/blog/products/ai-machine-learning/gemma-model-available-in-vertex-ai-and-via-gke/) is a family of lightweight, state-of-the art *open* models built from the same research and technology that we used to create the Gemini models.
  
NOTE: Gemini Pro and Gemini Ultra are each available in two types: Pro or Pro Vision or Ultra or Ultra Vision.  The 'Vision' versions are **multimodal**, allowing for text, image or video input. 

----

## Example Notebooks and Guidance

Google has created tools and also published a number of resources to get you started working with Gemini.  I've linked highlights below.  
  
### Tools / IDEs / Envs

- Google AI Studio IDE --> https://aistudio.google.com/app/prompts/new_freeform
- Google AI Studio quickstart --> https://ai.google.dev/tutorials/ai-studio_quickstart
- Google's setup instuctions for Gemini on GCP --> https://github.com/GoogleCloudPlatform/generative-ai/tree/main/setup-env

### Prompt Guidance from Google

- Prompt guidance --> https://ai.google.dev/docs/prompt_best_practices
- System Instructions in prompts --> https://ai.google.dev/docs/system_instructions
- Multi-modal prompt guidance --> https://ai.google.dev/docs/multimodal_concepts

### Starter Example Jupyter Notebook for Google Gemini LLM

The following Jupyter Notebook is an example of how to use Google Gemini LLM for text generation.  It uses the Pro version of Gemini, and shows how to call the API using Python.  It also shows how to use the API to generate text from a prompt.  The notebook can be run in Google Colab, or on a local machine with Python 3 installed.  The notebook can be found here: [Google Gemini LLM Example Notebook](https://github.com/GoogleCloudPlatform/generative-ai/blob/main/gemini/getting-started/intro_gemini_python.ipynb)

### More Examples from Google (Notebooks and Applications)
- :tv: Video "How to build Multimodal Retrieval-Augmented Generation (RAG) with Gemini" --> [link](https://www.youtube.com/watch?v=LF7I6raAIL4) and [link to notebook](https://github.com/GoogleCloudPlatform/generative-ai/blob/main/gemini/use-cases/retrieval-augmented-generation/rag_qna_langchain_bigquery_vector_search.ipynb)
- :books: Vertex AI GenAI example notebooks explained and linked --> [link](https://cloud.google.com/vertex-ai/docs/generative-ai/tutorials)
- :octocat: Example notebooks on GitHub --> [link](https://github.com/GoogleCloudPlatform/generative-ai/tree/main/gemini)
- 📓 Jumpstart Document Summary Application --> [link](https://cloud.google.com/architecture/ai-ml/generative-ai-document-summarization)
- :octocat: Gemini Cookbook (notebook examples) --> [link](https://github.com/google-gemini/gemini-api-cookbook)
- 📓 📓 📓 MANY Model evaluation notebooks --> [link](https://cloud.google.com/vertex-ai/generative-ai/docs/models/evaluation-examples)
- Source code for [GKE demo on Github](https://github.com/GoogleCloudPlatform/microservices-demo) - end-to-end application with 11 microservices, includes use of LLM Google Gemini

### Learn More

- Google's big list: `Learn More About GenAI` --> [link](https://github.com/GoogleCloudPlatform/generative-ai/blob/main/RESOURCES.md)
- Google's Architecture Center (JumpStarts for GenAI - deployable patterns) --> [links](https://cloud.google.com/architecture/ai-ml#explore_generative_ai)
- Article: `GenAI Apps w/VertexAI Models and Langchain` --> [link](https://cloud.google.com/blog/products/ai-machine-learning/generative-ai-applications-with-vertex-ai-palm-2-models-and-langchain)
- Article: `Generate Text Embeddings with BigQuery` --> [link](https://cloud.google.com/blog/products/data-analytics/introducing-bigquery-text-embeddings)
- Example code: `ChromaDB w/ Gemini` --> [link](https://github.com/chroma-core/chroma/tree/main/examples/gemini)
- Article: `Exploring the API of Gemini` --> [link](https://thenewstack.io/exploring-the-api-of-googles-gemini-language-model/)
- Big link list: `Awesome Gemini for Google Cloud` --> [link](https://github.com/rominirani/awesome-gemini-for-google-cloud)



