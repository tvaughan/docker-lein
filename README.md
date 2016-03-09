## Usage

Create a script called `lein` that looks like:

    #!/bin/sh
    docker-compose -f lein.yml run -p 5309:5309 lein lein "$@"

make it executable, and then run it.
