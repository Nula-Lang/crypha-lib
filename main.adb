with Crypha; use Crypha;
with Crypha.AES; use Crypha.AES;
with Crypha.SHA256; use Crypha.SHA256;
with Crypha.RSA; use Crypha.RSA;
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Key_Data : Byte_Array := String_To_Bytes ("secretkey123456");
   AES_Key : AES_Key;
   Block_Data : Block := (others => 0);
   Encrypted_Block : Block;
   Hash_Output : Digest;
   RSA_Key : RSA_Key;
   Msg : Message (1 .. 10) := (others => 42);
   Encrypted_Msg : Message (1 .. 10);
begin
   -- AES
   Initialize_Key (Key_Data (1 .. 16), AES_Key);
   Encrypt (AES_Key, Block_Data, Encrypted_Block);

   -- SHA256
   Hash (String_To_Bytes ("hello world"), Hash_Output);

   -- RSA
   Generate_Key (1024, RSA_Key);
   Encrypt (RSA_Key, Msg, Encrypted_Msg);

   Put_Line ("Testy Crypha zakończone.");
end Main;
