package Controller;

import Model.Food;
import Model.Item;
import Model.User;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Part;

/**
 * Created by Mahnoor on 11/9/2017.
 */
@MultipartConfig
public class PostItemCOntroller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (!ServletFileUpload.isMultipartContent(request)) {
            System.out.println("Content type is not multipart/form-data");
        }
        File file = null;
        Item item=new Item();
        String fieldName;
        String fieldValue;

        try {
            List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

            synchronized (Food.class){
                item.setId(Food.getIdInc());
            }
            Food.incrementIdInc();

            fieldValue = items.get(0).getString();
            item.setName(fieldValue);

            fieldValue = items.get(1).getString();
            item.setCuisine(fieldValue);

            fieldValue = items.get(2).getString();
            item.setDescription(fieldValue);

            //fieldName = items.get(3).getFieldName();
            String fileName = FilenameUtils.getName(items.get(3).getName());

            StringTokenizer stt = new StringTokenizer(fileName,".");
            String token = stt.nextToken();
            token = stt.nextToken();
            fileName=String.valueOf(item.getId());
            fileName=fileName+"."+token;

            file = new File(request.getServletContext().getAttribute("FOOD_IMAGE_FILES_DIR") + File.separator + fileName);
            items.get(3).write(file);

            String path=file.getAbsolutePath();

            path=path.replace("\\","/");
            int a=path.indexOf("images");
            path=path.substring(a,path.length());

            item.setImagePath(path);

            fieldValue = items.get(4).getString();
            item.setCount(Integer.valueOf(fieldValue));

            fieldValue = items.get(5).getString();
            item.setStartTime(fieldValue);

            fieldValue = items.get(6).getString();
            item.setDeleteTime(fieldValue);

            fieldValue = items.get(7).getString();
            item.setPrice(Integer.valueOf(fieldValue));
            item.setSeller((User)(request.getSession().getAttribute("user")));
            item.setSellerId(((User)(request.getSession().getAttribute("user"))).getUserId());

            item.PostFood((User)(request.getSession().getAttribute("user")),"Item");

            Item.allItems.add(item);//add to list of items

            RequestDispatcher rd1 = request.getRequestDispatcher("/index.jsp");
            rd1.forward(request,response);
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}