/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Place;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author S519459
 */
@WebServlet(name = "CategoryServlet", urlPatterns = {"/CategoryServlet"})
public class CategoryServlet extends HttpServlet {

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
     // System.out.println("MAMAMA");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
    String category = request.getParameter("category");
  //String   subcategory = request.getParameter("subcategory");

//        System.out.println(category+"--");
        ArrayList<Item> al = TotalItems.totalItems();
        String result = "";
        for(Item it :al)
        {
       if(it!=null)
       {
        if(it.getCategory().equalsIgnoreCase(category))
        {
            
            result+= it.toString()+"SQQS";
        }
        else if(it.getSubcategory().split("-")[0].equalsIgnoreCase(category))
                {
//                    System.out.println(it);    
              result+= it.toString()+"SQQS";                  
                }
        else if(category.equals("discount"))
        {
        if(it.getDiscount()>0)
        {
       //     System.out.println(it.getImagePath()+it.getShortDescription());
                     result+= it.toString()+"SQQS";                   
        }
        }
        }
        }
     //   System.out.println("88");
   out.println(result);

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
        processRequest(request, response);
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
