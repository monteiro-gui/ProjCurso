package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class MatriculaDao {
	
	Connection con;
	ResultSet rs;
	
	public void Salvar(Matricula mat) {
		try {		
			con = new Conexao().conectar();			
			String sql = "insert into matricula(idaluno,idcurso,data)values(?,?,?)";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, mat.getIdaluno());
			stmt.setInt(2, mat.getIdcurso());			
			Date dataSql = new Date(mat.getData().getTime());
			stmt.setDate(3, dataSql);
			stmt.executeUpdate();
			con.close();				
		}
		catch(Exception erro) {			
		}	
	}

	public ArrayList<Matriculados>listar()	{
		try {
		con = new Conexao().conectar();		
			String sql = "select a.nome,a.telefone,c.nome as curso,m.data from aluno a,curso c,matricula m where m.idaluno = a.idaluno and m.idcurso = c.idcurso";
			ArrayList<Matriculados> matriculados = new ArrayList<>();			
				PreparedStatement stmt = con.prepareStatement(sql);
				rs = stmt.executeQuery();
				while(rs.next()) {
					Matriculados mat = new Matriculados();
					mat.setNome(rs.getString("nome"));
					mat.setTelefone(rs.getString("telefone"));
					mat.setCurso(rs.getString("curso"));				
					Date datasql = rs.getDate("data");
					 mat.setData(datasql);
						matriculados.add(mat);
					}			
					return matriculados;
					
				}
				catch(Exception erro) {
					System.out.println(erro);
					return null;
				}
				
			}

}
