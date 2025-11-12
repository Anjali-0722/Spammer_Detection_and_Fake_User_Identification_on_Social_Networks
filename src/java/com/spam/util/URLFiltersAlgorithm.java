/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spam.util;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DELL
 */
public class URLFiltersAlgorithm {

    String[] urls = {"http://www.javaab4c.com/", "http://www.gmail.com/", "http://www.yahoo.com/", "http://www.google.com/", "http://www.ieee.com/", "http://www.twitter.com/", "http://www.baidu.com/", "http://www.instagram.com/", "http://www.facebook.com/", "http://www.amazon.com/", "http://www.microsoft.com/", "http://www.apple.com/", "http://www.wikia.com/", "http://www.booking.com/", "http://www.outbrain.com/", "http://www.coccoc.com/", "http://www.alibaba.com/", "http://www.accuweather.com/",};

    public static boolean isValid(String url) {
        try {
            new URL(url).toURI();
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    public int checkUrlsAvailability(String tweet) {
        int count = 0;
        String[] tweet_array = tweet.split(" ");
        for (int i = 0; i < tweet_array.length; i++) {
            //System.out.println(tweet_array[i]);
            if (isValid(tweet_array[i])) { 
            //System.out.println("Yes"); 
            String url_is = tweet_array[i];
                System.out.println("Bla "+url_is);
                for(int u=0;u<urls.length;u++){
                if(urls[u].equalsIgnoreCase(url_is)){
                count++;
                }
                }
            
            }
            else{
            //System.out.println("No");
            }
        }
        return count;
    }
    public static void main(String[] args) {
        URLFiltersAlgorithm u = new URLFiltersAlgorithm();
        String ss = "this is awesome url so that its gonna take some huge ammount of predection bla bla http://www.google.com/";
       int c=  u.checkUrlsAvailability(ss);
        System.out.println("Count is "+c);
    }
}
