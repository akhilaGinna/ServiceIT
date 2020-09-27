using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
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

        // GET: TicketData/Details/5
        public ActionResult Details(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTicketData tblTicketData = db.tblTicketDatas.Find(id);
            if (tblTicketData == null)
            {
                return HttpNotFound();
            }
            return View(tblTicketData);
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

        // GET: TicketData/Edit/5
        public ActionResult Edit(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTicketData tblTicketData = db.tblTicketDatas.Find(id);
            if (tblTicketData == null)
            {
                return HttpNotFound();
            }
            return View(tblTicketData);
        }

        // POST: TicketData/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "RequestID,ProjectName,DepartmentName,RequestedBy,Description,TimeStamp")] tblTicketData tblTicketData)
        {
            if (ModelState.IsValid)
            {
                db.Entry(tblTicketData).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tblTicketData);
        }

        // GET: TicketData/Delete/5
        public ActionResult Delete(Guid? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            tblTicketData tblTicketData = db.tblTicketDatas.Find(id);
            if (tblTicketData == null)
            {
                return HttpNotFound();
            }
            return View(tblTicketData);
        }

        // POST: TicketData/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(Guid id)
        {
            tblTicketData tblTicketData = db.tblTicketDatas.Find(id);
            db.tblTicketDatas.Remove(tblTicketData);
            db.SaveChanges();
            return RedirectToAction("Index");
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
