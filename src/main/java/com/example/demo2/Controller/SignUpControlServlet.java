package com.example.demo2.Controller;

import com.example.demo2.Entity.User;
import com.example.demo2.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "SignUpControlServlet", value = "/signup")
public class SignUpControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String re_pass = request.getParameter("repass");
        if(!pass.equals(re_pass)){
            response.sendRedirect("/Login.jsp");
        }
        //signup
        else{
            DAO dao = new DAO();
            User u = dao.checkAccountExist(user);
            if (u == null){
                //duoc signup
                dao.signup(user, pass);
                response.sendRedirect("/Home/Index");
            }else{
                //day ve login.jsp
                response.sendRedirect("/Login.jsp");
            }
        }
    }
}
