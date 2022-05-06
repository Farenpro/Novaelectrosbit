﻿using Novaelectrosbit.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Novaelectrosbit.Windows
{
    /// <summary>
    /// Interaction logic for PayWindow.xaml
    /// </summary>
    public partial class PayWindow : Window
    {
        public PayWindow(double summpay, string email)
        {
            InitializeComponent();
            MainFrame.Navigate(new PaySimulatePage(summpay, email));
        }
    }
}
