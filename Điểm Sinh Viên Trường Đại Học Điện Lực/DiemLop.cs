using Điểm_Sinh_Viên_Trường_Đại_Học_Điện_Lực.BackEnd;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Điểm_Sinh_Viên_Trường_Đại_Học_Điện_Lực
{
    public partial class DiemLop : Form
    {
        public DiemLop()
        {
            InitializeComponent();
        }
        private void DiemLop_Load(object sender, EventArgs e)
        {
            tabControl1.SelectedIndex = 1;
            ComboBoxHocBong.SelectedIndex = 0;
            LoadData();
            LoadSubject();
        }

        private void ShowformDangNhap()
        {
            DangNhap frmDangNhap = new DangNhap();
            frmDangNhap.ShowDialog();
        }

        private void ShowformDiemChuyenNganhCNPM()
        {
            DiemChuyenNganh frmChuyenNganhCNPM = new DiemChuyenNganh();
            frmChuyenNganhCNPM.LabelMaChuyenNganh.Text = "CNTT-CNPM";
            frmChuyenNganhCNPM.LabelTenChuyenNganh.Text = "Công nghệ Phần Mềm";
            frmChuyenNganhCNPM.ShowDialog();
        }

        private void ShowformDiemChuyenNganhTMDT()
        {
            DiemChuyenNganh frmChuyenNganhCNPM = new DiemChuyenNganh();
            frmChuyenNganhCNPM.LabelMaChuyenNganh.Text = "CNTT-TMDT";
            frmChuyenNganhCNPM.LabelTenChuyenNganh.Text = "Hệ Thống Thương Mại Điện Tử";
            frmChuyenNganhCNPM.ShowDialog();
        }

        private void ShowformDiemChuyenNganhQTANM()
        {
            DiemChuyenNganh frmChuyenNganhCNPM = new DiemChuyenNganh();
            frmChuyenNganhCNPM.LabelMaChuyenNganh.Text = "CNTT-QTANM";
            frmChuyenNganhCNPM.LabelTenChuyenNganh.Text = "Quản Trị An Ninh Mạng";
            frmChuyenNganhCNPM.ShowDialog();
        }

        private void ShowformDiemLopCNPM1()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-CNPM1";
            frmDiemLop.LabelTenLop.Text = "Công nghệ Phần Mềm 1";
            frmDiemLop.ShowDialog();
        }
        private void ShowformDiemLopCNPM2()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-CNPM2";
            frmDiemLop.LabelTenLop.Text = "Công nghệ Phần Mềm 2";
            frmDiemLop.ShowDialog();
        }
        private void ShowformDiemLopCNPM3()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-CNPM3";
            frmDiemLop.LabelTenLop.Text = "Công nghệ Phần Mềm 3";
            frmDiemLop.ShowDialog();
        }

        private void ShowformDiemLopTMDT1()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-TMDT1";
            frmDiemLop.LabelTenLop.Text = "Hệ Thống Thương Mại Điện Tử 1";
            frmDiemLop.ShowDialog();
        }
        private void ShowformDiemLopTMDT2()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-TMDT2";
            frmDiemLop.LabelTenLop.Text = "Hệ Thống Thương Mại Điện Tử 2";
            frmDiemLop.ShowDialog();
        }
        private void ShowformDiemLopTMDT3()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-TMDT3";
            frmDiemLop.LabelTenLop.Text = "Hệ Thống Thương Mại Điện Tử 3";
            frmDiemLop.ShowDialog();
        }
        private void ShowformDiemLopQTANM1()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-QTANM1";
            frmDiemLop.LabelTenLop.Text = "Quản Trị An Ninh Mạng 1";
            frmDiemLop.ShowDialog();
        }
        private void ShowformDiemLopQTANM2()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-QTANM2";
            frmDiemLop.LabelTenLop.Text = "Quản Trị An Ninh Mạng 2";
            frmDiemLop.ShowDialog();
        }
        private void ShowformDiemLopQTANM3()
        {
            DiemLop frmDiemLop = new DiemLop();
            frmDiemLop.LabelMaLop.Text = "CNTT-QTANM3";
            frmDiemLop.LabelTenLop.Text = "Quản Trị An Ninh Mạng 3";
            frmDiemLop.ShowDialog();
        }

        private void Button4_Click(object sender, EventArgs e)
        {
            DialogResult h = MessageBox.Show("Bạn có chắc muốn đăng xuất khỏi tài khoản", "Thông báo", MessageBoxButtons.OKCancel);
            if (h == DialogResult.OK)
            {
                Thread thread = new Thread(new ThreadStart(ShowformDangNhap));
                thread.Start();
                this.Dispose();
            }
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            DialogResult h = MessageBox.Show("Bạn có chắc muốn thoát chương trình", "Thông báo", MessageBoxButtons.OKCancel);
            if(h == DialogResult.OK)
            {
                Application.Exit();
            }    
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDangNhap));
            thread.Start();
            this.Dispose();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            DialogResult h = MessageBox.Show("Bạn có chắc muốn thoát chương trình", "Thông báo", MessageBoxButtons.OKCancel);
            if (h == DialogResult.OK)
            {
                Application.Exit();
            }
        }

        private void ThốngKêĐiểmToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemChuyenNganhCNPM));
            thread.Start();
            this.Close();
        }

     

        private void lớpCNPM1ToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopCNPM1));
            thread.Start();
            this.Close();
        }

        private void lớpCNPM2ToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopCNPM2));
            thread.Start();
            this.Close();
        }

        private void lớpCNPM3ToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopCNPM3));
            thread.Start();
            this.Close();
        }

        private void ThốngKêĐiểmToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemChuyenNganhTMDT));
            thread.Start();
            this.Close();
        }

        private void lớpTMDT1ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopTMDT1));
            thread.Start();
            this.Close();
        }

        private void lớpTMDT2ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopTMDT2));
            thread.Start();
            this.Close();
        }

        private void lớpTMDT3ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopTMDT3));
            thread.Start();
            this.Close();
        }

        private void ThốngKêĐiểmToolStripMenuItem2_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemChuyenNganhQTANM));
            thread.Start();
            this.Close();
        }

        private void lớpQTANM1ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopQTANM1));
            thread.Start();
            this.Close();
        }

        private void lớpQTANM2ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopQTANM2));
            thread.Start();
            this.Close();
        }

        private void lớpQTANM3ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowformDiemLopQTANM3));
            thread.Start();
            this.Close();
        }
        private void LoadData()
        {
            
            
        }


        private void LoadSubject()
        {
            string tenlop = LabelTenLop.Text;
            DataTable MonHocList = LoadDataCombobox.Instance.DanhSachMonHocLop(tenlop);

            List<string> monhoc = new List<string>();
            monhoc.Add("Tất cả");

            for (int i = 0; i < MonHocList.Rows.Count; i++)
            {
                string mh = MonHocList.Rows[i][0].ToString();
                monhoc.Add(mh);
            }

            ComboBoxMonHoc.DataSource = monhoc;
        }

        private void ComboBoxMonHoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tenlop = LabelTenLop.Text;
            string tenmon = ComboBoxMonHoc.Text;
            string idx = ComboBoxMonHoc.SelectedIndex.ToString();
            if (idx == "0")
            {
                
                string query = @"EXEC DiemLopData @tenlop = N'" + tenlop + "', @tenmon = N''";
                DGVDiemLop.DataSource = SQLConnect.Instance.ExcecuteQuery(query);
                DGVDiemLop.AutoResizeColumns();
            }
            else
            {
                string query = @"EXEC DiemLopData @tenlop = N'" + tenlop + "', @tenmon = N'" + tenmon + "'";
                DGVDiemLop.DataSource = SQLConnect.Instance.ExcecuteQuery(query);
                DGVDiemLop.AutoResizeColumns();
            }
        }

        private void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string tenlop = LabelTenLop.Text;
            string tentinhtrang = ComboBoxHocBong.Text;
            string idx = ComboBoxHocBong.SelectedIndex.ToString();
            string tenmon = ComboBoxMonHoc.Text;
            string idx1 = ComboBoxMonHoc.SelectedIndex.ToString();
            if (idx == "0")
            {
                string query = @"EXEC DiemLopData @tenlop = N'" + tenlop + "', @tenmon = N''";
                DGVDiemLop.DataSource = SQLConnect.Instance.ExcecuteQuery(query);
                DGVDiemLop.AutoResizeColumns();
            }
            else if(idx == "1")
            {
                string query = @"EXEC HocbongLop @tenlop = N'" + tenlop + "'";
                DGVDiemLop.DataSource = SQLConnect.Instance.ExcecuteQuery(query);
                DGVDiemLop.AutoResizeColumns();
            }
            else
            {
                string query = @"EXEC CanhbaoLop @tenlop = N'" + tenlop + "'";
                DGVDiemLop.DataSource = SQLConnect.Instance.ExcecuteQuery(query);
                DGVDiemLop.AutoResizeColumns();
            }
        }

     
        private string MASV;
        private void dgvBangDiem_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            ChinhSuaDiem frm = new ChinhSuaDiem();
            frm.temp = MASV;
            frm.ShowDialog();
        }

        private void label13_Click(object sender, EventArgs e)
        {

        }

        private void DGVDiemLop_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int idx = e.RowIndex;
            if (idx >= 0)
            {
                MASV = DGVDiemLop.Rows[idx].Cells["masv"].Value.ToString();
            }


        }

        private void comboBox5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void ShowSuaThongTinSinhVien()
        {
            QuanLySinhVien frm = new QuanLySinhVien();
            frm.Temp = MASV;
            frm.ShowDialog();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            Thread thread = new Thread(new ThreadStart(ShowSuaThongTinSinhVien));
            thread.Start();
        }

        private void button10_Click(object sender, EventArgs e)
        {

        }
    }     
}
