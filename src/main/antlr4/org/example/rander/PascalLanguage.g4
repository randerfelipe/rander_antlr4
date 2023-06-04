grammar PascalLanguage;

program  :  PROGRAM id  {System.out.println("Acao 1 a ser Implementada");} corpo PONTO {System.out.println("Acao 30 a ser Implementada");} ;

corpo : declara? BEGIN sentencas END;

declara:VAR dvar mais_dc;

cont_dc: dvar mais_dc;

dvar : variaveis DOIS_PONTOS tipo_var;

tipo_var : INTEGER;

variaveis :id {System.out.println("Acao 2 a ser Implementada");} mais_var?;

mais_var : VIRGULA variaveis;

sentencas : comando mais_sentencas;

mais_dc : PONTO_VIRGULA  cont_dc?;

mais_sentencas : PONTO_VIRGULA cont_sentencas?;

cont_sentencas:  sentencas;

var_read : id {System.out.println("Acao 5 a ser Implementada");} mais_var_read?;

mais_var_read : VIRGULA var_read;

var_write : id {System.out.println("Acao 6 a ser Implementada");} mais_var_write?;

mais_var_write : VIRGULA var_write;

comando : READ PARENTESES_ESQUERDO var_read PARENTESES_DIREITO |
          WRITE PARENTESES_ESQUERDO var_write PARENTESES_DIREITO |
          FOR id {System.out.println("Acao 25 a ser Implementada");} DOIS_PONTOS_IGUAL expressao {System.out.println("Acao 26 a ser Implementada");} TO {System.out.println("Acao 27 a ser Implementada");} expressao  {System.out.println("Acao 28 a ser Implementada");}
          DO BEGIN sentencas END {System.out.println("Acao 29 a ser Implementada");} |
          REPEAT {System.out.println("Acao 23 a ser Implementada");} sentencas UNTIL PARENTESES_ESQUERDO condicao PARENTESES_DIREITO {System.out.println("Acao 24 a ser Implementada");}  |
          WHILE {System.out.println("Acao 20 a ser Implementada");} PARENTESES_ESQUERDO condicao PARENTESES_DIREITO {System.out.println("Acao 21 a ser Implementada");}  DO BEGIN sentencas END {System.out.println("Acao 22 a ser Implementada");} |
          IF PARENTESES_ESQUERDO condicao PARENTESES_DIREITO {System.out.println("Acao 17 a ser Implementada");} THEN BEGIN sentencas END {System.out.println("Acao 18 a ser Implementada");}
          pfalsa? {System.out.println("Acao 19 a ser Implementada");} |
          id {System.out.println("Acao 13 a ser Implementada");} DOIS_PONTOS_IGUAL expressao {System.out.println("Acao 14 a ser Implementada");};

condicao: expressao relacao {System.out.println("Acao 17 a ser Implementada");} expressao {System.out.println("Acao 16 a ser Implementada");};
pfalsa : ELSE BEGIN  sentencas END;
relacao: IGUAL
      | DIFERENTE
      | MENOR
      | MENOR_IGUAL
      | MAIOR
      | MAIOR_IGUAL;
expressao : termo outros_termos?;
outros_termos: op_ad {System.out.println("Acao 9 a ser Implementada");} termo {System.out.println("Acao 10 a ser Implementada");} outros_termos?;
op_ad : ADICAO | SUBTRACAO;
termo : fator mais_fatores?;
mais_fatores : op_mul {System.out.println("Acao 11 a ser Implementada");} fator {System.out.println("Acao 12 a ser Implementada");} mais_fatores?;
op_mul : MULTIPLICACAO | DIVISAO;
fator : id {System.out.println("Acao 7 a ser Implementada");} | intnum {System.out.println("Acao 8 a ser Implementada");}  |
        PARENTESES_ESQUERDO expressao PARENTESES_DIREITO;

id : IDENTIFICADOR  {System.out.println("Acao 3 a ser Implementada");};
intnum :  DIGITO+ {System.out.println("Acao 4 a ser Implementada");};




READ : R E A D;
PROGRAM  : P R O G R A M;
FOR : F O R;
REPEAT : R E P E A T;
WHILE : W H I L E;
IF : I F;
TO : T O;
UNTIL : U N T I L;
DO : D O;
BEGIN : B E G I N;
ELSE : E L S E;
THEN : T H E N;
END : E N D;
VAR : V A R;
INTEGER : I N T E G E R;
WRITE : W R I T E;
VIRGULA : ',';
LETRA : [A-Za-z];
DIGITO : [0-9];
PONTO_VIRGULA : ';';
PARENTESES_DIREITO : ')';
PARENTESES_ESQUERDO : '(';
DOIS_PONTOS_IGUAL: ':=';
DOIS_PONTOS : ':';
IGUAL        	 : '=' ;
MAIOR        	 : '>' ;
MAIOR_IGUAL      : '>=' ;
MENOR        	 : '<' ;
MENOR_IGUAL      : '<=' ;
DIFERENTE        : '<>';
MULTIPLICACAO    : '*' ;
DIVISAO       	 : '/' ;
ADICAO       	 : '+' ;
SUBTRACAO        : '-' ;
PONTO  : '.';
IDENTIFICADOR    : [a-zA-Z] ([a-zA-Z] | [0-9])* ;
WS : [ \t\r\n]+ -> skip ;
COMMENT : '{' .*? '}' -> skip;
LCOMMENT : '//' .*? '\r'? '\n' -> skip ;
fragment A : [aA];
fragment B : [bB];
fragment C : [cC];
fragment D : [dD];
fragment E : [eE];
fragment F : [fF];
fragment G : [gG];
fragment H : [hH];
fragment I : [iI];
fragment J : [jJ];
fragment K : [kK];
fragment L : [lL];
fragment M : [mM];
fragment N : [nN];
fragment O : [oO];
fragment P : [pP];
fragment Q : [qQ];
fragment R : [rR];
fragment S : [sS];
fragment T : [tT];
fragment U : [uU];
fragment V : [vV];
fragment W : [wW];
fragment X : [xX];
fragment Y : [yY];
fragment Z : [zZ];