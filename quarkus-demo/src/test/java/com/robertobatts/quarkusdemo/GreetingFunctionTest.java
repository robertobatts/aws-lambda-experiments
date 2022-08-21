package com.robertobatts.quarkusdemo;

import io.quarkus.amazon.lambda.test.LambdaClient;
import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

@QuarkusTest
public class GreetingFunctionTest {

    @Test
    public void testSimpleLambdaSuccess() throws Exception {
        String out = LambdaClient.invoke(String.class, "World");
        Assertions.assertEquals("Hello World", out);
    }
}