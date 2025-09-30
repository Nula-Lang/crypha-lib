with Ada.Text_IO; use Ada.Text_IO;

package body Crypha.RSA is
   procedure Generate_Key (Modulus_Bits : Positive; Key : out RSA_Key) is
   begin
      -- Placeholder: Generuj prime p,q; N=p*q; E=65537; D=inverse(E, phi(N)).
      Key.N := 123456789;  -- Symulacja.
      Key.E := 65537;
      Key.D := 1;  -- Niebezpieczne!
      Put_Line ("RSA Klucz wygenerowany.");
   end Generate_Key;

   procedure Encrypt (Key : in RSA_Key; Plaintext : in Message; Ciphertext : out Message) is
   begin
      -- Placeholder: C = M^E mod N (z OAEP padding).
      Ciphertext := Plaintext;  -- Symulacja.
      Put_Line ("RSA Szyfrowanie wykonane.");
   end Encrypt;

   procedure Decrypt (Key : in RSA_Key; Ciphertext : in Message; Plaintext : out Message) is
   begin
      -- Placeholder: M = C^D mod N.
      Plaintext := Ciphertext;
      Put_Line ("RSA Deszyfrowanie wykonane.");
   end Decrypt;
end Crypha.RSA;
