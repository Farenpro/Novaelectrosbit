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
        /// <summary>
        /// Сообщение с информацией
        /// </summary>
        /// <param name="info"></param>
        /// <returns></returns>
        public MessageBoxResult ShowInfo(string info)
        {
            CustomMaterialMessageBox MessageBox = new CustomMaterialMessageBox()
            {
                BtnOk = { Content = "Ок", Background = Brushes.DodgerBlue },
                BtnCancel = { Visibility = Visibility.Hidden },
                MainContentControl = { Background = Brushes.White },
                TitleBackgroundPanel = { Background = Brushes.Orange },
                BtnCopyMessage = { Visibility = Visibility.Hidden },
                BorderBrush = Brushes.Black,
                BorderThickness = new Thickness(1),
                SizeToContent = SizeToContent.WidthAndHeight,
                TxtTitle = { Text = "Информация" },
                TxtMessage = { Text = info }
            };
            SystemSounds.Exclamation.Play();
            MessageBox.Show();
            MessageBox.Dispose();
            return MessageBox.Result;
        }
        /// <summary>
        /// Сообщение с ошибкой
        /// </summary>
        /// <param name="error"></param>
        /// <returns></returns>
        public MessageBoxResult ShowError(string error)
        {
            CustomMaterialMessageBox MessageBox = new CustomMaterialMessageBox()
            {
                BtnOk = { Content = "Ок", Background = Brushes.DodgerBlue },
                BtnCancel = { Visibility = Visibility.Hidden },
                MainContentControl = { Background = Brushes.White },
                TitleBackgroundPanel = { Background = Brushes.Orange },
                BtnCopyMessage = { Visibility = Visibility.Hidden },
                BorderBrush = Brushes.Black,
                BorderThickness = new Thickness(1),
                SizeToContent = SizeToContent.WidthAndHeight,
                TxtTitle = { Text = "Ошибка" },
                TxtMessage = { Text = error }
            };
            SystemSounds.Hand.Play();
            MessageBox.Show();
            MessageBox.Dispose();
            return MessageBox.Result;
        }
        /// <summary>
        /// Сообщение с предупреждением
        /// </summary>
        /// <param name="warning"></param>
        /// <returns></returns>
        public MessageBoxResult ShowWarning(string warning)
        {
            CustomMaterialMessageBox MessageBox = new CustomMaterialMessageBox()
            {
                BtnOk = { Content = "Ок", Background = Brushes.DodgerBlue },
                BtnCancel = { Visibility = Visibility.Hidden },
                MainContentControl = { Background = Brushes.White },
                TitleBackgroundPanel = { Background = Brushes.Orange },
                BtnCopyMessage = { Visibility = Visibility.Hidden },
                BorderBrush = Brushes.Black,
                BorderThickness = new Thickness(1),
                SizeToContent = SizeToContent.WidthAndHeight,
                TxtTitle = { Text = "Внимание" },
                TxtMessage = { Text = warning }
            };
            SystemSounds.Exclamation.Play();
            MessageBox.Show();
            MessageBox.Dispose();
            return MessageBox.Result;
        }
        /// <summary>
        /// Сообщение с вопросом
        /// </summary>
        /// <param name="question"></param>
        /// <returns></returns>
        public MessageBoxResult ShowQuestion(string question)
        {
            CustomMaterialMessageBox MessageBox = new CustomMaterialMessageBox()
            {
                BtnOk = { Content = "Да", Background = Brushes.DodgerBlue },
                BtnCancel = { Content = "Нет", Background = Brushes.Red},
                MainContentControl = { Background = Brushes.White },
                TitleBackgroundPanel = { Background = Brushes.Orange },
                BtnCopyMessage = { Visibility = Visibility.Hidden },
                BorderBrush = Brushes.Black,
                BorderThickness = new Thickness(1),
                SizeToContent = SizeToContent.WidthAndHeight,
                TxtTitle = { Text = "Внимание" },
                TxtMessage = { Text = question }
            };
            SystemSounds.Question.Play();
            MessageBox.Show();
            MessageBox.Dispose();
            return MessageBox.Result;
        }
        public MessageBoxResult ShowNoFunc()
        {
            CustomMaterialMessageBox MessageBox = new CustomMaterialMessageBox()
            {
                BtnOk = { Content = "Да", Background = Brushes.DodgerBlue },
                BtnCancel = { Visibility = Visibility.Hidden },
                MainContentControl = { Background = Brushes.White },
                TitleBackgroundPanel = { Background = Brushes.Orange },
                BtnCopyMessage = { Visibility = Visibility.Hidden },
                BorderBrush = Brushes.Black,
                BorderThickness = new Thickness(1),
                SizeToContent = SizeToContent.WidthAndHeight,
                TxtTitle = { Text = "Внимание" },
                TxtMessage = { Text = "Данный функционал находится в разработке" }
            };
            SystemSounds.Exclamation.Play();
            MessageBox.Show();
            MessageBox.Dispose();
            return MessageBox.Result;
        }
    }
}
