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
            return int.Parse(_rollsSequence[frame].ToString()) + int.Parse(_rollsSequence[frame + 1].ToString());
        }
    }
}
