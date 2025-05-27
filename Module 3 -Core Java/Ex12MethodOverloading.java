public class Ex12MethodOverloading {
    // Add two integers
    public static int add(int a, int b) {
        return a + b;
    }

    // Add two doubles
    public static double add(double a, double b) {
        return a + b;
    }

    // Add three integers
    public static int add(int a, int b, int c) {
        return a + b + c;
    }

    public static void main(String[] args) {
        System.out.println("add(int, int): " + add(10, 20));
        System.out.println("add(double, double): " + add(5.5, 6.3));
        System.out.println("add(int, int, int): " + add(1, 2, 3));
    }
}

