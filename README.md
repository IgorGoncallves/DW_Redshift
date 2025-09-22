# DW em AWS Redshift — IaC + Modelagem + Deploy

Cria (via IaC/Terraform) a infraestrutura na AWS, modela o problema de dados (modelos conceitual, lógico, físico e dimensional), provisiona Amazon Redshift, e sobe os artefatos para a nuvem. Inclui scripts SQL, exemplos de carga e um fluxo de trabalho reprodutível em Docker.

### Principais recursos

Infra como Código (Terraform): VPC, Subnets, Security Groups e Redshift.

### Modelagem completa do DW:

Conceitual: entidades e relacionamentos do domínio.

Lógico: normalização, chaves, integridade.

Dimensional: Star Schema com Fatos e Dimensões.

Físico: DDL otimizada para Redshift (sort/dist keys, encodings).

Scripts SQL para criar esquemas, tabelas, views e cargas iniciais.

Docker para padronizar ambiente de execução (psql, utilitários).

Carga de dados: COPY a partir de S3.

Guia de troubleshooting (rede/porta 5439, SG/NACL, túnel SSM/SSH).
