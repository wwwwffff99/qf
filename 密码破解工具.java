import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

/**
 * 大学竞赛报名系统密码破解工具
 * 根据UserRealm.java的加密逻辑生成正确密码
 */
public class PasswordCracker {
    
    public static void main(String[] args) {
        System.out.println("=== 大学竞赛报名系统密码破解工具 ===\n");
        
        // 生成常用账号的密码
        generatePassword("admin", "admin");
        generatePassword("admin", "123456");
        generatePassword("admin", "password");
        generatePassword("admin", "admin123");
        
        generatePassword("test", "test");
        generatePassword("test", "123456");
        
        // 生成学生账号密码
        generatePassword("20160216106", "123456");
        generatePassword("20160216010", "123456");
        generatePassword("20160216011", "123456");
        generatePassword("20160216002", "123456");
        generatePassword("20160216003", "123456");
        
        System.out.println("\n=== SQL更新语句 ===");
        System.out.println("-- 复制以下SQL到MySQL中执行");
        
        // 生成SQL更新语句
        String adminPassword = encryptPassword("admin", "admin123");
        System.out.println("UPDATE t_user SET password = '" + adminPassword + "' WHERE user_name = 'admin';");
        
        String testPassword = encryptPassword("test", "123456");
        System.out.println("UPDATE t_user SET password = '" + testPassword + "' WHERE user_name = 'test';");
        
        String studentPassword = encryptPassword("20160216106", "123456");
        System.out.println("UPDATE t_user SET password = '" + studentPassword + "' WHERE user_name = '20160216106';");
    }
    
    /**
     * 生成并显示密码
     */
    public static void generatePassword(String username, String password) {
        String encrypted = encryptPassword(username, password);
        System.out.println("用户名: " + username + " | 密码: " + password + " | 加密后: " + encrypted);
    }
    
    /**
     * 根据UserRealm.java的逻辑加密密码
     * MD5 + 用户名作盐值 + 1024次迭代
     */
    public static String encryptPassword(String username, String password) {
        String algorithm = "MD5";
        ByteSource salt = ByteSource.Util.bytes(username);
        int iterations = 1024;
        SimpleHash hash = new SimpleHash(algorithm, password, salt, iterations);
        return hash.toString();
    }
}
