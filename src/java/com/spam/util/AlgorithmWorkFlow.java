/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spam.util;

/**
 *
 * @author DELL
 */
public class AlgorithmWorkFlow {

    public String[] words = {" Dirty", "stupid", "idiot", "anus", "Prick ","good", "ass-hat", "Shit", "unpleasant", "wasted", "Gobdaw", "Teigh go dtí ifreann", "Merde", "Bastard", "Damn,Stupider ", "assmonkey", "hard on", "handjob", "hell", "ho", "hoe", "kooch", "lameass", "loser", "lesbo", "schlong", "worst", "shithouse", "shittiest", "skank", "dirty girl", "dirty boy", "tit", "tard", "bla"};

    public int catagoriseTweet(String tweet) {
        int count = 0;
        int len = 0;
        String[] t = tweet.split(" ");
        //System.out.println(words.length + "==" + t.length);
        int wrdsLen = words.length;
        int twtLen = t.length;
        if (wrdsLen <= twtLen) {
            //System.out.println("AM WOrds Array " + wrdsLen);
            for (int i = 0; i <wrdsLen; i++) {
                for (int j = 0; j < twtLen; j++) {
                    if (words[i].equalsIgnoreCase(t[j])) {
                        System.out.println("Volgur Word is "+words[i]);
                        count++;
                    }
                }
            }
        } else if (twtLen <= wrdsLen) {
            //System.out.println("AM Tweet Array " + twtLen);
            for (int i = 0; i <twtLen; i++) {
                for (int j = 0; j < wrdsLen; j++) {
                    if (t[i].equalsIgnoreCase(words[j])) {
                        System.out.println("VVolgur word is "+t[i]);
                        count++;
                    }
                }
            }
        }else{        
            System.out.println("Both are Equal Length " + twtLen);
            for (int i = 0; i <twtLen; i++) {
                for (int j = 0; j < wrdsLen; j++) {
                    if (t[i].equalsIgnoreCase(words[j])) {
                        count++;
                    }
                }
            }        
        }
        return count;
    }

    public static void main(String[] args) {
        AlgorithmWorkFlow awf = new AlgorithmWorkFlow();
        String tweet = "write stress free with the special form cutie pi doll kattamma kathi broke field rubber grip.. bla blab lbal abla bla bla bla blab bla  bla blab lbal abla bla bla bla blab bla ";
        int count = awf.catagoriseTweet(tweet);
        System.out.println("Count = " + count);
    }
}
