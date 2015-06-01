using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testModel01
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            method_initialcomponent();

        }

        //登入時 把所有的紀錄給掃過一遍
        public void method_initialcomponent()
        {
            for (int a = 0; a < 7; a++)
            {
                iMbtnA[a] = new ImageButton();
                iMbtnA[a].ImageUrl = str_imgURL_add;
                iMbtnA[a].Click += ImageButton_Click;
                iMbtnA[a].ID = a.ToString();
                if (!IsPostBack)
                    intA_count[a] = 0;
                iMbtnA2[a] = new ImageButton[5];

            }

            PlaceHolder1.Controls.Add(iMbtnA[0]);
            PlaceHolder2.Controls.Add(iMbtnA[1]);
            PlaceHolder3.Controls.Add(iMbtnA[2]);
            PlaceHolder4.Controls.Add(iMbtnA[3]);
            PlaceHolder5.Controls.Add(iMbtnA[4]);
            PlaceHolder6.Controls.Add(iMbtnA[5]);
            PlaceHolder7.Controls.Add(iMbtnA[6]);

            for (int a = 0; a < 7; a++)
            {
                for (int b = 0; b < intA_count[a]; b++)
                    method_add_show(a);
            }

        }

        //按鈕 要增加
        private void ImageButton_Click(object sender, EventArgs e)
        {
            ImageButton imag = (ImageButton)sender;
            int num;
            num = Convert.ToInt32(imag.ID.ToString());
            intA_count[num]++;
            method_add_show(num);

        }

        //選擇一個房間來增加床位
        void method_add_show(int num)
        {

            switch (num + 1)
            {
                case 1:
                    PlaceHolder1.Controls.Remove(iMbtnA[num]);
                    iMbtnA2[num][intA_count[num]] = new ImageButton();
                    iMbtnA2[num][intA_count[num]].ImageUrl = str_imgURL_empty;
                    PlaceHolder1.Controls.Add(iMbtnA2[num][intA_count[num]]);
                    if (intA_count[num] < 4)
                        PlaceHolder1.Controls.Add(iMbtnA[num]);
                    break;
                case 2:
                    PlaceHolder2.Controls.Remove(iMbtnA[num]);
                    iMbtnA2[num][intA_count[num]] = new ImageButton();
                    iMbtnA2[num][intA_count[num]].ImageUrl = str_imgURL_empty;
                    PlaceHolder2.Controls.Add(iMbtnA2[num][intA_count[num]]);
                    if (intA_count[num] < 4)
                        PlaceHolder2.Controls.Add(iMbtnA[num]);
                    break;
                case 3:
                    PlaceHolder3.Controls.Remove(iMbtnA[num]);
                    iMbtnA2[num][intA_count[num]] = new ImageButton();
                    iMbtnA2[num][intA_count[num]].ImageUrl = str_imgURL_empty;
                    PlaceHolder3.Controls.Add(iMbtnA2[num][intA_count[num]]);
                    if (intA_count[num] < 4)
                        PlaceHolder3.Controls.Add(iMbtnA[num]);
                    break;
                case 4:
                    PlaceHolder4.Controls.Remove(iMbtnA[num]);
                    iMbtnA2[num][intA_count[num]] = new ImageButton();
                    iMbtnA2[num][intA_count[num]].ImageUrl = str_imgURL_empty;
                    PlaceHolder4.Controls.Add(iMbtnA2[num][intA_count[num]]);
                    if (intA_count[num] < 4)
                    PlaceHolder4.Controls.Add(iMbtnA[num]);
                    break;
                case 5:
                    PlaceHolder5.Controls.Remove(iMbtnA[num]);
                    iMbtnA2[num][intA_count[num]] = new ImageButton();
                    iMbtnA2[num][intA_count[num]].ImageUrl = str_imgURL_empty;
                    PlaceHolder5.Controls.Add(iMbtnA2[num][intA_count[num]]);
                    if (intA_count[num] < 4)
                        PlaceHolder5.Controls.Add(iMbtnA[num]);
                    break;
                case 6:
                    PlaceHolder6.Controls.Remove(iMbtnA[num]);
                    iMbtnA2[num][intA_count[num]] = new ImageButton();
                    iMbtnA2[num][intA_count[num]].ImageUrl = str_imgURL_empty;
                    PlaceHolder6.Controls.Add(iMbtnA2[num][intA_count[num]]);
                    if (intA_count[num] < 4)
                        PlaceHolder6.Controls.Add(iMbtnA[num]);
                    break;
                case 7:
                    PlaceHolder7.Controls.Remove(iMbtnA[num]);
                    iMbtnA2[num][intA_count[num]] = new ImageButton();
                    iMbtnA2[num][intA_count[num]].ImageUrl = str_imgURL_empty;
                    PlaceHolder7.Controls.Add(iMbtnA2[num][intA_count[num]]);
                    if (intA_count[num] < 4)
                        PlaceHolder7.Controls.Add(iMbtnA[num]);
                    break;
                default:
                    break;
            }
        }

        ImageButton[] iMbtnA = new ImageButton[7];
        ImageButton[][] iMbtnA2 = new ImageButton[7][];
        static int[] intA_count = { 0, 0, 0, 0, 0, 0, 0 };
        string str_imgURL_add = "~/pic/ADD.png";        //加號按鈕的圖案路徑
        string str_imgURL_empty = "~/pic/empty.png"; //空房間的圖案路徑
    }
}