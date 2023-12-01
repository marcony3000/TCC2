# TCC2
Repositório de git usado para armazenas os códigos do meu trabalho de conclusão de curso.

A migração de uma aplicação MVC web .NET Core com banco de dados SQLite para a nuvem utilizando containers Kubernetes, fargate com conversão de banco de dados SQLite para RDS MySQL. 

Aqui está um guia geral que você pode seguir:

1.	Avaliação da Aplicação Atual:
•	Analise a estrutura da aplicação MVC para entender suas dependências e componentes e implantação de variaveis de ambiente para integração.
•	Identifique as consultas SQL específicas do SQLite que precisarão ser adaptadas para serem compatíveis com o MySQL.
2.	Implantação do ambiente em docker compose,conforme arquivo docker-compose.yml, para a primeira análise.
3.	Configuração do Ambiente Kubernetes:
•	Instale e configure um cluster Kubernetes, se ainda não tiver um.
•	Usando um ambiente local, pode ser instalado o docker com minikube.
•	Certifique-se de que o ambiente esteja preparado para suportar containers e bancos de dados MySQL.
•   Inicialmente implantando com um banco de dados em container, para o teste inicial da migração após o doker compose
4.	Dockerização da Aplicação:
•	Crie um Dockerfile para empacotar sua aplicação web como um contêiner.
•	Certifique-se de incluir todas as dependências necessárias e configurar corretamente as variáveis de ambiente.
5.	Configuração do Banco de Dados RDS MySQL:
•	Inicialmente instalado em um container local am doker compose e kubernets, usando os recursos de rede local de doker compose e kubernets do minikube.
•	Crie um banco de dados MySQL no Amazon RDS, aplicado na VPC com rotas e liberações de portas para o origem e destino que serão utilizadas.
•	Configure usuários, permissões e anote as credenciais de acesso.
6.	Atualização do Código da Aplicação:
•	Atualize a configuração do banco de dados na sua aplicação para apontar para o novo banco de dados MySQL.
•	(Importante) - Modifique as consultas SQL que são específicas do SQLite para garantir compatibilidade com o MySQL.
7.	Testes Locais:
•	Teste a aplicação localmente para garantir que ela funcione corretamente com o novo banco de dados e configurações.
•	No ambiente local realizar a importação de estrutura do banco para o container.
•	Teste de aplicação para ver se a integração de rede pode ser executada com comando acessando a plicação via navegador.
8.	Migração de Dados:
•	Migrate os dados existentes do SQLite para o MySQL. Isso pode envolver a conversão de esquemas, ajustes nas consultas e a transferência real dos dados.
9.	Configuração do Kubernetes Manifest:
•	Criação manifestos Kubernetes (YAML) para implantar a aplicação e o banco de dados MySQL.
•	Localmente ou no banco de dados usando no container especifique os volumes persistentes, serviços, configurações de ambiente, etc.
•	Observação: para o Banco no RDS deve acessar o banco via gerenciador e realizar a importação dos dados já que a persistencia dos dados será no volume utilizado
10.	Implantação no Kubernetes:
•	Implante a aplicação no cluster Kubernetes usando os manifestos criados.
•	Manifestos Kubernets:
	app-svc.yaml
	database-svc.yaml (se for usar o banco em container)
	phpmyadmin-svc.yaml
•	Monitore logs e métricas para garantir que tudo está funcionando conforme o esperado.
11.	Ajustes de Rede e Segurança:
•	Configure corretamente as políticas de rede para garantir a comunicação adequada entre os serviços.
•	Certifique-se de que a segurança esteja configurada corretamente para proteger seus dados sensíveis.
12.	Backup e Recuperação:
•	Configure políticas de backup para o banco de dados RDS MySQL para garantir a recuperação de dados em caso de falhas.
13.	Testes de Desempenho:
•	Realize testes de desempenho para garantir que a aplicação mantenha um desempenho aceitável com o novo banco de dados e a infraestrutura na nuvem.
14.	Monitoramento Contínuo:
•	Implemente ferramentas de monitoramento contínuo para garantir a saúde da aplicação e do banco de dados.
