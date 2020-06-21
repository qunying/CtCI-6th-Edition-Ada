with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Is_Unique; use Is_Unique;


procedure Is_Unique_Test is
    type Word_List is array(Positive  range <>) of Unbounded_String;
    words : Word_List := (To_Unbounded_String("abcde"),
			  To_Unbounded_String("hello"),
			  To_Unbounded_String("apple"),
			  To_Unbounded_String("kite"),
			  To_Unbounded_String("padle"));
begin
    Put_Line("Calling IsUniqueCharsA");
    for I in words'Range loop
	Put_Line (To_String(words(I)) & " : "
		  & IsUniqueCharsA(To_String(words(I)))'Image);
    end loop;
    Put_Line("Calling IsUniqueCharsB");
    for I in words'Range loop
	Put_Line (To_String(words(I)) & " : "
		  & IsUniqueCharsB(To_String(words(I)))'Image);
    end loop;
end Is_Unique_Test;
