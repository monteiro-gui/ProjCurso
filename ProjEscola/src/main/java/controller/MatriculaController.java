package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aluno;
import model.AlunoDao;
import model.Curso;
import model.CursoDao;
import model.Matricula;

/**
 * Servlet implementation class MatriculaController
 */
@WebServlet({"/MatriculaController","/cadmatricula","/matricular"})
public class MatriculaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MatriculaController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    Aluno al = new Aluno();
    Curso curso = new Curso();
    AlunoDao daoalu = new AlunoDao();
    CursoDao daocurso = new CursoDao();
    Matricula matr = new Matricula();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String action = request.getServletPath();
		
		if(action.equals("/cadmatricula")) {
			CarregarDados(request,response);
		}
		
		if(action.equals("/matricular")) {
			Salvar(request,response);
		}
	}
	
	protected void CarregarDados(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<Aluno> lista = daoalu.listar();
		request.setAttribute("alunos", lista);
		
		ArrayList<Curso> listac = daocurso.listar();
		request.setAttribute("cursos", listac);
		
		RequestDispatcher rd = request.getRequestDispatcher("CadMatricula2.jsp");
		rd.forward(request, response); 

	}
	
	protected void Salvar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		matr.setIdaluno(Integer.parseInt(request.getParameter("aluno")));
		matr.setIdcurso(Integer.parseInt(request.getParameter("curso")));
		String datamatr = request.getParameter("data");
		SimpleDateFormat modelo = new SimpleDateFormat("yyyy-MM-dd");
		        
		try {
		           Date data = modelo.parse(datamatr);
		           matr.setData(data);
		           //System.out.print(matr.getData());
		        } catch (ParseException e) {
		            System.out.println( e.getMessage());
		        }          
		        daomatr.Salvar(matr);       
		        response.sendRedirect("indexadm.jsp");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
