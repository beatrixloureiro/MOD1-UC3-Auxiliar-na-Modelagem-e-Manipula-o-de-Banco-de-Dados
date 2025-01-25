# MOD1-UC3 - Auxiliar na Modelagem e Manipulação de Banco de Dados

Este repositório contém as atividades realizadas no módulo **MOD1-UC3: Auxiliar na Modelagem e Manipulação de Banco de Dados**. As atividades incluem a modelagem de banco de dados, criação de diagramas ER, implementação de scripts SQL e desenvolvimento de consultas avançadas para um sistema hospitalar.

---

## 📚 Atividades Incluídas

### **Atividade 1 - Modelagem Inicial**
Criação de um diagrama entidade-relacionamento (DER) para o banco de dados do sistema hospitalar, com base nos requisitos fornecidos.

#### **Principais Entidades e Relacionamentos:**
- **Médicos**: Dados pessoais e especialidades.
- **Pacientes**: Informações pessoais e convênios.
- **Convênios**: Nome, CNPJ e tempo de carência.
- **Consultas**: Registro de consultas, incluindo data, hora, médico responsável, paciente, especialidade, valor e convênio (se houver).
- **Receituário**: Informações de medicamentos, quantidades e instruções de uso.

#### **Ferramenta Utilizada**:
- **MySQL Workbench** para criação do DER.

---

### **Atividade 2 - Expansão do Banco de Dados**
Expansão do modelo ER para incluir funcionalidades de internação de pacientes e criação das tabelas no banco de dados.

#### **Novas Entidades e Relacionamentos:**
- **Internações**: Registro de internações, incluindo datas de entrada, previsão e alta, procedimentos realizados.
- **Quartos**: Numeração, tipos e valores diários.
- **Tipos de Quartos**: Apartamentos, quartos duplos e enfermarias.
- **Enfermeiros**: Dados pessoais e registro no conselho de enfermagem (CRE).

#### **Entregas:**
1. Diagrama ER atualizado.
2. Script SQL para criação de todas as tabelas e relacionamentos.

---

### **Atividade 3 - Povoamento do Banco de Dados**
Criação de scripts SQL para inserir dados no banco, possibilitando testes e validações.

#### **Dados Povoadores:**
- **10 médicos** com especialidades variadas.
- **7 especialidades** (incluindo pediatria, clínica geral, gastroenterologia e dermatologia).
- **10 pacientes** com informações completas.
- **10 consultas** (alguns pacientes com mais de uma consulta).
- **4 convênios médicos** associados a pacientes e consultas.
- **3 tipos de quartos** (apartamento, duplo e enfermaria) com valores diários.
- **7 internações**, incluindo múltiplas internações para dois pacientes.
- **6 enfermeiros**, com pelo menos dois associados a cada internação.

#### **Alterações Realizadas:**
- Inclusão de uma coluna `em_atividade` na tabela **Médicos**.
- Atualização de datas de alta para internações específicas.
- Exclusão de convênios e consultas relacionadas.

---

### **Atividade 4 - Consultas SQL Avançadas**
Criação de consultas SQL para atender a requisitos específicos e gerar relatórios.

#### **Consultas Desenvolvidas:**
1. Dados e valor médio de consultas realizadas com e sem convênio em 2020.
2. Consultas de maior e menor valor (não realizadas com convênio).
3. Internações com alta posterior à data prevista.
4. Receituário completo da primeira consulta registrada.
5. Detalhamento das internações, incluindo cálculo do valor total.
6. Dados de internações em quartos do tipo "apartamento".
7. Consultas de pacientes menores de 18 anos em especialidades diferentes de pediatria.
8. Internações realizadas por médicos de gastroenterologia em enfermarias.
9. Médicos e o número de consultas realizadas.
10. Enfermeiros que participaram de mais de uma internação.

#### **Consulta Extra**:
Uma consulta personalizada para cruzar múltiplas tabelas, descrita no script.

---

## 🛠️ Ferramentas Utilizadas
- **MySQL Workbench**: Modelagem e geração de scripts SQL.
- **MySQL**: Execução e testes do banco de dados.
- **Linguagem SQL**: Criação e manipulação de dados.

---

## ✨ Sobre o Repositório
Este repositório foi criado como parte do aprendizado em modelagem e manipulação de banco de dados. Ele documenta todas as etapas, desde a análise inicial dos requisitos até consultas avançadas e alterações no banco.

**Responsável pelo desenvolvimento:** Ana Beatriz Loureiro  
