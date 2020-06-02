package net.codejava.email;
 
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.time.LocalDateTime;  
import java.time.format.DateTimeFormatter; 

 
/**
 * A utility class for sending e-mail messages
 * @author www.codejava.net
 *
 */
public class EmailUtility {
    public static void sendEmail(String host, String port,
             String toAddress) throws AddressException,
            MessagingException,
            SQLException,
            ClassNotFoundException {
 
        // sets SMTP server properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
 
    
        // creates a new session with an authenticator
        Authenticator auth = new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("GMAIL ID", "PASSWORD");
            }
        };
 
        Session session = Session.getInstance(properties, auth);
 
        // creates a new e-mail message
        Message msg = new MimeMessage(session);
 
        msg.setFrom(new InternetAddress("GMAIL of Sender"));
        InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
        msg.setRecipients(Message.RecipientType.TO, toAddresses);
        msg.setSubject("Forget Password Request");
        msg.setSentDate(new Date());
        int otp=(int) Math.round(Math.random()*1000) ;
        msg.setText("Your One Time Password (OTP) is :"+otp);
  LocalDateTime myDateObj = LocalDateTime.now();  
  DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("HH:mm:ss");
  String formattedDate = myDateObj.format(myFormatObj);
        // sends the e-mail
        Transport.send(msg);
        
        
        
        
        
        
         String url = "jdbc:mysql://localhost:3306/round1";
        String user = "root";
        String password = "root";
 
        
 
        try {
             Class.forName("com.mysql.jdbc.Driver");
            try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/round1", "root", "root")) {
                String sql = "INSERT INTO otp (sendto, otp, otptime) values (?, ?, ?)";
                PreparedStatement statement = conn.prepareStatement(sql);
                
                statement.setString(1, toAddress);
                statement.setInt(2, otp);
                statement.setString(3, formattedDate);
                
                
                int row = statement.executeUpdate();
                if (row > 0) {
                    System.out.println("A contact was inserted with photo image.");
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
 
    }
}