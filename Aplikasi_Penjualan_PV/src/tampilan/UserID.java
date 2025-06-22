package tampilan;
import javax.swing.JOptionPane;


public class UserID extends javax.swing.JFrame {
private static String userLogin;
    /**
     * Creates new form Login
     */
    public UserID() {
        
        setLocationRelativeTo(null);
    }
    
    public static String getUserLogin() {
        return userLogin;
    }
    
    public static void setUserLogin(String user){
        userLogin = user;
    }
    
    public static boolean isUserLogged(){
        return userLogin != null && !userLogin.isEmpty();
    }
    
    public static void logout(){
        userLogin = null;
    }                    
}