import java.util.List;
import java.util.ArrayList;

public class Instructor extends User{
    List<Course> courses = new ArrayList<>();

    public Instructor(int id, String name, String email) {
        super(id, name, email);
    }
    List<Course> getCourses(){
        return courses;
    }
}
