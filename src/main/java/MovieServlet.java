import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MovieServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int request_movie_id = 0;
        ConnectDB connectDB = new ConnectDB();
        PrintWriter out;
        out = resp.getWriter();

out.println(HtmlTags.getHtmlStart());
out.println(HtmlTags.getHtmlHeader());
out.println(HtmlTags.getHtmlContentStart());

        if(req.getParameter("movie_id") != null) {
            request_movie_id = Integer.parseInt(req.getParameter("movie_id"));


        }
        try {
            if(connectDB.getConnection() != null){

                out.println("succes");
                String query = "SELECT * FROM MOVIE WHERE movie_id="+request_movie_id;
                Statement statement = connectDB.getConnection().createStatement();
                ResultSet resultSet = statement.executeQuery(query);

                while (resultSet.next()){
                    int movie_id = resultSet.getInt("movie_id");
                    String title = resultSet.getString("title");

                    out.println(movie_id + "  " + title);
                }

            }else{
                out.println("fails");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
out.println(HtmlTags.getHtmlContentEnd());
        out.println(HtmlTags.getHtmlEnd());
    }
}
