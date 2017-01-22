using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BowlingGameKata
{
    public class BowlingGame
    {
        private readonly int MAX_GAME_FRAMES = 10;

        private string _rollsSequence;   
             

        public BowlingGame(string rollsSequence)
        {
            _rollsSequence = rollsSequence;
        }

        public int GetFinalScore()
        {
            int score = 0;

            for (int frame = 0; frame < MAX_GAME_FRAMES; frame++)
            {
                score += FrameScore(frame);
            }

            return score;
        }

        private int FrameScore(int frame)
        {
            int firstFrameRoll, secondFrameRoll, bonusPoints, frameScore;            
         
            if (RollIsSpare(frame))
            {                
                frameScore = 10;
            }
            else
            {
                firstFrameRoll = FirstRollOfFrame(frame);
                secondFrameRoll = SecondRollOfFrame(frame);
                bonusPoints = 0;

                if (PreviousRollWasSpare(frame))
                {
                    bonusPoints = FirstRollOfFrame(frame);
                }

                frameScore = firstFrameRoll + secondFrameRoll + bonusPoints;
            }

            return frameScore;
        }

        private bool RollIsSpare(int frame)
        {
            return _rollsSequence[frame * 2 + 1] == '/';
        }

        private bool PreviousRollWasSpare(int frame)
        {
            if (!FirstGameFrame(frame))
            {
                return _rollsSequence[frame * 2 - 1] == '/';
            }
            else
            {
                return false;
            }
        }

        private int FirstRollOfFrame(int frame)
        {
            return int.Parse(_rollsSequence[frame * 2].ToString());
        }

        private int SecondRollOfFrame(int frame)
        {
            return int.Parse(_rollsSequence[frame * 2 + 1].ToString());
        }

        private bool FirstGameFrame(int frame)
        {
            return frame == 0;
        }
    }
}
