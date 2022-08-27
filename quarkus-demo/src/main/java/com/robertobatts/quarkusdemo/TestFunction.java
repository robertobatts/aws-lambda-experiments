package com.robertobatts.quarkusdemo;

import io.quarkus.funqy.Funq;

public class TestFunction {

    @Funq
    public String test() {
        return "This is a test";
    }
}
