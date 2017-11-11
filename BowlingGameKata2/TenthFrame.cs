namespace BowlingGameKata2
{
    public class TenthFrame : Frame
    {
        public int PinsKnockedDownThirdRoll { get; set; }

        public TenthFrame(int pinsKnockedDownFirstRoll, int pinsKnockedDownSecondRoll, int pinsKnockedDownThirdRoll)
            : base (pinsKnockedDownFirstRoll, pinsKnockedDownSecondRoll)
        {
            PinsKnockedDownFirstRoll = pinsKnockedDownFirstRoll;
            PinsKnockedDownSecondRoll = pinsKnockedDownSecondRoll;
            PinsKnockedDownThirdRoll = pinsKnockedDownThirdRoll;
        }

        public override int Score()
        {
            return PinsKnockedDownFirstRoll + PinsKnockedDownSecondRoll + PinsKnockedDownThirdRoll;
        }
    }
}
