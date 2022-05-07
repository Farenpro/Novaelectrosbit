using Novaelectrosbit.Classes;
using Novaelectrosbit.Models;
using Novaelectrosbit.Windows;
using System;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using Word = Microsoft.Office.Interop.Word;

namespace Novaelectrosbit.Pages
{
    /// <summary>
    /// Interaction logic for PaySimulatePage.xaml
    /// </summary>
    public partial class PaySimulatePage : Page
    {
        PayWindow window;
        public double SummPay { get; set; }
        public string CardNum { get; set; }
        public string CardMonth { get; set; }
        public string CardYear { get; set; }
        public string CardCVV2 { get; set; }
        public DateTime DateTimeNow { get; set; }
        public string CardNumSecured { get; set; }
        public string TransID { get; set; }
        public string AuthCode { get; set; }
        public string RRN { get; set; }
        public double NDS { get; set; }
        public int FD { get; set; }
        public string FN { get; set; }
        public string FPD { get; set; }
        public string Email { get; set; }
        public string MachineCode { get; set; }

        public PaySimulatePage(double summpay, string email)
        {
            InitializeComponent();
            SummPay = summpay;
            Email = email;
            window = Application.Current.Windows.OfType<PayWindow>().SingleOrDefault();
            window.DataContext = this;
            DataContext = this;
            LRequistes.DataContext = App.CurPay;
        }

        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            App.Messages.ShowInfo(Properties.Resources.PayCancel);
            window.Close();
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            App.Messages.ShowInfo(Properties.Resources.PaySuccess);
            window.Close();
        }

        private void BtnPay_Click(object sender, RoutedEventArgs e)
        {
            if (CardNum != null && CardMonth != null && CardYear != null && CardCVV2 != null)
            {
                if (Checking.MonthCheck(CardMonth))
                {
                    if (Checking.YearCheck(CardYear))
                    {
                        if (Checking.MAndYCheck(CardMonth, CardYear))
                            HideAndFirstPlay();
                        else
                            App.Messages.ShowError(Properties.Resources.CardExpired);
                    }
                    else
                        App.Messages.ShowError(Properties.Resources.CardYearError);
                }
                else
                    App.Messages.ShowError(Properties.Resources.CardMonthError);
            }
            else
                App.Messages.ShowError(Properties.Resources.NeedToFillCardRequired);
        }

        private void BtnPrint_Click(object sender, RoutedEventArgs e)
        {
            string path = System.IO.Path.Combine(Directory.GetParent(Directory.GetCurrentDirectory()).Parent.FullName, "Resources");
            path = $"{path}\\ЧекШаблон.docx";
            Word.Application app = new Word.Application();
            Word.Document document = app.Documents.Add(path);
            document.Bookmarks["PerAcc"].Range.Text = App.CurPay.RequisitesPersonalAccount;
            document.Bookmarks["SummPay1"].Range.Text = SummPay.ToString();
            document.Bookmarks["SummPay2"].Range.Text = SummPay.ToString();
            document.Bookmarks["NDS1"].Range.Text = NDS.ToString();
            document.Bookmarks["SummPay3"].Range.Text = SummPay.ToString();
            document.Bookmarks["NDS2"].Range.Text = NDS.ToString();
            document.Bookmarks["SummPay4"].Range.Text = SummPay.ToString();
            document.Bookmarks["MachineCode"].Range.Text = MachineCode;
            document.Bookmarks["DateTimeGived"].Range.Text = DateTimeNow.ToString();
            document.Bookmarks["FD"].Range.Text = FD.ToString();
            document.Bookmarks["FN"].Range.Text = FN;
            document.Bookmarks["FPD"].Range.Text = FPD;
            document.Bookmarks["UserEmail"].Range.Text = Email;
            Word.Range QRrange = document.Bookmarks["QR"].Range;
            object saveWithDocument = true;
            document.InlineShapes.AddPicture($"{AppDomain.CurrentDomain.BaseDirectory}\\qrtemp.jpeg", Type.Missing, saveWithDocument, QRrange);
            app.Visible = true;
        }

        private void HideAndFirstPlay()
        {
            GridPayInfo.Visibility = mDCardPayCardBack.Visibility = mDCardPayCardFront.Visibility = SPBtnsPay.Visibility = Visibility.Collapsed;
            ImgGifLoad.Visibility = Visibility.Visible;
            SubFunctions.ImgGifInit(ImgGifLoad, @"\Resources\PayLoading.gif");
        }

        private void PrepareForBill()
        {
            DateTimeNow = DateTime.Now;
            SecureNum(CardNum);
            GenerateTransID();
            AuthCode = SubFunctions.GenerateCode(6);
            RRN = SubFunctions.GenerateCode(12);
            NDS = Math.Round((SummPay * 20) / 120, 2);
            FN = SubFunctions.GenerateCode(16);
            FPD = SubFunctions.GenerateCode(9);
            MachineCode = SubFunctions.GenerateCode(4);
        }

        private void SecureNum(string CardNum)
        {
            char[] nums = CardNum.ToCharArray();
            for (int i = 6; i <= 12; i++)
                nums[i] = 'x';
            CardNumSecured = new string(nums);
        }

        private void GenerateTransID()
        {
            Random r = new Random(), r2 = new Random();
            for (int i = 0; i <= 10; i++)
            {
                if (r.Next(1, 2) == 1)
                    TransID += (char)r2.Next(48, 57);
                else
                    TransID += (char)r2.Next(65, 90);
            }
        }

        private void ImgGifPlayer_AnimationCompleted(object sender, RoutedEventArgs e)
        {
            ImgGifLoad.Visibility = Visibility.Collapsed;
            ImgGifSuccess.Visibility = Visibility.Visible;
            SubFunctions.ImgGifInit(ImgGifSuccess, @"\Resources\PayComplete.gif");
        }

        private void ImgGifSuccess_AnimationCompleted(object sender, RoutedEventArgs e)
        {
            ImgGifSuccess.Visibility = Visibility.Collapsed;
            SPBtnsFinal.Visibility = mDCardFinal.Visibility = Visibility.Visible;
            PrepareForBill();
            LDesc.Content = $"Оплата по ЛС:{App.CurPay.RequisitesPersonalAccount}";
            LCardNumSecured.Content = CardNumSecured;
            LTransID.Content = TransID;
            LDateTimeNow.Content = DateTimeNow.ToString();
            LAuthCode.Content = AuthCode;
            LRRN.Content = RRN;
            LSummPrice.Content = $"{SummPay} руб";
            FD = 1;
            double balance = 0;
            if (App.Database.RequisitesPayments.Count() > 0)
                FD = App.Database.RequisitesPayments.Select(p => p.ID).Max() + 1;
            if (App.CurPay.Requisite.RequisitesPayments.Count > 0)
                balance = App.CurPay.Requisite.RequisitesPayments.Select(p => p.BalanceAfterPay).LastOrDefault();
            RequisitesPayment requisitesPayment = new RequisitesPayment()
            {
                ID = FD,
                PersonalAccount = App.CurPay.RequisitesPersonalAccount,
                PaymentTypeID = 1,
                PayDate = DateTimeNow,
                PayAmount = SummPay,
                BalanceAfterPay = balance + SummPay
            };
            App.Database.RequisitesPayments.Add(requisitesPayment);
            App.Database.SaveChanges();
            SubFunctions.GenerateQR($"Name=Кассовый чек. Приход,\n" +
                $"Time={DateTimeNow}\n" +
                $"FN={FN}\n" +
                $"FD={FD}\n" +
                $"FPD={FPD}\n");
            SubFunctions.SendEmail("Квитанция на оплату", Email, $"Кассовый чек № {FD} от {DateTimeNow}",
                "<h1>Кассовый чек. Приход</h1>" + "<hr>" +
                    $"<p>1. Электроэнергия по ЛС №{App.CurPay.RequisitesPersonalAccount}</p>" +
                    $"<p>1 x {SummPay}                  {SummPay}</p>" +
                    $"<p>Товар                      Полный расчет</p>" +
                    $"<p>НДС 20%                            {NDS}</p>" + "<hr>" +
                    $"<p>Итого:                         {SummPay}</p>" +
                    $"<p>НДС 20%                            {NDS}</p>" +
                    $"<p>Наличными:                             0</p>" +
                    $"<p>Безналичными:                  {SummPay}</p>" +
                    $"<p>Аванс:                                 0</p>" +
                    $"<p>В кредит:                              0</p>" +
                    $"<p>Обмен:                                 0</p>" + "<hr>" +
                    $"<p>Пользователь                  ООО\"НЭС\"</p>" +
                    $"<p>ИНН                           2637233896</p>" +
                    $"<p>Адрес расчетов                125419, г. Москва, ул. Весенняя, 38, оф. 15</p>" +
                    $"<p>Номер автомата        KKT00{MachineCode}</p>" +
                    $"<p>СНО                                  ОСН</p>" +
                    $"<p>Дата выдачи ФД             {DateTimeNow}</p>" +
                    $"<p>ФД                                  {FD}</p>" +
                    $"<p>ФН                                  {FN}</p>" +
                    $"<p>РН ККТ                  0269437003001363</p>" +
                    $"<p>Версия ФФД                          1.05</p>" +
                    $"<p>ОФД                          ООО\"Ярус\"</p>" +
                    $"<p>ФПД                                {FPD}</p>" +
                    $"<p>Адрес электронной почты отправителя чека:       novaelectrosbit@gmail.com</p>" +
                    $"<p>Электронный адрес покупателя:    {Email}</p>" +
                    $"<p>Сайт ОФД                       ofd-ya.ru</p>" +
                    $"<p>Сайт ФНС                www.nalog.gov.ru</p>" +
                    $"<p>Код формы ФД                           3</p>", true);
        }
    }
}
