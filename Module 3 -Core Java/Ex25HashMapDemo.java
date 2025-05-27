import java.util.HashMap;
import java.util.Scanner;

public class Ex25HashMapDemo {
    public static void main(String[] args) {
        HashMap<Integer, String> students = new HashMap<>();
        Scanner scanner = new Scanner(System.in);

        System.out.println("Add student entries (ID and name). Type ID -1 to stop.");

        while (true) {
            System.out.print("Enter student ID: ");
            int id = scanner.nextInt();
            scanner.nextLine();  // consume newline
            if (id == -1) break;

            System.out.print("Enter student name: ");
            String name = scanner.nextLine();

            students.put(id, name);
        }

        System.out.print("Enter an ID to retrieve the student name: ");
        int searchId = scanner.nextInt();

        String studentName = students.get(searchId);
        if (studentName != null) {
            System.out.println("Student name for ID " + searchId + ": " + studentName);
        } else {
            System.out.println("No student found with ID " + searchId);
        }

        scanner.close();
    }
}
