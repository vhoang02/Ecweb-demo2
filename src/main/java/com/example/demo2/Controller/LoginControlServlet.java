package com.example.demo2.Controller;

import com.example.demo2.Entity.User;
import com.example.demo2.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginControlServlet", value = "/login")
public class LoginControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        DAO dao = new DAO();
        User a = dao.login(username, password);
        if (a == null){
            request.setAttribute("mess", "Wrong user or password");
            request.getRequestDispatcher("/Login.jsp").forward(request, response);
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            response.sendRedirect("/Home/Index");
        }
    }
}
