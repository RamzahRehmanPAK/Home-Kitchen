package Model;

/**
 * Created by ayesha on 11/4/2017.
 */
import Database.db_connection;

import java.sql.*;
import java.util.ArrayList;

public class Food {


	protected int id;
	protected String name;
	protected int sellerId;
	protected int count;
	protected String description;
	protected String imagePath;
	protected int price;
	protected String startTime;
	protected String deleteTime;
	User Seller;          			//person who posted this food
	protected static int idInc;

	public synchronized static void incrementIdInc(){
		idInc++;
	}
	public static  void setIdInc( int id){idInc=id;}
	public static  int getIdInc( ){return idInc;}

	public int getId() {
		return id;
	}

	public void setId(int idd) {
		id = idd;
	}

	public String getName() {
		return name;
	}

	public void setName(String n) {
		name = n;
	}

	public int getSellerId() {
		return sellerId;
	}

	public void setSellerId(int sellerId) {
		this.sellerId = sellerId;
	}

	public User getSeller() {
		return Seller;
	}

	public void setSeller(User seller) {
		Seller = seller;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int c) {
		count = c;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String d) {
		description = d;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String i) {
		imagePath = i;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int p) {
		price = p;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getDeleteTime() {
		return deleteTime;
	}

	public void setDeleteTime(String deleteTime) {
		this.deleteTime = deleteTime;
	}

	public void PostFood(User user, String str)
	{
		Connection myconnection = null;
		boolean check =false;
		try
		{
			myconnection= db_connection.con;
			PreparedStatement ps=myconnection.prepareStatement("insert into db.food values(?,?,?,?,?,?,?,?,?,?)");

			ps.setInt(1, id);
			ps.setString(2, name);

			ps.setInt(3,user.getUserId());

			ps.setInt(4,count);
			ps.setString(5,description);
			ps.setString(6,imagePath);
			ps.setInt(7, price);
			ps.setString(8,startTime);
			ps.setString(9,deleteTime);
			ps.setString(10,str);
			int rs=ps.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static ArrayList<Food> getFoodsFromDb(String a) {
		ArrayList<Food> foods=null;
		if(a=="Items"){
			 foods=getItems();
		}
		else{

		}
		return foods;
	}
	protected static ArrayList<Food> getItems(){
		Item item;
		ArrayList<Food> items=new ArrayList<Food>();


		Connection myconnection = null;
		try
		{
			myconnection= db_connection.con;
			PreparedStatement ps=myconnection.prepareStatement("select * from db.food where foodType=?");
            ps.setString(1,"Item");
			ResultSet rs=ps.executeQuery();

			while(rs.next()){
			item=new Item();

				item.setId(rs.getInt(1));
				item.setName(rs.getString(2));
				item.setSellerId(rs.getInt(3));
				item.setCount(rs.getInt(4));
				item.setDescription(rs.getString(5));
				item.setImagePath(rs.getString(6));
				item.setPrice(rs.getInt(7));
				item.setStartTime(rs.getString(8));
				item.setDeleteTime(rs.getString(9));
				item.setSeller(User.findUserById(item.sellerId));
				items.add(item);
			}
			ps.close();

		}catch(Exception e){e.printStackTrace();}
		return items;
	}
}