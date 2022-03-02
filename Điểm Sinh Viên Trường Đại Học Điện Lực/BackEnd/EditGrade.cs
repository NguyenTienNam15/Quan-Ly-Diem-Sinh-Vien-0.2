using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Điểm_Sinh_Viên_Trường_Đại_Học_Điện_Lực.BackEnd
{
    class EditGrade
    {
        private static EditGrade instance;

        internal static EditGrade Instance 
        {
            get { if (instance == null) instance = new EditGrade(); return EditGrade.instance; }
            private set { instance = value; } 
        }

        private EditGrade() { }

        public bool CheckEdit(string masv, string mamon, float diemlan1, float diemlan2, float diemketthuc)
        {
            string query = @"EXEC EditGrade @masv , @mamon , @diemlan1 , @diemlan2 , @diemKetthuc";
            int result = SQLConnect.Instance.ExecuteNoneQuery(query, new object[] { masv, mamon, diemlan1, diemlan2, diemketthuc });

            return result > 0;
        }

        public bool SumEdit(string masv, string mamon, float diemhe10, float diemhe4)
        {
            string query = @"EXEC EditSum @masv , @mamon , @diemhe10 , @diemhe4";
            int result = SQLConnect.Instance.ExecuteNoneQuery(query, new object[] { masv, mamon, diemhe10, diemhe4 });

            return result > 0;
        }
    }
}
