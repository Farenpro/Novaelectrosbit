using Novaelectrosbit.Windows;
using QRCoder;
using System;
using System.Net;
using System.Net.Mail;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Imaging;
using WpfAnimatedGif;

namespace Novaelectrosbit.Classes
{
    public static class SubFunctions
    {
        public static void SendEmail(string mailname, string sentemail, string themename, string mail, bool attachqr)
        {
            MailAddress from = new MailAddress("novaelectrosbit@gmail.com", mailname);
            MailAddress to = new MailAddress(sentemail);
            MailMessage m = new MailMessage(from, to);
            m.Subject = themename;
            m.Body = mail;
            m.IsBodyHtml = true;
            if (attachqr)
                m.Attachments.Add(new Attachment($"{AppDomain.CurrentDomain.BaseDirectory}\\qrtemp.jpeg"));
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new NetworkCredential("novaelectrosbit@gmail.com", "Novaelectrosbit2244");
            smtp.EnableSsl = true;
            smtp.Send(m);
        }
        public static void GenerateQR(string data)
        {
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrData = qrGenerator.CreateQrCode(data, QRCodeGenerator.ECCLevel.Q);
            QRCode qr = new QRCode(qrData);
            System.Drawing.Bitmap qrImage = qr.GetGraphic(1);
            qrImage.Save("qrtemp.jpeg", System.Drawing.Imaging.ImageFormat.Jpeg);
        }
        public static void ImgGifInit(Image gifplayer, string path)
        {
            var image = new BitmapImage();
            image.BeginInit();
            image.UriSource = new Uri(path, UriKind.Relative);
            image.EndInit();
            ImageBehavior.SetAnimatedSource(gifplayer, image);
        }
        public static string GenerateCode(int length)
        {
            Random r = new Random();
            string code = string.Empty;
            for (int i = 0; i <= length; i++)
                code += (char)r.Next(48, 57);
            return code;
        }
        public static void TBShowHide(TextBox tbox, PasswordBox pbox, bool check)
        {
            if (check)
            {
                tbox.Text = pbox.Password;
                pbox.Clear();
                tbox.Visibility = Visibility.Visible;
                pbox.Visibility = Visibility.Collapsed;
            }
            else
            {
                pbox.Password = tbox.Text;
                tbox.Text = string.Empty;
                tbox.Visibility = Visibility.Collapsed;
                pbox.Visibility = Visibility.Visible;
            }
        }
        public static void ShowEditWindow(byte type)
        {
            EditInfoWindow editInfoWindow = new EditInfoWindow(type);
            editInfoWindow.ShowDialog();
        }
    }
}
