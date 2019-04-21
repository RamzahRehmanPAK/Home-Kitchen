package Model;

import Database.db_connection;
import com.sun.org.apache.xpath.internal.operations.Or;

import javax.jws.soap.SOAPBinding;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by ayesha on 11/4/2017.
 */

public class User
{
    protected int userId;
    protected String name;
    protected String email;
    protected String password;
    protected String imagePath;
    protected String contactNumber;
    protected String billingAddress;
    protected String cnic;
    protected static int idInc;
    public ArrayList<Order> ordersTaken;
    public ArrayList<Order> ordersPlaced;
    public ArrayList<Review> reviews;
    protected static ArrayList<User> users=new ArrayList<User>();

    public static ArrayList<User> getUsers() {
        return users;
    }

    public static void setUsers(ArrayList<User> users) {
        User.users = users;
    }

    public User(){
        ordersTaken=new ArrayList<Order>();
        ordersPlaced=new ArrayList<Order>();
        reviews=new ArrayList<Review>();
    }

    public synchronized static void incrementIdInc(){
        idInc++;
    }
    public static void setIdInc( int id){idInc=id;}
    public static  int getIdInc( ){return idInc;}

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(String billingAddress) {
        this.billingAddress = billingAddress;
    }

    public String getCnic() {
        return cnic;
    }

    public void setCnic(String cnic) {
        this.cnic = cnic;
    }


    //----------------------------------//
    public static boolean LoginUser(String email,String pwd)
    {
        boolean check =false;
        try
        {
            Connection myconnection= db_connection.con;
            PreparedStatement ps1 =myconnection.prepareStatement("select * from db.Userr where Email=? and Passwordd=?");
            ps1.setString(1, email);
            ps1.setString(2, pwd);
            ResultSet rs1 =ps1.executeQuery();
            check = rs1.next();
        }catch(Exception e){e.printStackTrace();}

        return check;
    }
    //----------------------------------//
    public boolean RegisterUser()
    {
        Connection myconnection = null;
        boolean check =false;
        try
        {
            myconnection=db_connection.con;
            PreparedStatement ps=myconnection.prepareStatement("insert into db.Userr values(?,?,?,?,?,?,?,?)");

            ps.setInt(1,userId);

            ps.setString(2,name);
            ps.setString(3,email);
            ps.setString(4,password);

            ps.setString(5,imagePath);
            ps.setString(6,contactNumber);
            ps.setString(7,billingAddress);
            ps.setString(8,cnic);
            int rs=ps.executeUpdate();

            check = true;
        }catch(Exception e){e.printStackTrace();}

        return check;
    }
    //---------//
    public User GetUser()
    {
        try
        {
            Connection myconnection=db_connection.con;

            String sqlString = "SELECT * FROM db.Userr WHERE Email = '"+email+"'";
            Statement myStatement = myconnection.createStatement();
            ResultSet rs=myStatement.executeQuery(sqlString);

            while(rs.next())
            {
                this.userId= rs.getInt("UserId");
                this.name= rs.getString("Name");
                this.email= rs.getString("Email");
                this.password= rs.getString("Passwordd");
                this.imagePath= rs.getString("ImagePath");
                this.contactNumber= rs.getString("ContactNumber");
                this.billingAddress= rs.getString("BillingAddress");
                this.cnic= rs.getString("CNIC");
            }
            myStatement.close();

        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        return this;
    }
    /*public static User getUserFromDb(int sellerId){
        User user=new User();
        try
        {
            Connection myconnection=db_connection.con;

            String sqlString = "SELECT * FROM db.Userr WHERE UserId = '"+sellerId+"'";
            Statement myStatement = myconnection.createStatement();
            ResultSet rs=myStatement.executeQuery(sqlString);

            while(rs.next())
            {
                user.userId= rs.getInt("UserId");
                user.name= rs.getString("Name");
                user.email= rs.getString("Email");
                user.password= rs.getString("Passwordd");
                user.imagePath= rs.getString("ImagePath");
                user.contactNumber= rs.getString("ContactNumber");
                user.billingAddress= rs.getString("BillingAddress");
                user.cnic= rs.getString("CNIC");
            }
            myStatement.close();

        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}


        return user;
    }*/
    public void loadOrdersFromDb(){

        //orders placed
        ordersTaken=Order.getOrders("seller",userId);
        ordersPlaced=Order.getOrders("buyer",userId);


    }
    public static void getUsersFromDb(){

        User user;
        try
        {
            Connection myconnection=db_connection.con;

            String sqlString = "SELECT * FROM db.Userr";
            Statement myStatement = myconnection.createStatement();
            ResultSet rs=myStatement.executeQuery(sqlString);

            while(rs.next())
            {
                user=new User();
                user.userId= rs.getInt("UserId");
                user.name= rs.getString("Name");
                user.email= rs.getString("Email");
                user.password= rs.getString("Passwordd");
                user.imagePath= rs.getString("ImagePath");
                user.contactNumber= rs.getString("ContactNumber");
                user.billingAddress= rs.getString("BillingAddress");
                user.cnic= rs.getString("CNIC");
                users.add(user);
            }
            myStatement.close();

        } catch (SQLException ex) {Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}

    }
    public static User findUserById(int ii){
        User user=null;
        for(int i=0;i<users.size();i++){
            if(ii==users.get(i).getUserId()){
                user=users.get(i);
                break;
            }
        }return user;
    }

    public void saveEditedUserInfo()
    {
        Connection myconnection = null;
        try
        {
            myconnection=db_connection.con;
            PreparedStatement ps=myconnection.prepareCall("UPDATE db.Userr SET Name = ?, Email=?, Passwordd=?, ImagePath=?, ContactNumber=?, BillingAddress=?, CNIC=? WHERE UserId = ?");

            ps.setString(1,name);
            ps.setString(2,email);
            ps.setString(3,password);
            ps.setString(4,imagePath);
            ps.setString(5,contactNumber);
            ps.setString(6,billingAddress);
            ps.setString(7,cnic);
            ps.setInt(8,userId);
            ps.executeUpdate();


        }catch(Exception e){e.printStackTrace();}


    }

    public void loadReviewsOfUserFromDb(){

        reviews=Review.getReviews(userId);
    }
}