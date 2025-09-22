### Criando a imagem Docker.

docker build -t dw-redshift-terraform:dw .


### Criando o container.

docker run -dit --name dw-redshift -v C:\Users\empig\OneDrive\Documentos\Dw_Redshift\IaC:/iac dw-redshift-terraform:dw /bin/bash

### Conecte a Aws

aws configure

### Execute a Infraestutura

terraform apply<br>
yes

