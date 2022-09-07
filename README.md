# Bigg Ontology
This repository contains the ontology for the bigg project.
In this documentation it is described the workflow to participate in the development of the ontology file.

### Repository Structure

This repository is structured as follows 
```
BIGG
├── dictionaries                    # The folder containing the bigg ontology individuals
│   └── ...
├── Bigg.ttl                        # The main ontology File
├── tools                           # The folder containing the tools to work with the ontology
│   └── chowlk-library-complete.xml # The xml of the chowlk palete                
├── ontology-parts                  # The ttl of each extension of the core system
│   └── ...                 
├── UML                             # The drawIO charts of the ontology to edit
│   └── ...      
└── README.md                       # This documentation file
```

## Contributing to the ontology

### required tools:
1. [chowlk](https://chowlk.linkeddata.es/) webpage
2. [chowlk palete](chowlk-library-complete.xml) included in the tools directory
3. [diagrams.net](https://www.diagrams.net/) or any other draw.io editor

### Workflow
1. Edit the `UML` files of the ontology using a draw.io editor using the elements from the chowlk palete included in the repository.
2. Upload the drawio file in the chowlk inputbox to apply the transformation to ttl.
3. Download the new ttl and replace it in the `ontology-parts` directory
4. Open the ontology file `Bigg.ttl` and search for the section of each part. Copy the contents of the file in the location.


## Ontology information and extensions:

The ontology parts are loaded following this order.

The clases definition is not repeated in each UML to save space and make it easy to maintain. 

1. organization-building -> The organization and building classes and the relationship with users and other related classes.
2. building-device       -> The relationship between building and devices. Includes Timeseries and related classes.
3. building-element      -> The relationship between building and elements. Includes EnergyEfficiencyMeasures and related classes.
4. extensions-tariff     -> The tariff extension, includes CO2Emissions.
5. extensions-project    -> The renovation project, related to Savings and EnergyEfficiencyMeasures.
6. extensions-kpi        -> The kpi extension and the relationship with the model parts.
7. extensions-ifc        -> The ifc extension including Zone and Groups.
8. extensions-epc        -> The energy performance certificate extension.
