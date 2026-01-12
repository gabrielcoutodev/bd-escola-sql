-- Consultar o Histórico Escolar de um aluno, totalizando a carga horária cumprida até o momento (das disciplinas aprovadas).
SELECT 
    A.AlunoNome,
    D.NomeDisciplina,
    D.CargaHorariaSemanal,
    H.NotaFinal,
    H.Frequencia,
    CASE 
        WHEN H.Situacao = 'Aprovado' THEN D.CargaHorariaSemanal
        ELSE 0
    END AS CargaHorariaCumprida
FROM 
    HISTORICO H
JOIN 
    ALUNOS A ON H.AlunoID = A.AlunoID
JOIN 
    DISCIPLINA D ON H.DisciplinaID = D.DisciplinaID AND H.CursoID = D.CursoID
WHERE 
    A.AlunoID = 'E00031'  
    AND H.Situacao = 'Aprovado'
ORDER BY 
    D.NomeDisciplina;

--Listar professores sem turma
SELECT 
    P.ProfNome
FROM 
    PROFS P
LEFT JOIN 
    TURMA_PROFESSOR TP ON P.ProfID = TP.ProfID
WHERE 
    TP.TurmaID IS NULL;

--Listar professores sem disciplina
SELECT 
    P.ProfNome
FROM 
    PROFS P
LEFT JOIN 
    DISCIPLINA_PROFESSOR DP ON P.ProfID = DP.ProfID
WHERE 
    DP.DisciplinaID IS NULL;


--Listar disciplinas que possuem professores que não estão associados a ela
SELECT 
    D.DisciplinaID, 
    D.NomeDisciplina, 
    P.ProfID, 
    P.ProfNome
FROM 
    TURMA T
JOIN 
    TURMA_PROFESSOR TP ON T.TurmaID = TP.TurmaID
JOIN 
    PROFS P ON TP.ProfID = P.ProfID
JOIN 
    DISCIPLINA D ON T.DisciplinaID = D.DisciplinaID AND T.CursoID = D.CursoID
WHERE 
    P.ProfID NOT IN (
        SELECT ProfID 
        FROM DISCIPLINA_PROFESSOR DP 
        WHERE DP.DisciplinaID = D.DisciplinaID
    );



--Quantos alunos moram em Nova Lima
SELECT 
    COUNT(*) AS TotalAlunosNovaLima
FROM 
    ALUNOS
WHERE 
    AlunoMun = 'Nova Lima';


--Quantos professores moram em Lagoa Santa
SELECT 
    COUNT(*) AS TotalProfessoresLagoaSanta
FROM 
    PROFS
WHERE 
    ProfMun = 'Lagoa Santa';


--Alunos que moram no mesmo bairro de outros alunos
SELECT 
    A1.AlunoNome AS Aluno1,
    A2.AlunoNome AS Aluno2,
    A1.AlunoBairro
FROM 
    ALUNOS A1
JOIN 
    ALUNOS A2 ON A1.AlunoID != A2.AlunoID
WHERE 
    A1.AlunoBairro = A2.AlunoBairro
ORDER BY 
    A1.AlunoBairro;


--Professores que moram no mesmo bairro de alunos
SELECT 
    P.ProfNome,
    A.AlunoNome,
    A.AlunoBairro
FROM 
    PROFS P
JOIN 
    ALUNOS A ON P.ProfBairro = A.AlunoBairro
ORDER BY 
    A.AlunoBairro;


--Se há alunos que moram na mesma cidade de um professor de uma turma existente
SELECT 
    A.AlunoNome AS NomeAluno,
    P.ProfNome AS NomeProfessor,
    A.AlunoMun AS CidadeAluno,
    P.ProfMun AS CidadeProfessor,
    T.TurmaID AS Turma
FROM 
    TURMA T
JOIN 
    TURMA_PROFESSOR TP ON T.TurmaID = TP.TurmaID
JOIN 
    PROFS P ON TP.ProfID = P.ProfID
JOIN 
    TURMA_ALUNO TA ON T.TurmaID = TA.TurmaID
JOIN 
    ALUNOS A ON TA.AlunoID = A.AlunoID
WHERE 
    A.AlunoMun = P.ProfMun;

--Uma trigger que não permita a inclusão de uma turma cujo professor não esteja cadastrado na disciplina
CREATE TRIGGER trg_VerificarProfessorDisciplina
ON TURMA_PROFESSOR
INSTEAD OF INSERT
AS
BEGIN
    -- Verificar se o professor está cadastrado na disciplina associada à turma
    IF EXISTS (
        SELECT 1
        FROM INSERTED I
        JOIN TURMA T ON I.TurmaID = T.TurmaID
        LEFT JOIN DISCIPLINA_PROFESSOR DP 
            ON DP.ProfID = I.ProfID 
            AND DP.DisciplinaID = T.DisciplinaID
            AND DP.CursoID = T.CursoID
        WHERE DP.ProfID IS NULL 
    )
    BEGIN
        RAISERROR('O professor não está cadastrado na disciplina desta turma.', 16, 1);
        ROLLBACK TRANSACTION;
    END
    ELSE
    BEGIN
        -- Se o professor estiver correto, insere os dados normalmente
        INSERT INTO TURMA_PROFESSOR (TurmaID, ProfID)
        SELECT TurmaID, ProfID
        FROM INSERTED;
    END
END;

--Uma Stored Procedure que faça a “finalização” de uma turma, ou seja, para todos os alunos calcule a nota final como sendo a soma das 4 notas parciais
CREATE PROCEDURE FinalizarTurma
    @TurmaID CHAR(6) 
AS
BEGIN
    SET NOCOUNT ON;

  
    UPDATE HISTORICO
    SET 
        NotaFinal = TA.Nota1 + TA.Nota2 + TA.Nota3 + TA.Nota4, 
        Frequencia = TA.Presenca, 
        Situacao = CASE 
            WHEN TA.Presenca >= 75 THEN 'Aprovado'
            ELSE 'Reprovado'
        END
    FROM 
        TURMA_ALUNO TA
    JOIN 
        TURMA T ON TA.TurmaID = T.TurmaID
    JOIN 
        HISTORICO H ON TA.AlunoID = H.AlunoID AND T.DisciplinaID = H.DisciplinaID
    WHERE 
        TA.TurmaID = @TurmaID; 
END;

--Teste Procedure
EXEC FinalizarTurma @TurmaID = 'T001';


