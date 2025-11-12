/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spam.util;

import java.net.URL;

/**
 *
 * @author DELL
 */
public class TestUrlEncode {
    public static void main(String args[]) throws Exception {

    URL u = new URL("http://www.datapoint.com:80/index.html");
    System.out.println("The URL is " + u);
    System.out.println("The scheme is " + u.getProtocol());
    System.out.println("The user info is " + u.getUserInfo());

    String host = u.getHost();
    if (host != null) {
      int atSign = host.indexOf('@');
      if (atSign != -1)
        host = host.substring(atSign + 1);
      System.out.println("The host is " + host);
    } else {
      System.out.println("The host is null.");
    }

    System.out.println("The port is " + u.getPort());
    System.out.println("The path is " + u.getPath());
    System.out.println("The ref is " + u.getRef());
    System.out.println("The query string is " + u.getQuery());
  }
}
