import csv
import pysolr

# Connect to Solr
solr = pysolr.Solr('http://localhost:8983/solr/mycollection', always_commit=True)
solr.delete(q='*:*')
solr.commit()

# Read data from CSV file
csv_file = 'convertcsv.csv'

with open(csv_file, 'r') as file:
    reader = csv.DictReader(file)
    data = [dict(row) for row in reader]

# Add the data to Solr

# for document in data:
#     try:
#         solr.add([document])
#     except pysolr.SolrError as e:
#         if "Document already exists" in str(e):
#             print(f"Duplicate document with id {document['patent_number']} found. Skipping insertion.")
#         else:
#             raise

# print('Data inserted successfully, avoiding duplicates.')

# for document in data:
# #     solr.add([document], overwrite=True)
# existing_ids = set(doc['patent_number'] for doc in solr.search('*:*', fl='patent_number'))

# # Filter out data that is already present
# filtered_data = [doc for doc in data if doc['patent_number'] not in existing_ids]

# # Add the filtered data to Solr
# solr.add(filtered_data)

solr.add(data)
solr.commit()

print('Data inserted successfully.')
