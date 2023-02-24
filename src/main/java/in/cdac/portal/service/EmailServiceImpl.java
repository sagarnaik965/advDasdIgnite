package in.cdac.portal.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import in.cdac.portal.pojo.QueryForEmail;

@Service
@Configuration
//@PropertySources(value = {@PropertySource("classpath:email_config.properties")})

public class EmailServiceImpl {

	@Autowired
	Environment env;

	static String username = "";
	static String password = "";

	public void sendMail(QueryForEmail querydata, boolean bcc) {
		Properties props = new Properties();
		Session session = null;
		bcc = true;
		String host = env.getProperty("spring.mail.port");
		String from = env.getProperty("spring.mail.username");
		String emailBodyTableData = "<tr>" + "<td>" + "Department Name :" + "</td>" + "<td>" + querydata.DepartmnetName
				+ "</td>" + "</tr>" + "<tr>" + "<td>" + " Name :" + "</td>" + "<td>" + querydata.NameOfContactPerson
				+ "</td>" + " </tr>" + "<tr>" + "<td>" + "Email :" + "</td>" + "<td>" + querydata.EmailAddress + "</td>"
				+ "</tr>" + "<tr>" + "<td>" + "Mobile :" + "</td>" + "<td>" + querydata.MobieNo + "</td>" + "</tr>"
				+ "<tr>" + "<td>" + "Description :" + "</td>" + "<td>" + querydata.Description + "<td>" + "</tr>";
		try {
		
			host = "smtp.gmail.com";
			from = username;
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", "587");
			props.setProperty("mail.smtp.auth", "true");
			props.setProperty("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.ssl.enable", "false");
			props.put("mail.debug", "false");
			session = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});
		} catch (Exception e) {				
		}
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(env.getProperty("toemail")));
			if (bcc) {
				String bccId = env.getProperty("bccId");
				message.setRecipients(Message.RecipientType.BCC, InternetAddress.parse(bccId));
			}
			String ccId = env.getProperty("ccId");
			if (ccId != null) {
				if (ccId.length() >= 1) {
					message.setRecipients(Message.RecipientType.CC, InternetAddress.parse(ccId));
				}
			}
			message.setSubject(env.getProperty("mailsubject"));
			message.setContent(emailBodyTableData, "text/html; charset=utf-8");
			Transport.send(message);
		} catch (MessagingException e) {

		} catch (Exception e) {

		}

	}
}
