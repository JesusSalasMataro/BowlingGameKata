using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BowlingGameKata
{
    public class BowlingGame
    {
        private readonly int TOTALFRAMES = 10;

        private FrameSequence _frameSequence;
             

        public BowlingGame(string rollsSequence)
        {
            _frameSequence = new FrameSequence(rollsSequence);
        }

        public int GetFinalScore()
        {
            int score = 0;
            List<Frame> frames = _frameSequence.ToList();

            for (int i = 0; i < TOTALFRAMES; i++)
            {
                score += GetFrameScore(frames, i);
            }

            return score;
        }

        private int GetFrameScore(List<Frame> frames, int index)
        {
            if (IsFinalFrame(index))
            {
                return frames[index].PinsKnockedDown();
            }
            else
            {
                if (frames[index].IsStrike())
                {
                    if (frames[index + 1].IsStrike())
                    {
                        if (IsFinalFrame(index + 1))
                        {
                            return frames[index].PinsKnockedDown() +
                                frames[index + 1].PinsKnockedDownFirstRoll + frames[index + 1].PinsKnockedDownSecondRoll;
                        }
                        else
                        {
                            return frames[index].PinsKnockedDown() +
                                frames[index + 1].PinsKnockedDownFirstRoll + frames[index + 2].PinsKnockedDownFirstRoll;
                        }
                    }
                    else
                    {
                        return frames[index].PinsKnockedDown() +
                            frames[index + 1].PinsKnockedDownFirstRoll + frames[index + 1].PinsKnockedDownSecondRoll;
                    }
                }
                else if (frames[index].IsSpare())
                {
                    return frames[index].PinsKnockedDown() + frames[index + 1].PinsKnockedDownFirstRoll;
                }
                else
                {
                    return frames[index].PinsKnockedDown();
                }
            }
        }

        private bool IsFinalFrame(int index)
        {
            return index == TOTALFRAMES - 1;
        }

    }
}
