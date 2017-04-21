using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BowlingGameKata
{
    public class Frame
    {
        public int PinsKnockedDownFirstRoll { get; set; }
        public int PinsKnockedDownSecondRoll { get; set; }
        public int PinsKnockedDownExtraRoll { get; set; }
        public int FrameScore { get; set; }

        public Frame(int pinsKnockedDownFirstRoll, int pinsKnockedDownSecondRoll)
        {
            PinsKnockedDownFirstRoll = pinsKnockedDownFirstRoll;
            PinsKnockedDownSecondRoll = pinsKnockedDownSecondRoll;
        }

        public bool IsSpare()
        {
            return PinsKnockedDownFirstRoll < 10 && PinsKnockedDownFirstRoll + PinsKnockedDownSecondRoll == 10;
        }

        public bool IsStrike()
        {
            return PinsKnockedDownFirstRoll == 10;
        }

        public int PinsKnockedDown()
        {
            return PinsKnockedDownFirstRoll + PinsKnockedDownSecondRoll + PinsKnockedDownExtraRoll;
        }
    }
}
