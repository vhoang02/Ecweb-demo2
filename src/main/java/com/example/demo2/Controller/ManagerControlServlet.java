package com.example.demo2.Controller;

import com.example.demo2.Entity.Category;
import com.example.demo2.Entity.Product;
import com.example.demo2.Entity.User;
import com.example.demo2.dao.DAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ManagerControlServlet", value = "/Manager")
public class ManagerControlServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User a = (User) session.getAttribute("acc");
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        request.setAttribute("listPro", list);
        List<Category> listC = dao.getAllCategory();
        request.setAttribute("listCC", listC);
        request.getRequestDispatcher("/views/user/Manager.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
