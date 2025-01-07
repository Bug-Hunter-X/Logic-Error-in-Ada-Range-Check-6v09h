```ada
function Check_Range (Value : Integer) return Boolean is
begin
   if Value < 10 or Value > 20 then
      return False;
   else
      return True;
   end if;
end Check_Range;

procedure Main is
   Result : Boolean;
begin
   Result := Check_Range(25);  -- The issue is here.  25 is out of range, as expected.
   if Result = True then
      Put_Line("Value is within range");
   else
      Put_Line("Value is out of range");
   end if;
end Main;
```