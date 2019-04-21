package Model;

/**
 * Created by ayesha on 11/4/2017.
 */
import Database.db_connection;
import Model.Food;

import java.sql.*;
import java.util.ArrayList;

public class Item extends Food {

    public static ArrayList<Item> allItems=new ArrayList<Item>();

    protected String cuisine;

    public String getCuisine() {
        return cuisine;
    }

    public void setCuisine(String cuisine) {
        this.cuisine = cuisine;
    }

    public void PostFood(User user, String str)
    {
        super.PostFood(user,str);

        Connection myconnection = null;
        try
        {
            myconnection= db_connection.con;
            PreparedStatement ps=myconnection.prepareStatement("insert into db.Item values(?,?)");

            ps.setInt(1, id);
            ps.setString(2, cuisine);
            ps.executeUpdate();

        }catch(Exception e){e.printStackTrace();}
    }
    public static void getItemsFromdb(){

        User user;
        ArrayList<Food> list=Food.getFoodsFromDb("Items");

        if(list==null)
            return;

        for(int i=0;i<list.size();i++){

            Connection myconnection = null;
            try {

                myconnection = db_connection.con;
                PreparedStatement ps = myconnection.prepareCall("select * from db.Item where Id=?");

                ps.setInt(1,list.get(i).getId());
                ResultSet rs = ps.executeQuery();

                if(rs.next()){
                    ((Item)list.get(i)).setCuisine(rs.getString(2));

                    if(((Item)list.get(i)).getCount()>0)
                    {
                        allItems.add(((Item)list.get(i)));
                    }
                }
                ps.close();
            }
            catch (Exception e){
                e.printStackTrace();
            }

        }


    }
    public static Food findItemById(int ii){
        Food food=null;
        for(int i=0;i<allItems.size();i++){
            if(ii==allItems.get(i).id){
                food=allItems.get(i);
                break;
            }
        }return food;
    }
    public void updateCountIndb(){

        Connection myconnection;
        try
        {
            myconnection= db_connection.con;
            PreparedStatement ps=myconnection.prepareCall("UPDATE db.food SET Countt = ? WHERE Id = ?");
            ps.setInt(1, count);
            ps.setInt(2, id);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}

    }
}