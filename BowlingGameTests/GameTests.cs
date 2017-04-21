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
            string rollsSequence = "8/8/8/8/8/8/8/8/8/8/8";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(180, actualScore);
        }

        [TestMethod]
        public void When_Bowler_Achieves_Strike_FrameScore_Is_10Points_Plus_Pins_Knocked_Down_In_Two_Next_Rolls()
        {
            // ARRANGE
            string rollsSequence = "5/5353535353X535353";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(97, actualScore);
        }

        [TestMethod]
        public void When_Bowler_Achieves_Spare_At_Final_Frame_And_An_Extra_Roll()
        {
            // ARRANGE
            string rollsSequence = "5/5353535353X53535/4";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(103, actualScore);
        }

        [TestMethod]
        public void When_Bowler_Achieves_Strike_At_Final_Frame_And_An_Extra_Roll()
        {
            // ARRANGE
            string rollsSequence = "5/5353535353X5353X43";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(106, actualScore);
        }

        [TestMethod]
        public void When_Bowler_Achieves_Two_Strikes_At_Final_Frame_And_An_Extra_Roll()
        {
            // ARRANGE
            string rollsSequence = "5/5353535353X5353XX3";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(112, actualScore);
        }

        [TestMethod]
        public void When_Bowler_Achieves_All_Strikes_Calculate_Correct_Result()
        {
            // ARRANGE
            string rollsSequence = "XXXXXXXXXXXX";
            BowlingGame bowlingGame = new BowlingGame(rollsSequence);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();

            // ASSERT
            Assert.AreEqual(300, actualScore);
        }
    }
}
