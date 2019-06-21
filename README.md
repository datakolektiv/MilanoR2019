# MilanoR2019
MilanoR Meetup, June 25, 2019.

![Graph](/img/dk_graph.png)

The Rmarkdown notebooks in this repository accompany the MilanoR Meetup, 25 June 2019:

*Information Retrieval: 
Semantic Web Technologies and Wikidata from R*

Goran S. Milovanović, Phd
*Wikimedia Deutschland, Data Scientist for Wikidata*
*DataKolektiv, Belgrade*

The {newsrivr} package to interface the NEWSRIVER API from R, developed by Michael John Page, is also introduced in this Meetup.

In essence, these notebooks present an educational material: 

- The notebook **A. Wikidata From R** summarizes several methods to access Wikidata (and Wikipedia content) from R and provides a very light introduction to SPARQL;
- Notebooks **00** - **08** present a workflow where Wikidata is accessed from R to perform several typical tasks in Information Retrieval.

**Note.** The LDA trainings with {text2vec} presented in this notebooks are pretty intensive. An i7 quad-core machine with 32Gb of RAM was barealy capable to carry them out (often relying on its 16Gb SWAP on SSD). Users are advised to check their configurations or downscale the term-document frequency matrices in any attempt to reproduce the results.
