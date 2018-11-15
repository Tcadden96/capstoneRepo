using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabScheduleingAssistant
{
    public partial class Downloadables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLab1_Click(object sender, EventArgs e)
        {
            /*string strLocalFilePath = "img\\serc.jpg";
            
            string fileName = "serc.jpg";

            Response.Clear();

            Stream iStream = null;

            const int bufferSize = 64 * 1024;

            byte[] buffer = new Byte[bufferSize];

            int length;

            long dataToRead;

            try
            {
                iStream = new FileStream(strLocalFilePath, FileMode.Open, FileAccess.Read, FileShare.Read);
                dataToRead = iStream.Length;
                Response.ContentType = "application/octet-stream";
                Response.AddHeader("Content-Disposition", "attachment; filename=" + fileName);

                while (dataToRead > 0)
                {
                    if (Response.IsClientConnected)
                    {
                        length = iStream.Read(buffer, 0, bufferSize);
                        Response.OutputStream.Write(buffer, 0, length);
                        Response.Flush();
                        buffer = new byte[bufferSize];
                        dataToRead = dataToRead - length;
                    }
                    else
                    {
                        //prevent infinate loop on disconnect
                        dataToRead = -1;
                    }
                }
            }
            catch (Exception ex)
            {
                //Your exception handling here
            }
            finally
            {
                if (iStream != null)
                {
                    iStream.Close();
                }
                Response.Close();
            }
            */

            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#DownloadDisplay').modal('show');</script>", false);

        }

        protected void btnLab2_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#DownloadDisplay').modal('show');</script>", false);

        }

        protected void btnLab3_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#DownloadDisplay').modal('show');</script>", false);

        }

        protected void btnLab4_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#DownloadDisplay').modal('show');</script>", false);

        }

        protected void btnLab5_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", "<script>$('#DownloadDisplay').modal('show');</script>", false);

        }
    }
}