import pysolr

# Connect to Solr
solr = pysolr.Solr('http://localhost:8983/solr/mycollection', always_commit=True)

# Define the data to be inserted
# data = [
#     {'patents.patent_number': '1', 'patents.patent_date': "2018-06-19T00:00:00Z", 'patents.patent_title': 'This is the content of document 1.'},
#     {"patents.patent_number":"100900","patents.patent_date":"2018-06-19","patents.patent_title":"testing"}
# ]

# Add the data to Solr
solr.add([test.csv])

# Commit the changes (optional)
solr.commit()

print('Data inserted successfully.')
