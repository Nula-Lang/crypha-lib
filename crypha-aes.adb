with Ada.Text_IO; use Ada.Text_IO;

package body Crypha.AES is
   procedure Initialize_Key (Key_Data : in Byte_Array; Key : out AES_Key) is
   begin
      if Key_Data'Length /= 16 then
         raise Constraint_Error with "Klucz musi mieć 16 bajtów.";
      end if;
      Key := AES_Key (Key_Data (1 .. 16));  -- Placeholder: Brak ekspansji klucza.
      Put_Line ("AES Klucz zainicjalizowany.");
   end Initialize_Key;

   procedure Encrypt (Key : in AES_Key; Plaintext : in Block; Ciphertext : out Block) is
   begin
      -- Placeholder: Pełna implementacja AES wymaga SubBytes, ShiftRows, MixColumns, AddRoundKey.
      Ciphertext := Plaintext;  -- Symulacja (niebezpieczna!).
      for I in Ciphertext'Range loop
         Ciphertext (I) := Ciphertext (I) xor Key (I);  -- Prosty XOR jako demo.
      end loop;
      Put_Line ("AES Szyfrowanie wykonane.");
   end Encrypt;

   procedure Decrypt (Key : in AES_Key; Ciphertext : in Block; Plaintext : out Block) is
   begin
      -- Placeholder: Odwrotne operacje.
      Plaintext := Ciphertext;
      for I in Plaintext'Range loop
         Plaintext (I) := Plaintext (I) xor Key (I);  -- Odwracalne XOR.
      end loop;
      Put_Line ("AES Deszyfrowanie wykonane.");
   end Decrypt;
end Crypha.AES;
