﻿#pragma checksum "..\..\DataDaseWindow.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "6F1D102AAEB39E40D7C6F4F9BEDCE436C3AC11C15F7F94D8CE5CEB8C91CA7647"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using PamagitMenzPoxitiliIDerjatVZalojnikax;
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


namespace PamagitMenzPoxitiliIDerjatVZalojnikax {
    
    
    /// <summary>
    /// DataDaseWindow
    /// </summary>
    public partial class DataDaseWindow : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 11 "..\..\DataDaseWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid Reqst;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\DataDaseWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button CreateButton;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\DataDaseWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Update;
        
        #line default
        #line hidden
        
        
        #line 20 "..\..\DataDaseWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Delete;
        
        #line default
        #line hidden
        
        
        #line 21 "..\..\DataDaseWindow.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button Exti;
        
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
            System.Uri resourceLocater = new System.Uri("/PamagitMenzPoxitiliIDerjatVZalojnikax;component/datadasewindow.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\DataDaseWindow.xaml"
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
            this.Reqst = ((System.Windows.Controls.DataGrid)(target));
            
            #line 11 "..\..\DataDaseWindow.xaml"
            this.Reqst.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.agentGrid_MouseDown);
            
            #line default
            #line hidden
            
            #line 11 "..\..\DataDaseWindow.xaml"
            this.Reqst.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.ClientDataGrid_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.CreateButton = ((System.Windows.Controls.Button)(target));
            
            #line 18 "..\..\DataDaseWindow.xaml"
            this.CreateButton.Click += new System.Windows.RoutedEventHandler(this.CreateButton_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.Update = ((System.Windows.Controls.Button)(target));
            
            #line 19 "..\..\DataDaseWindow.xaml"
            this.Update.Click += new System.Windows.RoutedEventHandler(this.Update_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.Delete = ((System.Windows.Controls.Button)(target));
            
            #line 20 "..\..\DataDaseWindow.xaml"
            this.Delete.Click += new System.Windows.RoutedEventHandler(this.Delete_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Exti = ((System.Windows.Controls.Button)(target));
            
            #line 21 "..\..\DataDaseWindow.xaml"
            this.Exti.Click += new System.Windows.RoutedEventHandler(this.Exti_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

