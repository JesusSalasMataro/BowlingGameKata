using System.Collections.Generic;

namespace BowlingGameKata2
{
    public class BowlingGame
    {
        private List<Frame> _frames;

        public BowlingGame(List<Frame> frames)
        {
            _frames = frames;
        }

        public int GetFrameScore(int frameIndex)
        {
            int score = 0;
            frameIndex--;

            if (_frames[frameIndex] is TenthFrame)
            {
                score = CalculateTenthFrameScore();
            }
            else
            {
                score = CalculateFrameScore(frameIndex);
            }

            return score;
        }

        private int CalculateFrameScore(int frameIndex)
        {
            int score = 0;

            if (_frames[frameIndex].IsSpare())
            {
                score = _frames[frameIndex].Score()
                    + _frames[frameIndex + 1].PinsKnockedDownFirstRoll;
            }
            else if (_frames[frameIndex].IsStrike())
            {
                if (_frames[frameIndex + 1] is TenthFrame)
                {
                    score = _frames[frameIndex].Score()
                        + _frames[frameIndex + 1].PinsKnockedDownFirstRoll
                        + _frames[frameIndex + 1].PinsKnockedDownSecondRoll;
                }
                else if (_frames[frameIndex + 1].IsStrike())
                {
                    score = _frames[frameIndex].Score()
                        + _frames[frameIndex + 1].PinsKnockedDownFirstRoll
                        + _frames[frameIndex + 2].PinsKnockedDownFirstRoll;
                }
                else
                {
                    score = _frames[frameIndex].Score()
                        + _frames[frameIndex + 1].PinsKnockedDownFirstRoll
                        + _frames[frameIndex + 1].PinsKnockedDownSecondRoll;
                }
            }
            else
            {
                score = _frames[frameIndex].Score();
            }


            return score;
        }

        private int CalculateTenthFrameScore()
        {
            return ((TenthFrame)_frames[9]).Score();
        }

        public int GetFinalScore()
        {
            int score = 0;

            for (int i = 1; i <= _frames.Count; i++)
            {
                score += GetFrameScore(i);
            }

            return score;
        }
    }
}
