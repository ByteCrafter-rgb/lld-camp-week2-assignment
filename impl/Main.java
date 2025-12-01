public class Main {
    public static void main(String[] args) {
        User u = new User(1, "Ayush", "alice@example.com");
        System.out.println("Created user: " + u);
        System.out.println("id=" + u.getId() + ", name=" + u.getName() + ", email=" + u.getEmail());
    }
}
