/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spam.util;

import com.spam.db.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author DELL
 */
public class UsersUtility {
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public int getUserId(String email){
    int usrID = 0;
        try {
            con = DBConnection.getDBConnection();
            String sql = "select id from userregister where email = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            rs.next();
            usrID = rs.getInt("id");
            
        } catch (Exception e) {
            System.out.println("Error at "+e.getMessage());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return usrID;
    }
    
    public String getUserName(String email){
    String name = null;
        try {
            con = DBConnection.getDBConnection();
            String sql = "select name from userregister where email = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            rs.next();
            name = rs.getString("name");
            
        } catch (Exception e) {
            System.out.println("Error at "+e.getMessage());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return name;
    }
    
    public String getTweetDescription(int tweetid){
    String tweet = null;
        try {
            con = DBConnection.getDBConnection();
            String sql = "select tweet from tweets where id = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, tweetid);
            rs = ps.executeQuery();
            rs.next();
            tweet = rs.getString("tweet");
            
        } catch (Exception e) {
            System.out.println("Error at "+e.getMessage());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return tweet;
    }
    
    public void updateUserStatus(String usrEmail){
    String sts = "spammer";
        try {
            con = DBConnection.getDBConnection();
            String sqlQuery = "update userregister set spamstatus = ? where email = ?";
            ps = con.prepareStatement(sqlQuery);
            ps.setString(1, sts);
            ps.setString(2, usrEmail);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println("Error AT Update User Spam Status "+e.getMessage());
        }finally{
            try {
                ps.close();
                con.close();
                
            } catch (Exception e) {
            }
        }
    }
    public String  getUserStatus(int id){
    String status = null;
        try {
            con = DBConnection.getDBConnection();
            String sql = "select spamstatus from userregister where id = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            status = rs.getString("spamstatus");
            
        } catch (Exception e) {
            System.out.println("Error at "+e.getMessage());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return status;
    }
    
    
    public String  getUserBlockingStatus(int id){
    String status = null;
        try {
            con = DBConnection.getDBConnection();
            String sql = "select logistatus from userregister where id = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            rs.next();
            status = rs.getString("logistatus");
            
        } catch (Exception e) {
            System.out.println("Error at "+e.getMessage());
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (Exception e) {
            }
        }
        return status;
    }
}
