using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BowlingGameKata;
using Moq;

namespace BowlingGameTests
{
    [TestClass]
    public class GameTests
    {
        [TestMethod]
        public void Not_All_Pins_Knocked_Down_In_Two_Rolls_Then_Score_Equals_Number_Of_Pins_Knocked_Down()
        {
            // ARRANGE
            string rollsSequence = "53535353535353535353";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(80, actualScore);
        }

        [TestMethod]
        public void When_Bowler_Achieves_Spare_FrameScore_Is_10Points_Plus_Pins_Knocked_Down_In_Next_Roll()
        {
            // ARRANGE
            string rollsSequence = "5/535353535353535353";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(87, actualScore);
        }
    }
}
