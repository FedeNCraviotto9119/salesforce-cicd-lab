@IsTest
private class CicdHelloTest {

    @IsTest
    static void shouldReturnExpectedMessage() {

        Test.startTest();
        String result = CicdHello.getMessage();
        Test.stopTest();

        System.assertEquals(
            'Hello from my first feature branch!',
            result,
            'The method should return the expected message'
        );
    }

    @IsTest
    static void shouldReturnCorrectSum() {

        Test.startTest();
        Integer result = CicdHello.getSum(10, 20);
        Test.stopTest();

        System.assertEquals(30, result, 'Incorrect sum');
    }
}