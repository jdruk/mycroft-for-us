# mycroft-for-us
[![Maintainability](https://api.codeclimate.com/v1/badges/e9e2b9f54408583c4cdc/maintainability)](https://codeclimate.com/github/jdruk/mycroft-for-us/maintainability)
<a href="https://codeclimate.com/github/jdruk/mycroft-for-us/test_coverage"><img src="https://api.codeclimate.com/v1/badges/e9e2b9f54408583c4cdc/test_coverage" /></a>


Sistema para gerenciamento de ISP baseado em mikrotik versão 6.+ .

Suporte a:
* Hotspot
* PppoE
* Dhcp (option 82) AAA
* Múltiplos concentradores
* Vouchers

Caraterísticas:
* Baseado em container
* Suporte a logs em Redis
* Base de dados padrão - Postgresql
* Totalmente responsivo

#### Postgresql
`docker run --name postradius -d -p 5432:5432 -e POSTGRES_PASSWORD=postradius postgres:9.4.19`

##### Entre no Bash do container
run exec -it postradius bash

##### UML
![Diagrama de classe](UML.png)
(Formato DIA UML)
arquivo:	uml_diagram_class.dia
