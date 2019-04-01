using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using SocietyBudget.Models;

namespace SocietyBudget.Controllers
{
    public class FundController : ApiController
    {
        private BudgetDBModel db = new BudgetDBModel();

        // GET: api/Fund
        public IQueryable<Fund> GetFunds()
        {
            return db.Funds;
        }

        // GET: api/Fund/5
        [ResponseType(typeof(Fund))]
        public IHttpActionResult GetFund(int id)
        {
            Fund fund = db.Funds.Find(id);
            if (fund == null)
            {
                return NotFound();
            }

            return Ok(fund);
        }

        // PUT: api/Fund/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutFund(int id, Fund fund)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != fund.Id)
            {
                return BadRequest();
            }

            db.Entry(fund).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!FundExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Fund
        [ResponseType(typeof(Fund))]
        public IHttpActionResult PostFund(Fund fund)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Funds.Add(fund);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = fund.Id }, fund);
        }

        // DELETE: api/Fund/5
        [ResponseType(typeof(Fund))]
        public IHttpActionResult DeleteFund(int id)
        {
            Fund fund = db.Funds.Find(id);
            if (fund == null)
            {
                return NotFound();
            }

            db.Funds.Remove(fund);
            db.SaveChanges();

            return Ok(fund);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool FundExists(int id)
        {
            return db.Funds.Count(e => e.Id == id) > 0;
        }
    }
}