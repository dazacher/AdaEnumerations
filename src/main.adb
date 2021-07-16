with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
    type Suit is (Clubs, Diamonds, Hearts, Spades, No_Trump);
    subtype PokerSuit is Suit range Clubs .. Spades;
    Two_Suite : Suit range Diamonds .. Hearts := Hearts;
    Bid_Suit : Suit := No_Trump;
    Flush_Suit : PokerSuit := PokerSuit'First;
begin
    Put_Line("Your bid was in " & Suit'Image(Bid_Suit));
    Put_Line("Your flush is in " & Suit'Image(Flush_Suit));
    Put_Line("Your flush is in " & PokerSuit'Image(Flush_Suit));
    Flush_Suit := PokerSuit'Val(0);
    Put_Line("Suit at position 0 " & Suit'Image(Flush_Suit));
    Flush_Suit := PokerSuit'Succ(Flush_Suit);
    Put_Line("but now the flush is in " & PokerSuit'Image(Flush_Suit));
    Flush_Suit := PokerSuit'Val (PokerSuit'Pos(Flush_Suit) + 1);
    Put_Line("the same as Succ " & PokerSuit'Image(Flush_Suit));
    New_Line;

    if (Diamonds < Spades) then
        Put_Line("Just as I thought.");
    end if;

    if (Two_Suite = Hearts) then
        Put_Line("No surprises here.");
    end if;

    if (Two_Suite /= Bid_Suit) then
        Put_Line("Also not too surprising.");
    end if;

    Flush_Suit := Spades;
    if (Two_Suite /= Flush_Suit) then
        Put_Line("Will this work?");
    end if;

end Main;
