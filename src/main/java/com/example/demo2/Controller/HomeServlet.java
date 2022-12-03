package com.example.demo2.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/Home/*")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path){
            case "/Index":
                request.getRequestDispatcher("/views/user/Index.jsp").forward(request, response);
                break;
            case "/About":
                request.getRequestDispatcher("/views/user/About.jsp").forward(request, response);
                break;
            case "/Contact":
                request.getRequestDispatcher("/views/user/Contact.jsp").forward(request, response);
                break;
            case "/Blog":
                request.getRequestDispatcher("/views/user/Blog.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("/404.jsp").forward(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
