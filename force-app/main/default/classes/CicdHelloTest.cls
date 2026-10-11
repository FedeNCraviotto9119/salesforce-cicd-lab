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
}