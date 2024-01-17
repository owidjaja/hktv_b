public class ReverseString {
    public static void main(String[] args) {
        String input = "retlaohS";
        char[] output = new char[input.length()];
        for (int i = input.length() - 1, j = 0; i >= 0; i--, j++) {
            output[j] = input.charAt(i);
        }
        String reversed = new String(output);
        System.out.println(reversed);
    }
}