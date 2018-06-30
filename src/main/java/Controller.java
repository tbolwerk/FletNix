import javax.enterprise.context.RequestScoped;
import javax.inject.Named;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

@Named
@RequestScoped
public class Controller {
    private ArrayList<Movie> movies = new ArrayList<Movie>();

    public ArrayList<Movie> getMovies() throws SQLException {
        ConnectDB connectDB = new ConnectDB();
        Statement statement = connectDB.getConnection().createStatement();
        String query = "SELECT * FROM MOVIE";
        ResultSet resultSet = statement.executeQuery(query);
        while (resultSet.next()){
            int movie_id = resultSet.getInt("movie_id");
            String title = resultSet.getString("title");
            String description = resultSet.getString("title");
            String cover_image = resultSet.getString("cover_image");
            movies.add(new Movie(movie_id,title,description,cover_image));
        }
        return movies;
    }
}
