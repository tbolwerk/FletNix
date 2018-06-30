import javax.enterprise.context.RequestScoped;
import javax.inject.Named;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;


@Named
@WebServlet
public class MovieServlet extends HttpServlet {
    private Movie movie;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int request_movie_id = 0;
        ConnectDB connectDB = new ConnectDB();
        PrintWriter out = resp.getWriter();



        if(req.getParameter("movie_id") != null) {
            request_movie_id = Integer.parseInt(req.getParameter("movie_id"));


        }
        try {
            if(connectDB.getConnection() != null){


                String query = "SELECT * FROM MOVIE WHERE movie_id="+request_movie_id;
                Statement statement = connectDB.getConnection().createStatement();
                ResultSet resultSet = statement.executeQuery(query);

                while (resultSet.next()){

                    int movie_id = resultSet.getInt("movie_id");
                    String title = resultSet.getString("title");
                    String description = resultSet.getString("description");
                    String cover_image = resultSet.getString("cover_image");
                    movie = new Movie(movie_id,title,description,cover_image);

                }

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        resp.setContentType("text/html; charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter writer = resp.getWriter();

        req.getRequestDispatcher("header.jsp").include(req, resp);
        String contentStart = "<div class=\"content\">";
        String contentEnd = "</div>";
        String poster = "<img src=\"img/posters/"+movie.getCover_image()+"\"/>";
        writer.println(contentStart);
        writer.println((new Date()).toString());
        writer.println(poster);

        writer.println(contentEnd);
        req.getRequestDispatcher("footer.jsp").include(req, resp);

    }

    public Movie getMovie() {
        return movie;
    }
}
