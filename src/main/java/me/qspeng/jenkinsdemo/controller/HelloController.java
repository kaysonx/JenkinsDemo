package me.qspeng.jenkinsdemo.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(value = "Hello Controller", tags = {"Test"})
public class HelloController {

    @GetMapping("/hello")
    @ApiOperation(value = "hello", notes = "say hello with spring boot")
    public String hello() {
        return "Hello, Spring Boot!";
    }
}
