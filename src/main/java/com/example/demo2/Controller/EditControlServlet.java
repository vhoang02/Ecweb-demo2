package com.example.demo2.Controller;

import com.example.demo2.Entity.User;
import com.example.demo2.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "EditControlServlet", value = "/edit")
public class EditControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String tinyDes = request.getParameter("tinyDes");
        String fullDes = request.getParameter("fullDes");
        String category = request.getParameter("category");
        String quantity = request.getParameter("quantity");
        String image = request.getParameter("image");
        DAO dao = new DAO();
        dao.editProduct(id, name,  price,  tinyDes,  fullDes,  category,  quantity, image);
        response.sendRedirect("/Manager");
    }
}
