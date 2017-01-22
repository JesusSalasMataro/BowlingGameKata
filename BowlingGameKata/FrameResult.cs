using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BowlingGameKata
{
    public class FrameResult
    {
        public int PinsKnockedDownFirstRoll { get; set; }
        public int PinsKnockedDownSecondRoll { get; set; }
        public int FrameScore { get; set; }

        public bool ResultIsStrikeOrSpare()
        {
            return PinsKnockedDownFirstRoll + PinsKnockedDownSecondRoll == 10;
        }
    }
}
