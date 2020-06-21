package body Is_Unique is

function IsUniqueCharsA(str : String) return Boolean
is
    type CharSets_T is array(Character) of Boolean;
    char_sets : CharSets_T := (others => false);
begin
    for I in str'Range loop
	if char_sets(str(I)) then
	    return false;
	else
	    char_sets(str(I)) := true;
	end if;
    end loop;

    return true;
end IsUniqueCharsA;

function IsUniqueCharsB(str: String) return Boolean
is
    type CharSets_T is array(Character'('a') .. 'z') of Boolean;
    pragma Pack (CharSets_T);
    char_sets : CharSets_T := (others => false);
begin
    for I in str'Range loop
	if char_sets(str(I)) then
	    return false;
	else
	    char_sets(str(I)) := true;
	end if;
    end loop;

    return true;
end IsUniqueCharsB;

end Is_Unique;
