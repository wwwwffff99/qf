package com.nnxy.competition;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * 独立的密码测试工具
 */
public class PasswordTest {
    
    public static void main(String[] args) {
        System.out.println("=== 密码加密测试 ===");
        
        // 测试原始示例
        String fun = "MD5";
        String pwd = "123456";
        ByteSource credentialsSalt = ByteSource.Util.bytes("20160216106");
        int i = 1024;
        SimpleHash simpleHash = new SimpleHash(fun, pwd, credentialsSalt, i);
        
        System.out.println("用户名: 20160216106");
        System.out.println("密码: 123456");
        System.out.println("加密后: " + simpleHash);
        System.out.println("数据库中的密码: 2276d2fa78141f91df0b709534a962cb");
        System.out.println("是否匹配: " + simpleHash.toString().equals("2276d2fa78141f91df0b709534a962cb"));
        
        System.out.println("\n=== 测试其他可能的密码 ===");
        
        // 测试学号作为密码
        testPassword("20160216106", "123456");
        testPassword("20160216106", "106");
        testPassword("20160216106", "password");
        testPassword("20160216106", "000000");
        
        // 测试admin
        testPassword("admin", "admin");
        testPassword("admin", "123456");
        testPassword("admin", "password");
    }
    
    private static void testPassword(String username, String password) {
        String fun = "MD5";
        ByteSource credentialsSalt = ByteSource.Util.bytes(username);
        int i = 1024;
        SimpleHash simpleHash = new SimpleHash(fun, password, credentialsSalt, i);
        System.out.println("用户名: " + username + " | 密码: " + password + " | 加密后: " + simpleHash);
    }
}
