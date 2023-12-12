package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class CursoDao {
	
	Connection con;
	ResultSet rs;
	
	
	
	public ArrayList<Curso>listar()	{
		try {
			con = new Conexao().conectar();		
			String sql = "select * from curso";
			ArrayList<Curso> cursos = new ArrayList<>();			
			PreparedStatement stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int idcurso = rs.getInt("idcurso");
				String nome = rs.getString("nome");
				int cargahoraria = rs.getInt("cargahoraria");
				String tipocurso = rs.getString("tipocurso");			
				
				cursos.add(new Curso(idcurso,nome,cargahoraria,tipocurso));
			}
			
			return cursos;
			
		}
		catch(Exception erro) {
			System.out.println(erro);
			return null;
		}
		
	}
	
	
	public void Excluir(Curso curso)	{
		try {
			con = new Conexao().conectar();		
			String sql = "delete from curso where idcurso = ?";					
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, curso.getIdcurso());
			stmt.executeUpdate();
				
		}
		catch(Exception erro) {
			System.out.println(erro);
			
		}
		
	}
	
	

}
