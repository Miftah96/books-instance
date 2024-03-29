package com.javan.library.utils;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.HashMap;
import java.util.Map;

public class ResponseHandler {
    public static ResponseEntity<Object> generateResponse( HttpStatus status, String message, Object responseObject) {
        Map<String, Object> map = new HashMap<>();

        map.put("status", status.value());
        map.put("message", message);
        map.put("data", responseObject);

        return new ResponseEntity<>(map, status);
    }
}
