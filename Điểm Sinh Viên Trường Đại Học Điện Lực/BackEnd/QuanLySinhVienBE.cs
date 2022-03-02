using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Điểm_Sinh_Viên_Trường_Đại_Học_Điện_Lực.BackEnd
{
    class QuanLySinhVienBE
    {
        private static QuanLySinhVienBE instance;

        internal static QuanLySinhVienBE Instance 
        { 
            get { if (instance == null) instance = new QuanLySinhVienBE(); return QuanLySinhVienBE.instance; }
            private set { instance = value; } 
        }

        private QuanLySinhVienBE() { }

        public bool UpdateSinhVien(string masv, string tensv, string gioitinh,  string quequan)
        {
            string query = @"EXEC UpdateSinhVien @masv , @tensv , @gioitinh , @quequan";
            int result = SQLConnect.Instance.ExecuteNoneQuery(query, new object[] { masv, tensv, gioitinh, quequan });

            return result > 0;
        }

        public bool DeleteSinhVien(string masv)
        {
            string query = @"EXEC DeleteSinhVien @masv";
            int result = SQLConnect.Instance.ExecuteNoneQuery(query, new object[] { masv});

            return result > 0;
        }


    }
}
