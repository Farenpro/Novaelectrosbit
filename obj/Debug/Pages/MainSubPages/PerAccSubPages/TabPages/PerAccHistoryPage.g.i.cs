﻿#pragma checksum "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "861706EB22A195B05D37FF849C307279AE98E12BF4FF1B4AFDB620C00C31AE18"
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


namespace Novaelectrosbit.Pages.MainSubPages.PerAccSubPages.TabPages {
    
    
    /// <summary>
    /// PerAccHistoryPage
    /// </summary>
    public partial class PerAccHistoryPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 20 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TabControl TCSubPages;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox CBoxPeriod;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label LNoData;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid DGMR;
        
        #line default
        #line hidden
        
        
        #line 58 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid DGPayments;
        
        #line default
        #line hidden
        
        
        #line 82 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid DGReceipts;
        
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
            System.Uri resourceLocater = new System.Uri("/Novaelectrosbit;component/pages/mainsubpages/peraccsubpages/tabpages/peracchisto" +
                    "rypage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
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
            this.TCSubPages = ((System.Windows.Controls.TabControl)(target));
            
            #line 20 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
            this.TCSubPages.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.TCSubPages_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.CBoxPeriod = ((System.Windows.Controls.ComboBox)(target));
            
            #line 26 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
            this.CBoxPeriod.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.CBoxPeriod_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.LNoData = ((System.Windows.Controls.Label)(target));
            return;
            case 4:
            this.DGMR = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 5:
            this.DGPayments = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 6:
            this.DGReceipts = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 7:
            
            #line 104 "..\..\..\..\..\..\Pages\MainSubPages\PerAccSubPages\TabPages\PerAccHistoryPage.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.BtnPrintReceipt_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

