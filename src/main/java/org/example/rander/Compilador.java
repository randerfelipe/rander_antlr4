package org.example.rander;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.CommonTokenStream;
import java.util.List;
public class Compilador {
    private String codigoasercompilado;

    public Compilador(String codigoasercompilado) {
        this.codigoasercompilado = codigoasercompilado;
    }

    public void compile() {
        CharStream input = CharStreams.fromString(this.codigoasercompilado);
        PascalLanguageLexer lexer = new PascalLanguageLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        tokens.fill();
        List<Token> tokenList = tokens.getTokens();
        for (Token token : tokenList) {
            int tokenType = token.getType();
            String tokenName = lexer.getVocabulary().getSymbolicName(tokenType);
            String tokenText = token.getText();
            int line = token.getLine();
            int column = token.getCharPositionInLine();
            System.out.println("Token: " + tokenName + " | Texto: " + tokenText + " | Linha: " + line + " | Coluna: " + column);
        }
        PascalLanguageParser parser = new PascalLanguageParser(tokens);
        ParseTree tree = parser.program();
    }

}
