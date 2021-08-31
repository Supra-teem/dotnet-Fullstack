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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace circle_diameter
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string dia = (2 * Convert.ToInt32(tb1.Text)).ToString();
            string circum = (2 * 3.141 * Convert.ToInt32(tb1.Text)).ToString();
            MessageBox.Show(dia,"This is Diameter");
            MessageBox.Show(circum,"Circumference");
        }
    }
}
