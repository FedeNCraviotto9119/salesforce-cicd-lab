@IsTest
private class CicdHelloTest {

    @IsTest
    static void shouldReturnExpectedMessage() {

        Test.startTest();
        String result = CicdHello.getMessage();
        Test.stopTest();

        System.assertEquals(
            'This is an incorrect message!',
            result,
            'The method should return the expected message'
        );
    }
}