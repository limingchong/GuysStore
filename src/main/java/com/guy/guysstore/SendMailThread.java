package com.guy.guysstore; /**
 * @author: Li Mingchong
 * @date:   2022/10/1
 */

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMailThread extends Thread{

    private String mailAdr;
    private String content;
    private String subject;
    private String cc;
    private String bcc;

    /**
     * @param mailAdr send to mailAdr(address)
     * @param subject the title of email
     * @param content the content of email
     * @param cc      copy to cc(address)
     * @param bcc     blind carbon copy to bcc(address)
     */
    public SendMailThread(String mailAdr, String subject, String content, String cc, String bcc) {
        super();
        this.mailAdr = mailAdr;
        this.content = content;
        this.subject = subject;
        this.cc = cc;
        this.bcc = bcc;
    }

    @Override
    public void run() {
        super.run();
        sendMail();
    }

    public void sendMail(){
        // set sending env
        final Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.qq.com");
        props.put("mail.user", "1013436135@qq.com");
        // smtp code
        props.put("mail.password", "mkgonwfedohhbfhi");//ppbcdjoropaxbecg

        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
        Session mailSession = Session.getInstance(props, authenticator);
        MimeMessage message = new MimeMessage(mailSession);

        // sender
        try{
            InternetAddress form = new InternetAddress(
                    props.getProperty("mail.user"));
            message.setFrom(form);

            // sender adr
            InternetAddress to = new InternetAddress(mailAdr);
            message.setRecipient(RecipientType.TO, to);

            // copy for (cc)
            if (checkEmailFormat(cc)) message.setRecipient(RecipientType.CC, new InternetAddress(cc));

            // blind carbon copy (bcc)
            if (checkEmailFormat(bcc)) message.setRecipient(RecipientType.BCC, new InternetAddress(bcc));

            // title
            message.setSubject(subject);
            // content
            message.setContent(content, "text/html;charset=UTF-8");
            // send
            Transport.send(message);
            System.out.println("Finished!");
        }catch(MessagingException e){
            e.printStackTrace();
        }
    }

    private boolean checkEmailFormat(String str){
        return str.indexOf("@") > 0 && str.indexOf(".",str.indexOf("@")) > str.indexOf("@") + 1 && str.length() > str.indexOf(".",str.indexOf("@")) + 1;
    }


    public static void main(String[] args) {
        SendMailThread d = new SendMailThread(
                "19726006@bjtu.edu.cn",
                "Email test for Dr.Zhao",
                "A test content? <br>[yes/no]",
                "limingchong124@gmail.com",
                "limingchong@yandex.com");
        d.start();
        System.out.println("Sending...");
    }

}