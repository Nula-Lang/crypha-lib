with Ada.Text_IO; use Ada.Text_IO;

package body Crypha.SHA256 is
   procedure Hash (Input : in Byte_Array; Output : out Digest) is
      -- Stałe SHA-256 (pierwsze 8 prime sqrt).
      K : constant array (1 .. 8) of Unsigned_32 := (
         16#428a2f98#, 16#71374491#, 16#b5c0fbcf#, 16#e9b5dba5#,
         16#3956c25b#, 16#59f111f1#, 16#923f82a4#, 16#ab1c5ed5#
      );
   begin
      -- Placeholder: Pełna implementacja wymaga chunków 512-bit, kompresji.
      Output := (others => 0);  -- Symulacja.
      for I in Input'Range loop
         Output ((I mod 32) + 1) := Output ((I mod 32) + 1) xor Input (I);
      end loop;
      Put_Line ("SHA-256 Hasz obliczony.");
   end Hash;
end Crypha.SHA256;
