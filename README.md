# BCDaula03
|Tabela|Campo|Tipo de Dado|Chave | Restricao|Descricao|
|-|-|-|-|-|-|
|Pacientes|id_paciente|INT|PK (AUTO_INCREMENT)|Identificador do paciente|
|Pacientes|nome|VARCHAR(100)|NAO NULO|Nome completo do paciente|
|Pacientes|cpf|VARCHAR(11)|NAO NULO|CPF para faturamento e registro|
|Pacientes|data_nascimento|DATE|NAO NULO|Data de nascimento para calcular de idade|
|Pacientes|genero|VARCHAR(15)|OPCIONAL|Genero do paciente (Ex: Masculino Feminino Outro)|
|Pacientes|telefone|VARCHAR(15)|NAO NULO|Numero de contato telefonico principal
|Pacientes|email|VARCHAR(100)|OPCIONAL|Endereco eletronico para notificacoes de consultas|
|Medicos|id_medico|INT|PK (AUTO_INCREMENT)||Identificador unico do medico|
|Medicos|nome|VARCHAR(100)|NAO NULO|Nome completo do profissional de saude|
|Medicos|crm|VARCHAR(20)|NAO NULO|Numero do Conselho Regional de Medicina|
|Medicos|crm_uf|VARCHAR(2)|NAO NULO|Unidade Federativa do CRM (Ex: SP RJ)|
|Medicos|especialidade|VARCHAR(50)|NAO NULOArea de atuacao principal (Ex: Cardiologia Pediatria)|
|Medicos|telefone|VARCHAR(15)|NAO NULO|Telefone de contato do medico|
|Medicos|email|VARCHAR(100)|OPCIONAL|E-mail institucional ou pessoal|
|Medicos|status|VARCHAR(15)|'Ativo'|Estado cadastral do medico (Ativo | Inativo | Licenca)|
|Consultas|id_consulta|INT|PK (AUTO_INCREMENT)|Identificador unico de cada agendamento|
|Consultas|id_paciente|INT|FK (Pacientes)|ID do paciente associado por consulta|
|Consultas|id_medico|INT|FK (Medicos)|ID do medico associado a consulta (Chave Estrangeira)|
|Consultas|status_consulta|VARCHAR(20)|Situacao do agendamento (Agendada Confirmada Cancelada Realizada)|
|Consultas|valor|DECIMAL(102)|NAO NULO|Preco ou valor para a consulta|
|Consultas|motivo|TEXT|OPCIONAL|Breve descricao dos sintomas ou motivação|
