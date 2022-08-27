package com.robertobatts;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;

import javax.inject.Named;

@Named("test")
public class TestLambda implements RequestHandler<InputObject, String> {

    @Override
    public String handleRequest(InputObject input, Context context) {
        return input.getGreeting() + " " + input.getName();
    }
}
