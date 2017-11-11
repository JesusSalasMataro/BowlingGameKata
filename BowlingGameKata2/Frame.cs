namespace BowlingGameKata2
{
    public class Frame
    {
        public int PinsKnockedDownFirstRoll { get; set; }
        public int PinsKnockedDownSecondRoll { get; set; }

        public Frame(int pinsKnockedDownFirstRoll, int pinsKnockedDownSecondRoll)
        {
            PinsKnockedDownFirstRoll = pinsKnockedDownFirstRoll;
            PinsKnockedDownSecondRoll = pinsKnockedDownSecondRoll;
        }

        public virtual int Score()
        {
            return PinsKnockedDownFirstRoll + PinsKnockedDownSecondRoll;
        }

        public bool IsSpare()
        {
            return PinsKnockedDownFirstRoll < 10 &&
                PinsKnockedDownFirstRoll + PinsKnockedDownSecondRoll == 10;
        }

        public bool IsStrike()
        {
            return PinsKnockedDownFirstRoll == 10;
        }
    }
}
