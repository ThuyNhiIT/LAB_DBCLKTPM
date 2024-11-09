using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using ClassLibrary;
namespace UnitTestProject
{
    [TestClass]
    public class Test_Bai03
    {
        [TestMethod]
        public void TestMethod1()
        {
            Bai03 cls = new Bai03();
            double mean_act;
            int max_act = cls.MaxAndMean(3, 2, 1, out mean_act);
            int max_exp = 3;
            double mean_exp = 2;
            Assert.AreEqual(max_exp, max_act);
            Assert.AreEqual(mean_exp, mean_act, 0.1);
        }

        public TestContext TestContext  {get;set;}
     
        [DataSource("Microsoft.VisualStudio.TestTools.DataSource.CSV", "|DataDirectory|\\data_Bai03.csv", "data_Bai03#csv", DataAccessMethod.Sequential),DeploymentItem("data_Bai03.csv"), TestMethod]
        public void TestMethodData()
        {
            Bai03 cls = new Bai03();
            double mean_act;
            int a = int.Parse(TestContext.DataRow[0].ToString());
            int b = int.Parse(TestContext.DataRow[1].ToString());
            int c = int.Parse(TestContext.DataRow[2].ToString());
            int max_exp = int.Parse(TestContext.DataRow[3].ToString());
            int max_act = cls.MaxAndMean(a, b, c, out mean_act);  
            double mean_exp = double.Parse(TestContext.DataRow[4].ToString());
            Assert.AreEqual(max_exp, max_act);
            Assert.AreEqual(mean_exp, mean_act, 0.1);
        }
    }
}

