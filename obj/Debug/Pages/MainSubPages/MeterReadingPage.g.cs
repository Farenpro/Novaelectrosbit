﻿#pragma checksum "..\..\..\..\Pages\MainSubPages\MeterReadingPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "CBC794DDF2DF539DAD914F5C49BD62890CBF31EC52F9E4BBA5F6AB62570B2C53"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using Novaelectrosbit.Properties;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Novaelectrosbit.Pages.MainSubPages {
    
    
    /// <summary>
    /// MeterReadingPage
    /// </summary>
    public partial class MeterReadingPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 16 "..\..\..\..\Pages\MainSubPages\MeterReadingPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnMainPageBack;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\..\Pages\MainSubPages\MeterReadingPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TBoxMR;
        
        #line default
        #line hidden
        
        
        #line 56 "..\..\..\..\Pages\MainSubPages\MeterReadingPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnTransferMR;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Novaelectrosbit;component/pages/mainsubpages/meterreadingpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Pages\MainSubPages\MeterReadingPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.BtnMainPageBack = ((System.Windows.Controls.Button)(target));
            
            #line 17 "..\..\..\..\Pages\MainSubPages\MeterReadingPage.xaml"
            this.BtnMainPageBack.Click += new System.Windows.RoutedEventHandler(this.BtnMainPageBack_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.TBoxMR = ((System.Windows.Controls.TextBox)(target));
            return;
            case 3:
            this.BtnTransferMR = ((System.Windows.Controls.Button)(target));
            
            #line 56 "..\..\..\..\Pages\MainSubPages\MeterReadingPage.xaml"
            this.BtnTransferMR.Click += new System.Windows.RoutedEventHandler(this.BtnTransferMR_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

