package Listeners;

import Database.db_connection;
import Model.*;

import javax.jws.soap.SOAPBinding;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by Sana Fatima on 11/24/2017.
 */
@WebListener
public class ContextListner implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {

        Connection con= db_connection.con;

        try{
            PreparedStatement ps=con.prepareCall("UPDATE db.config SET foodsId=?, ordersId = ?, reviewsId=?, usersId=? WHERE id=1 ");

            ps.setInt(1,Food.getIdInc());
            ps.setInt(2,Order.getIdInc());
            ps.setInt(3,Review.getIdInc());
            ps.setInt(4,User.getIdInc());

            ps.execute();
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    //Run this before web application is started
    @Override
    public void contextInitialized(ServletContextEvent arg0) {

        createFolderForImages(arg0);
        Connection con= db_connection.con;

        try{
            Statement ps=con.createStatement();
            ResultSet rs=ps.executeQuery("select * from db.config where id=1");

            rs.next();
            Food.setIdInc(rs.getInt(2));
            Order.setIdInc(rs.getInt(3));
            Review.setIdInc(rs.getInt(4));
            User.setIdInc(rs.getInt(5));

        }
        catch (Exception e){
            e.printStackTrace();
        }
        User.getUsersFromDb();
        Item.getItemsFromdb();

        for(int i=0;i< User.getUsers().size();i++){

            User.getUsers().get(i).loadReviewsOfUserFromDb();
        }
    }
    public void createFolderForImages(ServletContextEvent event){

     /*   String rootPath = System.getProperty("catalina.home");

        ServletContext ctx = event.getServletContext();

        String relativePath = ctx.getInitParameter("tempfile.dir");

        File file = new File(rootPath + File.separator + relativePath);

        if(!file.exists()) file.mkdirs();

        System.out.println("File Directory created to be used for storing files");

        ctx.setAttribute("FOOD_IMAGE_FILES_DIR_FILE", file);

        ctx.setAttribute("FOOD_IMAGE_FILES_DIR", rootPath + File.separator + relativePath);*/

        String path = event.getServletContext().getRealPath("/");
        int a=path.indexOf("out");
        path=path.substring(0,a);
        path=path+"web\\images\\"+"food";
        File f = new File (path);
        f.mkdir();

        event.getServletContext().setAttribute("FOOD_IMAGE_FILES_DIR",path);

         path = event.getServletContext().getRealPath("/");
         a=path.indexOf("out");
        path=path.substring(0,a);
        path=path+"web\\images\\"+"user";
        f = new File (path);
        f.mkdir();

        event.getServletContext().setAttribute("USER_IMAGE_FILES_DIR",path);
    }
}