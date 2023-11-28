package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class AlunoDao {
	
	Connection con;
	ResultSet rs;
	
	
	public AlunoDao() {
		
		con = new Conexao().conectar();
	}
	
	public void Salvar(Aluno alu) {
		try {
			String sql = "insert into aluno(nome,telefone,email,cpf,rg,datanasc,cep,numero,complemento) values(?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, alu.getNome());
			stmt.setString(2, alu.getTelefone());
			stmt.setString(3, alu.getEmail());
			stmt.setString(4, alu.getCpf());
			stmt.setString(5, alu.getRg());
			stmt.setString(6, alu.getDatanasc());
			stmt.setString(7, alu.getCep());
			stmt.setInt(8, alu.getNumero());
			stmt.setString(9, alu.getComplemento());
			stmt.executeUpdate();
			con.close();
		}
		catch(Exception erro) {
			
		}
	}
	
	public ArrayList<Aluno>listar() {
		try {
			con = new Conexao().conectar();
			
			ArrayList<Aluno> alunos = new ArrayList<>();
			String sql = "select * from aluno";
			
			PreparedStatement stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int idaluno = rs.getInt(1);
				String nome = rs.getString(2);
				String telefone = rs.getString(3);
				String email = rs.getString(4);
				String cpf = rs.getString(5);
				String rg = rs.getString(6);
				String cep = rs.getString(7);
				int numero = rs.getInt(8);
				String complemento = rs.getString(9);
				String datanasc = rs.getString(10);
				alunos.add(new Aluno(idaluno,nome,telefone,email,cpf,rg,cep,numero,complemento,datanasc));
			}
			
			return alunos;
		}
		
		catch(Exception erro) {
			System.out.println(erro);
			return null;
		}
	}
}
