using Điểm_Sinh_Viên_Trường_Đại_Học_Điện_Lực.BackEnd;
using System;
using System.CodeDom.Compiler;
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
    public partial class ChinhSuaDiem : Form
    {
        private string masv;
        public ChinhSuaDiem()
        {
            InitializeComponent();
        }

        private void ChinhSuaDiem_Load(object sender, EventArgs e)
        {
            LoadInfor();
            LoadDataGridView();
        }

        public string temp {
            get { return masv; }
            set { masv = value; }
        }

        private void LoadInfor()
        {
            labelMaSv.Text = StudentInfor.Instance.masvtheoma(masv);
            labelTenSv.Text = StudentInfor.Instance.tensvtheoma(masv);
            labelTenLop.Text = StudentInfor.Instance.tenloptheoma(masv);
            labelTenChuyenNganh.Text = StudentInfor.Instance.tenchuyennganhtheoma(masv);    
        }

        private void LoadDataGridView()
        {
            string query = @"SELECT * FROM BangDiemSinhVien WHERE masv = N'"+ masv + "'";
            DataTable data = SQLConnect.Instance.ExcecuteQuery(query);
            dgvBangDiem.DataSource = data;
            dgvBangDiem.AutoResizeColumns();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

   

        private void dgvBangDiem_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int idx = e.RowIndex;
            if(idx >= 0)
            {
                labelTenMonHoc.Text = dgvBangDiem.Rows[idx].Cells["tenmon"].Value.ToString();
                labelMaMonHoc.Text = dgvBangDiem.Rows[idx].Cells["mamon"].Value.ToString();
                labeldiemhe10.Text = dgvBangDiem.Rows[idx].Cells["diemtbhe10"].Value.ToString();
                labeldiemhe4.Text = dgvBangDiem.Rows[idx].Cells["diemtbhe4"].Value.ToString();
                textBoxDiemLan1.Text = dgvBangDiem.Rows[idx].Cells["diemlan1"].Value.ToString();
                textBoxDiemLan2.Text = dgvBangDiem.Rows[idx].Cells["diemlan2"].Value.ToString();
                textBoxDiemKetthuc.Text = dgvBangDiem.Rows[idx].Cells["diemthiketthuc"].Value.ToString();

            }    
        }

        private void button7_Click_1(object sender, EventArgs e)
        {

            string diemlan1 = textBoxDiemLan1.Text;
            string diemlan2 = textBoxDiemLan2.Text;
            string diemhe4 = labeldiemhe4.Text;
            string mamonhoc = labelMaMonHoc.Text;
            string diemketthuc = textBoxDiemKetthuc.Text;
            float dl1 = float.Parse(diemlan1);
            float dl2 = float.Parse(diemlan2);
            float dkt = float.Parse(diemketthuc);
            float dh4 = float.Parse(diemhe4);

            if (EditGrade.Instance.CheckEdit(masv, mamonhoc, dl1, dl2, dkt) == true)
            {
                float diemhe10 = (((dl1 + dl2) / 2) * 3 + dkt * 7) / 10;
                string d10 = diemhe10.ToString();   
                labeldiemhe10.Text = d10;
                float diemh4 =diemhe10 * 4/10;
                string h4 = diemh4.ToString();
                labeldiemhe4.Text = h4;
                EditGrade.Instance.SumEdit(masv, mamonhoc , diemhe10, diemh4);
            }

            string query = @"SELECT * FROM BangDiemSinhVien WHERE masv = N'" + masv + "'";
            DataTable data = SQLConnect.Instance.ExcecuteQuery(query);
            dgvBangDiem.DataSource = data;
            dgvBangDiem.AutoResizeColumns();
        }

        private void label13_Click(object sender, EventArgs e)
        {

        }
    }
}
