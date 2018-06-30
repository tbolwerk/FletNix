public class Movie {
    private int movie_id;
    private String title,description,cover_image;

    public Movie(int movie_id,String title,String description,String cover_image){
        this.movie_id=movie_id;
        this.title=title;
        this.description=description;
        this.cover_image=cover_image;
    }

    public int getMovie_id() {
        return movie_id;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getCover_image() {
        return cover_image;
    }
}
