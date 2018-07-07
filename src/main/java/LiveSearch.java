import javax.inject.Named;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.ArrayList;

@Named
@WebServlet
public class LiveSearch extends HttpServlet {
private ArrayList<Movie> movies = new ArrayList<Movie>();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String searchInfo = "";
        String key = req.getParameter("key");
        ConnectDB con = new ConnectDB();
        resp.setContentType("text/html");
        resp.setHeader("Cache-Control", "no-cache");
        PrintWriter out = resp.getWriter();
        try {

            String SQL = "SELECT * FROM MOVIE WHERE title LIKE ?";
            PreparedStatement pstmt = con.getConnection().prepareStatement(SQL);
            pstmt.setString(1, "%"+key+"%");
            ResultSet rs = pstmt.executeQuery();



            while (rs.next()) {

                out.write("           <a class=\"dummy-media-object\" href=\"movieservlet?movie_id="+rs.getInt("movie_id")+"\">\n" +
                        "                <img src=\"img/posters/"+rs.getString("cover_image")+"\" alt=\"ArrowNavigationStyles\"/>\n" +
                        "                <h3>"+rs.getString("title")+"</h3>\n" +
                        "            </a>");
            }
            rs.close();
            pstmt.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }





        out.close();


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
