package body Crypha is
   function Convert is new Ada.Unchecked_Conversion (Source => Character, Target => Byte);

   function String_To_Bytes (S : String) return Byte_Array is
      Result : Byte_Array (1 .. S'Length);
   begin
      for I in S'Range loop
         Result (I - S'First + 1) := Convert (S (I));
      end loop;
      return Result;
   end String_To_Bytes;
end Crypha;
