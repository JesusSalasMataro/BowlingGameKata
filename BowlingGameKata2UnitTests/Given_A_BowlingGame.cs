using Microsoft.VisualStudio.TestTools.UnitTesting;
using BowlingGameKata2;
using System.Collections.Generic;

namespace BowlingGameKata2UnitTests
{
    [TestClass]
    public class Given_A_BowlingGame
    {
        [TestMethod]
        public void WHEN_In_Frame_Not_All_Pins_Knocked_Down_THEN_Frame_Score_Equals_Total_Pins_Knocked_Down_In_The_Frame()
        {
            // ARRANGE
            Frame frame = new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 5);
            
            // ACT
            int actualScore = frame.Score();
            int expectedScore = 9;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_In_Frame_All_Pins_Are_Knocked_Down_THEN_Frame_Is_A_Spare()
        {
            // ARRANGE
            Frame frame = new Frame(pinsKnockedDownFirstRoll: 5, pinsKnockedDownSecondRoll: 5);

            // ACT
            bool isSpare = frame.IsSpare();

            // ASSERT
            Assert.IsTrue(isSpare);
        }

        [TestMethod]
        public void WHEN_Frame_Is_Spare_THEN_Frame_Score_Sums_Pins_Knocked_Down_Next_Roll()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 5, pinsKnockedDownSecondRoll: 5));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 3));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFrameScore(frameIndex: 1);
            int expectedScore = 14;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_In_Frame_All_Pins_Are_Not_Knocked_Down_THEN_Frame_Score_Is_Sum_Pins_Knocked_Down_In_The_Frame()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 3, pinsKnockedDownSecondRoll: 5));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFrameScore(frameIndex: 1);
            int expectedScore = 8;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_In_Frame_All_Pins_Are_Knocked_Down_In_One_Roll_THEN_Frame_Is_A_Strike()
        {
            // ARRANGE
            Frame frame = new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0);

            // ACT
            bool isStrike = frame.IsStrike();

            // ASSERT
            Assert.IsTrue(isStrike);
        }

        [TestMethod]
        public void WHEN_Frame_Is_Strike_THEN_Frame_Score_Sums_Pins_Knocked_Down_Next_Two_Rolls()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 3));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFrameScore(frameIndex: 1);
            int expectedScore = 17;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_Frame_Is_Strike_And_Next_Frame_Is_Strike_THEN_Frame_Score_Sums_Pins_Knocked_Down_Next_Two_Rolls()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 3, pinsKnockedDownSecondRoll: 4));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFrameScore(frameIndex: 1);
            int expectedScore = 23;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_Ninth_Frame_Is_Strike_THEN_Frame_Score_Sums_Pins_Knocked_Down_Next_Two_Rolls()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new TenthFrame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 7, pinsKnockedDownThirdRoll: 0));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFrameScore(frameIndex: 9);
            int expectedScore = 27;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_If_Strike_In_First_Roll_Of_Tenth_Frame_THEN_Frame_Score_Sums_Pins_Knocked_Down_In_The_Three_Rolls_Of_The_Frame()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new TenthFrame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 7, pinsKnockedDownThirdRoll: 2));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFrameScore(frameIndex: 10);
            int expectedScore = 19;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_All_Frames_Are_Strike_THEN_Final_Score_Is_300()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new TenthFrame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 10, pinsKnockedDownThirdRoll: 10));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();
            int expectedScore = 300;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }

        [TestMethod]
        public void WHEN_Random_Frames_Combination_THEN_Final_Score_Is_Correct()
        {
            // ARRANGE
            List<Frame> frames = new List<Frame>();
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 5, pinsKnockedDownSecondRoll: 3));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 6));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 7, pinsKnockedDownSecondRoll: 2));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 0, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 1, pinsKnockedDownSecondRoll: 4));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 10, pinsKnockedDownSecondRoll: 0));
            frames.Add(new Frame(pinsKnockedDownFirstRoll: 3, pinsKnockedDownSecondRoll: 7));
            frames.Add(new TenthFrame(pinsKnockedDownFirstRoll: 4, pinsKnockedDownSecondRoll: 6, pinsKnockedDownThirdRoll: 10));
            BowlingGame bowlingGame = new BowlingGame(frames);

            // ACT
            int actualScore = bowlingGame.GetFinalScore();
            int expectedScore = 136;

            // ASSERT
            Assert.AreEqual(expectedScore, actualScore);
        }
    }
}
