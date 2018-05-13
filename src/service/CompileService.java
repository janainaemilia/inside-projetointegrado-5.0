package service;
import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;

import lexer.*; import parser.*;

public class CompileService {
	
	public ArrayList<Object> compilar(String codigo) throws IOException {
		Lexer lex = new Lexer(codigo);
		Parser parse = new Parser(lex);
		ArrayList<Object> feedback = parse.program();
		
		return feedback;
		
		
	}
}
