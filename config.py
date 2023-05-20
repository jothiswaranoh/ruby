import pysolr

# Create a connection to Solr
solr = pysolr.Solr('http://localhost:8983/solr/mycollection')

# Define the configuration options for the UniqFieldsUpdateProcessorFactory
configuration = {
    "class": "solr.UniqFieldsUpdateProcessorFactory",
    "fields": ["patent_number"]
}

# Set the configuration for the update request processor chain
solr.update_request_handler("unique-fields", configuration)

# Commit the changes to make them effective
solr.commit()