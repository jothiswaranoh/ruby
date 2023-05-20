import csv
import pysolr

# Connect to Solr
solr = pysolr.Solr('http://localhost:8983/solr/mycollection', always_commit=True)
solr.delete(q='*:*')
solr.commit()
