﻿using ClassLibrary;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace UnitTestProject
{
    internal class Test_Bai04
    {
        public TestContext TestContext { get; set; }

        [DataSource("Microsoft.VisualStudio.TestTools.DataSource.CSV", "|DataDirectory|\\data_Bai04.csv", "data_Bai04#csv", DataAccessMethod.Sequential), DeploymentItem("data_Bai04.csv"), TestMethod]
        public void TestMethodData()
        {

            Bai04 cls = new Bai04();
            int a = int.Parse(TestContext.DataRow[0].ToString());
            int b = int.Parse(TestContext.DataRow[1].ToString());
            int c = int.Parse(TestContext.DataRow[2].ToString());
            int max_exp = int.Parse(TestContext.DataRow[3].ToString());
            int max_act = cls.Max(a, b, c);
            Assert.AreEqual(max_exp, max_act);
        }
    }
}
