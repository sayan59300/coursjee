package com.magasinspring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {
        "com.magasinspring.controller",
        "com.magasinspring.dao",
        "com.magasinspring.filter",
        "com.magasinspring.model"
})
public class MagasinSpringApplication {

    public static void main(String[] args) {
        SpringApplication.run(MagasinSpringApplication.class, args);
    }

}
