package Model;

/**
 * Created by ayesha on 11/4/2017.
 */

import Database.db_connection;
import com.sun.org.apache.xpath.internal.operations.Or;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Order {
	protected int orderId;
	protected int buyerID;
	protected int sellerID;
	protected int foodId;
	protected String whenOrderPlaced;
	protected String whenDelivered;
	protected int amount;
	protected int quantity;
	protected int status;
	User buyer;
	User seller;
	Food food;
	protected static int idInc;


	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getBuyerID() {
		return buyerID;
	}

	public void setBuyerID(int buyerID) {
		this.buyerID = buyerID;
	}

	public int getSellerID() {
		return sellerID;
	}

	public void setSellerID(int sellerID) {
		this.sellerID = sellerID;
	}

	public int getFoodId() {
		return foodId;
	}

	public void setFoodId(int foodId) {
		this.foodId = foodId;
	}

	public String getWhenOrderPlaced() {
		return whenOrderPlaced;
	}

	public void setWhenOrderPlaced(String whenOrderPlaced) {
		this.whenOrderPlaced = whenOrderPlaced;
	}

	public String getWhenDelivered() {
		return whenDelivered;
	}

	public void setWhenDelivered(String whenDelivered) {
		this.whenDelivered = whenDelivered;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public User getBuyer() {
		return buyer;
	}

	public void setBuyer(User buyer) {
		this.buyer = buyer;
	}

	public User getSeller() {
		return seller;
	}

	public void setSeller(User seller) {
		this.seller = seller;
	}

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public static int getIdInc() {
		return idInc;
	}

	public static void setIdInc(int idInc) {
		Order.idInc = idInc;
	}

    public synchronized static void incrementIdInc(){
        idInc++;
    }

    public static ArrayList<Order> getOrders(String a,int userId){

		ArrayList<Order>orders=new ArrayList<Order>();
		Order order;

		try
		{
			Connection myconnection= db_connection.con;

			String sqlString = "SELECT * FROM db.Orderr WHERE "+a+"='"+userId+"'";
			Statement myStatement = myconnection.createStatement();
			ResultSet rs=myStatement.executeQuery(sqlString);

			while(rs.next())
			{
				order=new Order();

				order.orderId= rs.getInt("orderId");

				int i= Integer.valueOf(rs.getString("buyer"));
				order.buyer=User.findUserById(i);

				i= Integer.valueOf(rs.getString("seller"));
				order.seller=User.findUserById(i);

				i= Integer.valueOf(rs.getString("food"));
				order.food=Item.findItemById(i);

				order.buyerID=order.buyer.getUserId();
				order.sellerID=order.seller.getUserId();
				order.foodId=order.food.getId();

				order.whenOrderPlaced= rs.getString("WhenOrderPlaced");
				order.whenDelivered= rs.getString("WhenDelivered");
				order.amount= rs.getInt("amount");
				order.quantity= rs.getInt("quantity");
				order.status= rs.getInt("statuss");

				orders.add(order);
			}
			myStatement.close();

		} catch (SQLException ex) {
			Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
		return orders;
	}

	public  void PlaceOrder(Item item,User user,int q)
	{
        synchronized (Order.class){
            orderId=idInc;
        }
        Order.incrementIdInc();
        buyerID=user.userId;
        sellerID=item.getSeller().getUserId();
        foodId=item.getId();
        whenOrderPlaced = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
        whenDelivered="";
        amount=item.getPrice()*q;
        quantity=q;
        status=1;//1 means current, 0 means previous
        buyer=user;
        seller=item.getSeller();
        food=item;

        user.ordersPlaced.add(this);
        item.getSeller().ordersTaken.add(this);
        item.setCount(item.getCount()-q);

        //chane quantity in db
        item.updateCountIndb();

        if(item.count==0){
            Item.allItems.remove(item);
        }

		Connection myconnection = null;
		boolean check =false;
		try
		{
			myconnection= db_connection.con;
			PreparedStatement ps=myconnection.prepareStatement("insert into db.Orderr values(?,?,?,?,?,?,?,?,?)");
			ps.setInt(1, orderId);
			ps.setInt(2, buyerID);
			ps.setInt(3, sellerID);
			ps.setInt(4, foodId);
			ps.setString(5,whenOrderPlaced);
			ps.setString(6,whenDelivered);
			ps.setInt(7,amount);
			ps.setInt(8,quantity);
			ps.setInt(9,status);
			ps.executeUpdate();
		}catch(Exception e){e.printStackTrace();}

	}
}