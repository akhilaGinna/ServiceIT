using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using ServiceIT.Models;


namespace ServiceIT.Controllers
{
    public class TicketDataController : Controller
    {
        private ServiceITDBEntities db = new ServiceITDBEntities();

        // GET: TicketData
        public ActionResult Index()
        {
            return View(db.tblTicketDatas.ToList());
        }


        public ActionResult Details()
        {
            var res = from l in db.tblTicketDatas.ToList() group l by new { l.ProjectName } into g select new { g.Key.ProjectName, value = g.Distinct().Count() };
            List<String> lstStr = new List<string>();
            List<int> lstInt = new List<int>();

            foreach (var item in res)
            {
                lstStr.Add(item.ProjectName);
                lstInt.Add(item.value);
            }

            var dateGrouped = db.tblTicketDatas.GroupBy(x => x.ProjectName)
                       .Select(x => new { Project = x.Key, Number = x.Distinct().Count() });

            ViewBag.XVal = lstStr;
            ViewBag.Yval = lstInt;
            return View();
        }

        // GET: TicketData/Create
        public ActionResult Create()
        {
            ViewBag.DList = new SelectList(db.tblEmployeeDetails.Select(x => x.DepartmentName).Distinct());
            return View();
        }

        //Action result for ajax call
        [HttpPost]
        public ActionResult GetReqNameByDepartment(string DepartmentName)
        {
            List<String> ListObj = new List<String>();
            ListObj = (db.tblEmployeeDetails.Where(t => t.DepartmentName == DepartmentName).Select(t => t.EmployeeName)).ToList();
            return Json(ListObj);
        }


        // POST: TicketData/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "RequestID,ProjectName,DepartmentName,RequestedBy,Description,TimeStamp")] tblTicketData tblTicketData)
        {
            if (ModelState.IsValid)
            {
                tblTicketData.RequestID = Guid.NewGuid();
                tblTicketData.TimeStamp = DateTime.Now;
                db.tblTicketDatas.Add(tblTicketData);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(tblTicketData);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
