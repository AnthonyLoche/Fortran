PROGRAM calculadora;
    IMPLICIT NONE

    INTEGER::a,b
    CHARACTER(LEN=1)::op

    WRITE(*,*) 'Escreva o primeiro Número'
    READ(*,*) a

    WRITE(*,*) 'Escreva o segundo Número'
    READ(*,*) b

    WRITE(*,*) 'Escreva a operação'
    READ(*,*) op

    IF(op == '+') THEN
        WRITE(*,*) a+b
    ELSE IF(op == '-') THEN
        WRITE(*,*) a-b
    ELSE IF(op == '*') THEN
        WRITE(*,*) a*b
    ELSE IF(op == '/') THEN
        WRITE(*,*) a/b
    ELSE
        WRITE(*,*) 'Operação Inválida'
    END IF

END PROGRAM calculadora