using BespokeFusion;
using System.Media;
using System.Windows;
using System.Windows.Media;

namespace Novaelectrosbit.Classes
{
    /// <summary>
    /// Класс шаблонов сообщений
    /// </summary>
    public class MessagesClass
    {
        public CustomMaterialMessageBox InitializeMessageBox()
        {
            CustomMaterialMessageBox messageBox = new CustomMaterialMessageBox()
            {
                BtnOk = { Content = "Ок", Background = Brushes.DodgerBlue },
                BtnCancel = { Visibility = Visibility.Hidden },
                MainContentControl = { Background = Brushes.White },
                TitleBackgroundPanel = { Background = Brushes.Orange },
                BtnCopyMessage = { Visibility = Visibility.Hidden },
                BorderBrush = Brushes.Black,
                BorderThickness = new Thickness(1),
                SizeToContent = SizeToContent.WidthAndHeight
            };
            return messageBox;
        }
        /// <summary>
        /// Сообщение с информацией
        /// </summary>
        /// <param name="info"></param>
        /// <returns></returns>
        public MessageBoxResult ShowInfo(string info)
        {
            CustomMaterialMessageBox messageBox = InitializeMessageBox();
            messageBox.TxtTitle.Text = "Информация";
            messageBox.TxtMessage.Text = info;
            SystemSounds.Exclamation.Play();
            messageBox.Show();
            return messageBox.Result;
        }
        /// <summary>
        /// Сообщение с ошибкой
        /// </summary>
        /// <param name="error"></param>
        /// <returns></returns>
        public MessageBoxResult ShowError(string error)
        {
            CustomMaterialMessageBox messageBox = InitializeMessageBox();
            messageBox.TxtTitle.Text = "Ошибка";
            messageBox.TxtMessage.Text = error;
            SystemSounds.Hand.Play();
            messageBox.Show();
            return messageBox.Result;
        }
        /// <summary>
        /// Сообщение с предупреждением
        /// </summary>
        /// <param name="warning"></param>
        /// <returns></returns>
        public MessageBoxResult ShowWarning(string warning)
        {
            CustomMaterialMessageBox messageBox = InitializeMessageBox();
            messageBox.TxtTitle.Text = "Внимание";
            messageBox.TxtMessage.Text = warning;
            SystemSounds.Exclamation.Play();
            messageBox.Show();
            return messageBox.Result;
        }
        /// <summary>
        /// Сообщение с вопросом
        /// </summary>
        /// <param name="question"></param>
        /// <returns></returns>
        public MessageBoxResult ShowQuestion(string question)
        {
            CustomMaterialMessageBox messageBox = InitializeMessageBox();
            messageBox.BtnOk.Content = "Да";
            messageBox.BtnCancel.Visibility = Visibility.Visible;
            messageBox.BtnCancel.Content = "Нет";
            messageBox.BtnCancel.Background = Brushes.Red;
            messageBox.TxtTitle.Text = "Внимание";
            messageBox.TxtMessage.Text = question;
            SystemSounds.Exclamation.Play();
            messageBox.Show();
            return messageBox.Result;
        }
    }
}
