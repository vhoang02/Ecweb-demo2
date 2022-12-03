package com.example.demo2.Controller;

import com.example.demo2.Entity.User;
import com.example.demo2.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddControlServlet", value = "/add")
public class AddControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String tinyDes = request.getParameter("tinyDes");
        String fullDes = request.getParameter("fullDes");
        String category = request.getParameter("category");
        String quantity = request.getParameter("quantity");
        String image  = request.getParameter("image");
        HttpSession session = request.getSession();
        User a = (User) session.getAttribute("acc");

        DAO dao = new DAO();
        dao.insertProduct(name, price, tinyDes, fullDes, category, quantity, image);
        response.sendRedirect("/Manager");
    }
}
