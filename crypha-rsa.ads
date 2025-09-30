with Crypha; use Crypha;

package Crypha.RSA is
   type RSA_Key is private;  -- Public/private key.
   type Message is Byte_Array;

   procedure Generate_Key (Modulus_Bits : Positive; Key : out RSA_Key);
   procedure Encrypt (Key : in RSA_Key; Plaintext : in Message; Ciphertext : out Message);
   procedure Decrypt (Key : in RSA_Key; Ciphertext : in Message; Plaintext : out Message);

private
   type Big_Int is new Long_Long_Integer;  -- Placeholder: Użyj realnego BigNum lib.
   type RSA_Key is record
      N : Big_Int;  -- Modulus
      E : Big_Int;  -- Public exponent
      D : Big_Int;  -- Private exponent
   end record;
end Crypha.RSA;
