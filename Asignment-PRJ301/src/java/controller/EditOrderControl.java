/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.OrderDAO;
import dal.OrderDetailDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Order;
import model.OrderDetail;
import model.Status;

/**
 *
 * @author long4
 */
public class EditOrderControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int oid = Integer.parseInt(request.getParameter("oid"));

        OrderDAO dao = new OrderDAO();
        Order od = dao.getOrderbyID(oid);
        List<Status> listS = dao.getStatus();

        OrderDetailDAO daod = new OrderDetailDAO();
        List<OrderDetail> listd = daod.getOrderDetail(oid);
        
        request.setAttribute("od", od);
        request.setAttribute("listd", listd);
        request.setAttribute("listS", listS);

        request.getRequestDispatcher("EditOrder.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int accountid = Integer.parseInt(request.getParameter("accountid"));
        int shippingid = Integer.parseInt(request.getParameter("shippingid"));
        double total = Double.parseDouble(request.getParameter("total"));
        String note = request.getParameter("note");
        String createdDate = request.getParameter("createdDate");
        int statusid = Integer.parseInt(request.getParameter("status"));
        
        OrderDAO dao = new OrderDAO();
        dao.editOrder(accountid, total, note, createdDate, shippingid, statusid, id);
        response.sendRedirect("order");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
