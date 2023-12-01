using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TallerDeReparaciones
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void alertas(String texto)
        {
            string message = texto;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            clases.ClaseEmpleados empleado = new clases.ClaseEmpleados(TextBoxUsuario.Text, TextBoxClave.Text);
            if (clases.ClaseEmpleados.ValidarLogIn() == 1)
            {
                Response.Redirect("Usuarios.aspx");
            }
            else
            {
                alertas("Usuario o clave incorrectos");
            }
        }
    }
}
