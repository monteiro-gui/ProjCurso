package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aluno;
import model.AlunoDao;



/**
 * Servlet implementation class AlunoController
 */
@WebServlet({"/AlunoController","/alunonovo","/relaluno","/bteditar"})

public class AlunoController extends HttpServlet {
	private static final long serialVersionUID = 1L;       
   
    public AlunoController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    Aluno alu = new Aluno();    
    AlunoDao dao = new AlunoDao();
    
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String action = request.getServletPath();
		
		if(action.equals("/alunonovo")) {
			Salvar(request,response);
		}	
		if(action.equals("/relaluno")) {
			Imprimir(request,response);
		}
		
		if(action.equals("/bteditar")) {
			Exibir(request,response);
		}
	
	}
	

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
protected void Salvar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	
	
	alu.setNome(request.getParameter("nome"));
	alu.setTelefone(request.getParameter("telefone"));
	alu.setEmail(request.getParameter("email"));
	alu.setDatanasc(request.getParameter("datanasc"));
	alu.setRg(request.getParameter("rg"));
	alu.setCpf(request.getParameter("cpf"));
	alu.setCep(request.getParameter("cep"));
	alu.setNumero(Integer.parseInt(request.getParameter("numero")));
	alu.setComplemento(request.getParameter("complemento"));
	
	dao.Salvar(alu);
	
	
	
	PrintWriter pw=response.getWriter();
	pw.println("Aluno Cadastrado!");
	
	/*
	pw.println("Código: "+alu.getIdaluno());
	pw.println("Nome: "+alu.getNome());
	pw.println("Telefone: "+alu.getTelefone());
	pw.println("Data Nascimento: "+alu.getDatanasc());
	pw.println("Rg: "+alu.getRg());
	pw.println("Cpf: "+alu.getCpf());
	pw.println("Cep: "+alu.getCep());
	pw.println("Número: "+alu.getNumero());
	pw.println("Complemento: "+alu.getComplemento());	*/
	
}


protected void Imprimir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	//CHAMAR O DAO
	
	ArrayList<Aluno> lista = dao.listar();
	request.setAttribute("alunos", lista);
	
	RequestDispatcher rd = request.getRequestDispatcher("RelAluno.jsp");
	rd.forward(request, response);	
	
}

protected void Exibir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	alu.setIdaluno(Integer.parseInt(request.getParameter("idaluno")));
	dao.Consulta(alu);
	request.setAttribute("idaluno", alu.getIdaluno());
	request.setAttribute("nome", alu.getNome());
	request.setAttribute("telefone", alu.getTelefone());
	request.setAttribute("email", alu.getEmail());
	request.setAttribute("datanasc", alu.getDatanasc());
	request.setAttribute("rg", alu.getRg());
	request.setAttribute("cpf", alu.getCpf());
	request.setAttribute("cep", alu.getCep());
	request.setAttribute("numero", alu.getNumero());
	request.setAttribute("complemento", alu.getComplemento());
	
	
	RequestDispatcher rd = request.getRequestDispatcher("EditaAluno.jsp");
	rd.forward(request, response);	
	
}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
