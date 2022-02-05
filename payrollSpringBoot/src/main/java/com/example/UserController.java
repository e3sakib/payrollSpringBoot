* To change this license header, choose License Headers in Project Properties.
* To change this template file, choose Tools | Templates
* and open the template in the editor.
*/
package com.example;

import com.example.interfaceService.LoginService;
import com.example.model.UserModel;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
*
* @author Instructor
*/
@RestController
@CrossOrigin(origins = "*", maxAge = 3600)
public class UserController {
   @Autowired
   private LoginService loginService;

   @PostMapping(value = "/save")

   public ResponseEntity<?> save(@RequestBody UserModel entity) {
       
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            UserModel user = loginService.save(entity);
            map.put("message", "Data save successfully");
            map.put("Data", user);
            map.put("Status code", 200);
            return ResponseEntity.ok(map);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("message", "Data saved failed");
            map.put("Data", null);
            map.put("Status code", 400);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(map);
        }
   

   }
}
