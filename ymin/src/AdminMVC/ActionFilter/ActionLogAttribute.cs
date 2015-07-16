using System;
using System.Text;
using System.Web.Mvc;
using KingSpread.Model;

namespace AdminMVC.ActionFilter
{
    /// <summary>
    /// 動作記錄 Log
    /// </summary>
    public sealed class ActionLogAttribute : ActionFilterAttribute
    {
        /// <summary>
        /// 說明
        /// </summary>
        public string Description { get; set; }

        public ActionLogAttribute() { }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            using (MVCModelEntities mvc = new MVCModelEntities())
            {
                StringBuilder sb = new StringBuilder();
                if (filterContext.ActionParameters != null && filterContext.ActionParameters.ContainsKey("model"))
                {
                    var model = filterContext.ActionParameters["model"];
                    foreach (var info in model.GetType().GetProperties())
                    {
                        sb.AppendFormat("{0}={1}{2}", info.Name, model.GetType().GetProperty(info.Name).GetValue(model, null), Environment.NewLine);
                    }
                }
                if (filterContext.ActionParameters != null && filterContext.ActionParameters.ContainsKey("id"))
                {
                    var _id = filterContext.ActionParameters["id"];
                    sb.AppendFormat("id = {0}{1}", _id, Environment.NewLine);
                }
                AUDIT audit = new AUDIT();
                audit.AUDIT_ID = Function.GetGuid();
                audit.USER_NAME = filterContext.HttpContext.User.Identity.Name;
                audit.SUCCESS = bool.TrueString;
                audit.MESSAGE = sb.ToString();
                audit.DESCRIPTION = Description;
                //audit.AUDIT_ENTITY_NAME = string.Format("{0}.{1}", filterContext.ActionDescriptor.ControllerDescriptor.ControllerName, filterContext.ActionDescriptor.ActionName);
                //audit.AUDIT_ENTITY_KEY = filterContext.RouteData.Values["id"] != null ? filterContext.RouteData.Values["id"].ToString() : string.Empty;
                audit.CREATE_DATE = DateTime.Now;
                mvc.AUDIT.AddObject(audit);
                mvc.SaveChanges();
            }
            base.OnActionExecuting(filterContext);
        }
    }
}