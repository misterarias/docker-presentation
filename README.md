Docker Presentation
===================

A Docker-based Reveal.js framework to easily start coding your own presentation.

Forked off https://github.com/jamtur01/docker-presentation, awesome work.

## Contents

* _base_ - Contains the base image, a slight modification off the original to separate building and launching
* _scripts_ - A script to build, tag and push the resultant library to my Docker Hub
* _example_ - Original example from [jamtur][1], with an added extra:
    * _metadata.conf_ - This file's entries are substituted into the main index.html, embedded in the base image


## How to use

1. Copy the _docker-compose.yml_ file to a new folder, plus the _example_ folder.
2. Edit contents of the file if you want to change:
    * name of folder
    * local port
3. Start adding content inside _example/slides_

[1]: https://github.com/jamtur01
