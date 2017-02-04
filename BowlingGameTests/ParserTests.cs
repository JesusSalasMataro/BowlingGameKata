using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BowlingGameKata;
using Moq;
using System.Collections.Generic;

namespace BowlingGameTests
{
    [TestClass]
    public class ParserTests
    {
        [TestMethod]
        public void Return_Correct_Pins_KnockedDown_In_Roll()
        {
            // ARRANGE
            string framesString = "34565656565656565656";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            List<Frame> frames = frameSequence.ToList();

            // ASSERT
            Assert.AreEqual(frames[0].PinsKnockedDownFirstRoll, 3);
            Assert.AreEqual(frames[0].PinsKnockedDownSecondRoll, 4);
        }

        [TestMethod]
        public void Return_Correct_Pins_KnockedDown_In_Roll_When_Strike()
        {
            // ARRANGE
            string framesString = "X565656565656565656";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            List<Frame> frames = frameSequence.ToList();

            // ASSERT
            Assert.AreEqual(frames[0].PinsKnockedDownFirstRoll, 10);
            Assert.AreEqual(frames[0].PinsKnockedDownSecondRoll, 0);
        }

        [TestMethod]
        public void Return_Correct_Pins_KnockedDown_In_Roll_When_Spare()
        {
            // ARRANGE
            string framesString = "3/565656565656565656";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            List<Frame> frames = frameSequence.ToList();

            // ASSERT
            Assert.AreEqual(frames[0].PinsKnockedDownFirstRoll, 3);
            Assert.AreEqual(frames[0].PinsKnockedDownSecondRoll, 7);
        }

        [TestMethod]
        public void Return_True_If_Last_Frame_Is_Spare()
        {
            // ARRANGE
            string framesString = "3456565656565656564/6";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            bool lastFrameIsSpare = frameSequence.LastFrameIsStrikeOrSpare();

            // ASSERT
            Assert.IsTrue(lastFrameIsSpare);            
        }

        [TestMethod]
        public void Return_True_If_Last_Frame_Is_Strike()
        {
            // ARRANGE
            string framesString = "345656565656565656X64";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            bool lastFrameIsStrike = frameSequence.LastFrameIsStrikeOrSpare();

            // ASSERT
            Assert.IsTrue(lastFrameIsStrike);
        }

        [TestMethod]
        public void Return_Correct_List_Of_Ninth_First_Frames()
        {
            // ARRANGE
            string framesString = "1234563/X45893/36X64";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            List<Frame> actualFrames = frameSequence.LoadNinthFirstFrames();
            List<Frame> expectedFrames = CreateListExpectedNinthFirstFrames();

            // ASSERT
            FrameComparer frameComparer = new FrameComparer();
            CollectionAssert.AreEqual(expectedFrames, actualFrames, frameComparer);
        }

        [TestMethod]
        public void Return_Correct_Tenth_Frame_When_Is_Strike()
        {
            // ARRANGE
            string framesString = "1234563/X45893/36X64";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            Frame actualFrame = frameSequence.LoadTenthFrame();
            Frame expectedFrame = new Frame(10, 6);
            expectedFrame.PinsKnockedDownExtraRoll = 4;

            // ASSERT
            Assert.AreEqual(expectedFrame.PinsKnockedDownFirstRoll, actualFrame.PinsKnockedDownFirstRoll);
            Assert.AreEqual(expectedFrame.PinsKnockedDownSecondRoll, actualFrame.PinsKnockedDownSecondRoll);
            Assert.AreEqual(expectedFrame.PinsKnockedDownExtraRoll, actualFrame.PinsKnockedDownExtraRoll);
        }

        [TestMethod]
        public void Return_Correct_Tenth_Frame_When_Is_Spare()
        {
            // ARRANGE
            string framesString = "1234563/X45893/366/4";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            Frame actualFrame = frameSequence.LoadTenthFrame();
            Frame expectedFrame = new Frame(6, 4);
            expectedFrame.PinsKnockedDownExtraRoll = 4;

            // ASSERT
            Assert.AreEqual(expectedFrame.PinsKnockedDownFirstRoll, actualFrame.PinsKnockedDownFirstRoll);
            Assert.AreEqual(expectedFrame.PinsKnockedDownSecondRoll, actualFrame.PinsKnockedDownSecondRoll);
            Assert.AreEqual(expectedFrame.PinsKnockedDownExtraRoll, actualFrame.PinsKnockedDownExtraRoll);
        }

        [TestMethod]
        public void Return_Correct_Tenth_Frame_When_Is_Not_Strike_Neither_Spare()
        {
            // ARRANGE
            string framesString = "1234563/X45893/3664";
            FrameSequence frameSequence = new FrameSequence(framesString);

            // ACT
            Frame actualFrame = frameSequence.LoadTenthFrame();
            Frame expectedFrame = new Frame(6, 4);            

            // ASSERT
            Assert.AreEqual(expectedFrame.PinsKnockedDownFirstRoll, actualFrame.PinsKnockedDownFirstRoll);
            Assert.AreEqual(expectedFrame.PinsKnockedDownSecondRoll, actualFrame.PinsKnockedDownSecondRoll);
            Assert.AreEqual(expectedFrame.PinsKnockedDownExtraRoll, actualFrame.PinsKnockedDownExtraRoll);
        }


        private List<Frame> CreateListExpectedNinthFirstFrames()
        {
            return new List<Frame> {
                new Frame(1, 2),
                new Frame(3, 4),
                new Frame(5, 6),
                new Frame(3, 7),
                new Frame(10, 0),
                new Frame(4, 5),
                new Frame(8, 9),
                new Frame(3, 7),
                new Frame(3, 6)
            };
        }

        private class FrameComparer : Comparer<Frame>
        {
            public override int Compare(Frame firstFrame, Frame secondFrame)
            {
                if (firstFrame.PinsKnockedDownFirstRoll == secondFrame.PinsKnockedDownFirstRoll &&
                    firstFrame.PinsKnockedDownSecondRoll == secondFrame.PinsKnockedDownSecondRoll &&
                    firstFrame.PinsKnockedDownExtraRoll == secondFrame.PinsKnockedDownExtraRoll)
                {
                    return 0;
                }
                else
                {
                    return -1;
                }
            }
        }
    }
}
