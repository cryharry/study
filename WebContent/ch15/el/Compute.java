package ch15.el;

/**
 * Created by admin on 2014-07-06.
 */
public class Compute {
    public static int add(String x, String y) { //덧셈을 구하는 메소드
        int a = 0;
        int b = 0;
        try {
            a = Integer.parseInt(x);
            b = Integer.parseInt(y);
        } catch (Exception e) {}
        return a + b;
    }
}
