public class CicdHello {

    public static String getMessage() {
        return 'Hello from my first feature branch!';
    }

    public static Integer getSum(Integer a, Integer b) {
        Integer sumResult = a + b;
        System.debug('Calculation performed by Developer B');
        return sumResult;
    }

}