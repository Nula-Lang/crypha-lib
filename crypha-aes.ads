with Crypha; use Crypha;

package Crypha.AES is
   type AES_Key is private;  -- Klucz 128-bit (dla prostoty).
   type Block is array (1 .. 16) of Byte;  -- Blok AES.

   procedure Initialize_Key (Key_Data : in Byte_Array; Key : out AES_Key);
   procedure Encrypt (Key : in AES_Key; Plaintext : in Block; Ciphertext : out Block);
   procedure Decrypt (Key : in AES_Key; Ciphertext : in Block; Plaintext : out Block);

private
   type AES_Key is array (1 .. 16) of Byte;  -- Placeholder dla expanded key.
end Crypha.AES;
