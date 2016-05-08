using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Email : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Test Message";
        myMessage.Body = "Hello World, from Planet Wrox";
        myMessage.From = new MailAddress("katalisstone@gmail.com", "Paul Gantengs");
        myMessage.To.Add(new MailAddress("adam.japal@gmail.com", "Adam Maho"));

        SmtpClient mySmptClient = new SmtpClient();
        mySmptClient.Send(myMessage);
    }
}