package org.example.rander;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class App 
{
    public static void main( String[] args ) throws IOException {

        String nomeArquivo = "teste.pas";
        String content = new String(Files.readAllBytes(Paths.get(nomeArquivo)));
        Compilador compilador = new Compilador(content);

        compilador.compile();



    }
}
