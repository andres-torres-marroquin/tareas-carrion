/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Patinetazz
 */
@WebServlet(name = "Servlet_Carrito", urlPatterns = {"/Servlet_Carrito"})
public class Servlet_Carrito extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String[] items = null;
        items = request.getParameterValues("items");
        String datos, nombre;
        double total=0.0;
        out.println("<html>"
                + "<head><title>Carrito de Compra </title>"
                + "<link type='text/css' rel='stylesheet' href='estilos.css'/></head>"
                + "<body>"
                + "<div id='encabezado'><img src='images/logo.jpg' /></div>"
                + "<div id='derecha'><img src='images/banner1.jpg'/><br/>"
                + "<img src='images/banner2.jpg' /></div>"

                +   "<hr/> <div id='izquierda'>");
       
        try { 
            nombre= request.getParameter("nombre");
            if (nombre.length()>0)
                out.println("<H4>Bienvenido : "+ nombre+"</H4><br>");
            if(items != null){
                out.println("<table style='border: activeborder solid 2px'>"
                        + "<tr><td><img src='images/title1_right.jpg' />"
                        + "<b>Su carrito de Compra</b> </td></tr>");
                for (int i=0;i<items.length; i++) {
                    datos = items[i];                   
                    String[] split = datos.split("/");
                    double cantidad = Double.parseDouble(split[1]);
                    total += cantidad ;
                    out.println("<tr><td>"+split[0]+"</td><td>"+cantidad+"</td></tr>");
                }
                out.println("<tr><td><b>Total </b></td><td><b> $"+total+"</b></td></tr>");
                out.println("<table>");
            }else{
                out.println("Su Carrito aún está vacío. <br>");
            }
            out.println("</div><a href='index.jsp'>Regresar</a>");
            out.println("</body></html>");
           
            
         
            
        } finally {            
            out.close();
        }
        out.println("</div>");
        out.println("</body></html>");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
