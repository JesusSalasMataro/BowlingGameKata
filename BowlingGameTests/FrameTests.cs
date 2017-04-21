using BowlingGameKata;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BowlingGameTests
{
    [TestClass]
    public class FrameTests
    {
        [TestMethod]
        public void Return_IsSpare_True_When_KnockDown_All_Pins_In_Two_Rolls()
        {
            // ARRANGE
            Frame frame = new Frame(4, 6);

            // ACT

            // ASSERT
            Assert.IsTrue(frame.IsSpare());
        }

        [TestMethod]
        public void Return_IsStrike_True_When_KnockDown_All_Pins_In_First_Roll()
        {
            // ARRANGE
            Frame frame = new Frame(10, 0);

            // ACT

            // ASSERT
            Assert.IsTrue(frame.IsStrike());
        }

        [TestMethod]
        public void Return_Number_Of_Pins_Knocked_Down_In_Frame()
        {
            // ARRANGE
            Frame frame = new Frame(3, 7);
            frame.PinsKnockedDownExtraRoll = 4;

            // ACT
            int actualPins = frame.PinsKnockedDown();
            int expectedPins = 14;

            // ASSERT
            Assert.AreEqual(expectedPins, actualPins);
        }
    }
}
