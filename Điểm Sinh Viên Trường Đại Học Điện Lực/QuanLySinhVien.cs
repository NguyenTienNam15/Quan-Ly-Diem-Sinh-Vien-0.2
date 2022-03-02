using Điểm_Sinh_Viên_Trường_Đại_Học_Điện_Lực.BackEnd;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Điểm_Sinh_Viên_Trường_Đại_Học_Điện_Lực
{
    public partial class QuanLySinhVien : Form
    {
        private string masv;
        public QuanLySinhVien()
        {
            InitializeComponent();
        }

        public string Temp
        {
            get { return masv; }
            set { masv = value; }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string tensv = textBoxtensv.Text;
            string gioitinh = textBoxgioitinh.Text;
            string quequan = textBoxquequan.Text;
            try
            {

                if(QuanLySinhVienBE.Instance.UpdateSinhVien(masv, tensv, gioitinh, quequan) == true )
                {
                    MessageBox.Show("Cập nhật thành công", "Thông báo");
                }    
            }
            catch (Exception exx)
            {
                MessageBox.Show(exx.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                DialogResult h = MessageBox.Show("Bạn có chắc muốn xóa sinh viên này", "Thông báo", MessageBoxButtons.YesNo);
                if (h == DialogResult.Yes)
                {
                    QuanLySinhVienBE.Instance.DeleteSinhVien(masv);
                }
                
            }
            catch (Exception exx)
            {
                MessageBox.Show(exx.Message);
            }
        }

        private void QuanLySinhVien_Load(object sender, EventArgs e)
        {
            textBoxmasv.Text = StudentInfor.Instance.masvtheoma(masv);
            textBoxtensv.Text = StudentInfor.Instance.tensvtheoma(masv);
            textBoxgioitinh.Text = StudentInfor.Instance.gioitinhsvtheoma(masv);
            textBoxquequan.Text = StudentInfor.Instance.quequansvtheoma(masv);

        }

        private void comboBoxkhoa_MouseClick(object sender, MouseEventArgs e)
        {

        }
    }
}
