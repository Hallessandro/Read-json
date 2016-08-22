/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package processamento;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

/**
 *
 * @author Hallessandro
 */
public class Email {
    public static void main(String[] args) throws EmailException {
        SimpleEmail email = new SimpleEmail();
        email.setHostName("mail.myserver.com"); // o servidor SMTP para envio do e-mail
        email.addTo("email", "nome"); //destinatário
        email.setAuthentication("email", "senha");
        email.setFrom("hd.jesus93@gmail.com", "Me"); // remetente
        email.setSubject("Mensagem de Teste"); // assunto do e-mail
        email.setMsg("Teste de Email utilizando commons-email"); //conteudo do e-mail
        email.send(); //envia o e-mail
    }
}
  
