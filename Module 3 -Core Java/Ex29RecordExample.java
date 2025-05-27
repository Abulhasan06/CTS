import java.util.*;
import java.util.stream.*;

public class Ex29RecordExample {
    record Person(String name, int age) {}

    public static void main(String[] args) {
        List<Person> people = List.of(
            new Person("Alice", 25),
            new Person("Bob", 30),
            new Person("Charlie", 18)
        );

        people.forEach(System.out::println);

        List<Person> adults = people.stream()
                                    .filter(p -> p.age() >= 21)
                                    .collect(Collectors.toList());

        System.out.println("Adults: " + adults);
    }
}
