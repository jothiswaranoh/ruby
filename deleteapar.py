import csv
import pysolr

# Connect to Solr
solr = pysolr.Solr('http://localhost:8983/solr/mycollection', always_commit=True)
# x=10000000
# solr.delete(q='patent_number:{x}')
# solr.delete(q='*:*')
# solr.commit()

query = "acf4b025-bf3a-4047-9617-ef150fc5b9f9"

# Delete the document by its unique identifier
solr.delete(id=query)
solr.commit()
