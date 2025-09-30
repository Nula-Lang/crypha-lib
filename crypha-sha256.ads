with Crypha; use Crypha;

package Crypha.SHA256 is
   type Digest is array (1 .. 32) of Byte;  -- 256-bit hash.

   procedure Hash (Input : in Byte_Array; Output : out Digest);
end Crypha.SHA256;
