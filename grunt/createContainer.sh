#!/bin/bash

##### Create Container Grunt Development
docker create --name grunt-development -v $(pwd):/project grunt grunt development

# To run Grunt development just start container (-i interactive mode)
docker start -i grunt-development