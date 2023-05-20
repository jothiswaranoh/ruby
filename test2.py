
import pysolr
import csv
# Connect to Solr
solr = pysolr.Solr('http://localhost:8983/solr/mycollection')

# Read data from CSV file
csv_file = 'convertcsv.csv'

with open(csv_file, 'r') as file:
    reader = csv.DictReader(file)
    data = [dict(row) for row in reader]

# Check if data already exists in Solr collection
existing_ids = set(doc['patent_number'][0] for doc in solr.search('*:*', fl='patent_number'))

# Filter out data that is already present
filtered_data = [doc for doc in data if doc['patent_number'][0] not in existing_ids]

# Add the filtered data to Solr
solr.add(filtered_data)

print('Data inserted successfully.')
