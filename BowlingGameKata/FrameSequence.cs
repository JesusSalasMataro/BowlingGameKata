using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

[assembly: InternalsVisibleTo("BowlingGameTests")]
namespace BowlingGameKata
{    
    public class FrameSequence
    {
        private readonly int TOTAL_FRAMES = 10;
        private string _frameSequence { get; set; }

        public FrameSequence(string frameSequence)
        {
            _frameSequence = frameSequence;
        }

        public List<Frame> ToList()
        {
            List<Frame> Frames = new List<Frame>();

            Frames = LoadNinthFirstFrames();
            Frames.Add(LoadTenthFrame());

            return Frames;
        }

        internal List<Frame> LoadNinthFirstFrames()
        {
            List<Frame> Frames = new List<Frame>();
            int pinsKnockedDownFirstRoll = 0;
            int pinsKnockedDownSecondRoll = 0;
            int index = 0;
            Frame frame;

            for (int i = 0; i < TOTAL_FRAMES - 1; i++)
            {
                pinsKnockedDownFirstRoll = GetPinsKnockedDownInRoll(index);

                if (pinsKnockedDownFirstRoll == 10)
                {
                    pinsKnockedDownSecondRoll = 0;
                    index++;
                }
                else
                {
                    pinsKnockedDownSecondRoll = GetPinsKnockedDownInRoll(index + 1);
                    index += 2;
                }

                frame = new Frame(pinsKnockedDownFirstRoll, pinsKnockedDownSecondRoll);
                Frames.Add(frame);
            }

            return Frames;
        }

        internal Frame LoadTenthFrame()
        {
            int pinsKnockedDownFirstRoll = 0;
            int pinsKnockedDownSecondRoll = 0;
            int pinsKnockedDownExtraRoll = 0;
            Frame frame;

            if (LastFrameIsStrikeOrSpare())
            {
                pinsKnockedDownFirstRoll = GetPinsKnockedDownInRoll(_frameSequence.Length - 3);
                pinsKnockedDownSecondRoll = GetPinsKnockedDownInRoll(_frameSequence.Length - 2);
                pinsKnockedDownExtraRoll = GetPinsKnockedDownInRoll(_frameSequence.Length - 1);
            }
            else
            {
                pinsKnockedDownFirstRoll = GetPinsKnockedDownInRoll(_frameSequence.Length - 2);
                pinsKnockedDownSecondRoll = GetPinsKnockedDownInRoll(_frameSequence.Length - 1);
            }

            frame = new Frame(pinsKnockedDownFirstRoll, pinsKnockedDownSecondRoll);
            frame.PinsKnockedDownExtraRoll = pinsKnockedDownExtraRoll;

            return frame;
        }

        internal bool LastFrameIsStrikeOrSpare()
        {
            return _frameSequence[_frameSequence.Length - 3] == (char)RollSymbolEnum.Strike ||
                _frameSequence[_frameSequence.Length - 2] == (char)RollSymbolEnum.Spare;
        }

        internal int GetPinsKnockedDownInRoll(int index)
        {
            if (_frameSequence[index] == (char)RollSymbolEnum.Strike)
            {
                return 10;
            }
            else if (_frameSequence[index] == (char)RollSymbolEnum.Spare)
            {
                return 10 - int.Parse(_frameSequence[index - 1].ToString());
            }
            else
            {
                if (_frameSequence[index] == (char)RollSymbolEnum.Fail)
                {
                    return 0;
                }
                else
                {
                    return int.Parse(_frameSequence[index].ToString());
                }
            }
        }
    }
}
