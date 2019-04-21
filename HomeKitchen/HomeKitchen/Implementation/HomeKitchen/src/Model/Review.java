package Model;

/**
 * Created by ayesha on 11/4/2017.
 */

// Review + rating both here (as on fb, we submit both rating +review)

import Database.db_connection;
import Model.User;

import javax.jws.soap.SOAPBinding;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Review {
	protected int id;//review and rating on the basis of order else can't review or rate
	protected int stars;
	protected int senderId;
	protected int receiverId;
	protected String message;
	protected String reviewDate;

	protected User sender;
	protected User receiver;
	protected static int idInc;


	public synchronized static void incrementIdInc(){
		idInc++;
	}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStars() {
        return stars;
    }

    public void setStars(int stars) {
        this.stars = stars;
    }

    public int getSenderId() {
        return senderId;
    }

    public void setSenderId(int senderId) {
        this.senderId = senderId;
    }

    public int getReceiverId() {
        return receiverId;
    }

    public void setReceiverId(int receiverId) {
        this.receiverId = receiverId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(String reviewDate) {
        this.reviewDate = reviewDate;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    public static int getIdInc() {
        return idInc;
    }

    public static void setIdInc(int idInc) {
        Review.idInc = idInc;
    }

    public static ArrayList<Review> getReviews(int userId){

        ArrayList<Review>reviews=new ArrayList<Review>();
        Review review;

        try
        {
            Connection myconnection= db_connection.con;

            PreparedStatement myStatement = myconnection.prepareCall("SELECT * FROM db.review WHERE receiver=?");

            myStatement.setInt(1,userId);
            ResultSet rs=myStatement.executeQuery();

            while(rs.next())
            {
                review=new Review();

                review.id= rs.getInt("Id");
                review.stars= rs.getInt("stars");
                review.senderId= rs.getInt("sender");
                review.receiverId= rs.getInt("receiver");
                review.message= rs.getString("Messagee");
                review.reviewDate= rs.getString("ReviewDate");
                review.sender=User.findUserById(review.senderId);
                review.receiver= User.findUserById(userId);

                reviews.add(review);
            }
            myStatement.close();

        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);}
        return reviews;
    }

}