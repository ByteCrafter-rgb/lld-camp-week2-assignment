import java.util.List;
import java.util.ArrayList;

public class Student extends User {
    public Student(int id, String name, String email) {
        super(id, name, email);
    }

    private List<Enrollment> enrollments = new ArrayList<>();

    List<Enrollment> getEnrollments(){
        return enrollments;
    }
}
