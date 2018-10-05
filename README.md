# mycroft-for-us
Docker's

#### Postgresql
`docker run --name postradius -d -p 5432:5432 -e POSTGRES_PASSWORD=postradius postgres:9.4.19`

#### FreeRadius
`docker run --name radius -p 1812-1813:1812-1813/udp freeradius/freeradius-server`

##### Entre no Bash do container
run exec -it < radius | postradius > bash

##### Diagrama de classe
(Formato DIA UML)
arquivo:	uml_diagram_class.dia