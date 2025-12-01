import java.util.Date;

class EnrollmentStatus {
    boolean enrollFlag;
}

public class Enrollment {
    int id;
    Date enrollmentDate;
    EnrollmentStatus status;
    float progressPercent;

    void markLessonCompleted(){
        
    }

    float getProgressPercent(){
        return progressPercent;
    }
}
