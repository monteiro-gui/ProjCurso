package model;

import java.util.Date;

public class Matricula {
	
	private int matricula;
	private int idcurso;
	private int idaluno;
	private Date data;
	public Matricula() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Matricula(int matricula, int idcurso, int idaluno, Date data) {
		super();
		this.matricula = matricula;
		this.idcurso = idcurso;
		this.idaluno = idaluno;
		this.data = data;
	}
	public int getMatricula() {
		return matricula;
	}
	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}
	public int getIdcurso() {
		return idcurso;
	}
	public void setIdcurso(int idcurso) {
		this.idcurso = idcurso;
	}
	public int getIdaluno() {
		return idaluno;
	}
	public void setIdaluno(int idaluno) {
		this.idaluno = idaluno;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	
	
	

}
