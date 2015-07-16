using System;
using System.ComponentModel;
using System.Windows.Forms;
using KingSpread.Model;
using KingSpread.Model.AD;

namespace ADTester
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Start();
        }

        void Start()
        {
            backgroundWorker1.RunWorkerAsync(textBox1.Text);
        }

        private void backgroundWorker1_RunWorkerCompleted(object sender, System.ComponentModel.RunWorkerCompletedEventArgs e)
        {
            richTextBox1.Text = e.Result.ToString();
        }

        private void backgroundWorker1_DoWork(object sender, System.ComponentModel.DoWorkEventArgs e)
        {
            BackgroundWorker worker = sender as BackgroundWorker;
            string account = (string)e.Argument;
            if (account.IsNullOrEmpty())
                e.Result = Ldap.GetADAllAccount();
            else if (!account.IsNullOrEmpty() && !textBox2.Text.IsNullOrEmpty())
                e.Result = Ldap.GetADByAccountAndPassword(account, textBox2.Text);
            else
                e.Result = Ldap.GetADAllAccount(account);
        }

        private void backgroundWorker1_ProgressChanged(object sender, System.ComponentModel.ProgressChangedEventArgs e)
        {
            //label1.Text = string.Format("搜尋 {0} 中，{1} 秒...", e.ProgressPercentage, TotalSecond);
        }
    }
}
