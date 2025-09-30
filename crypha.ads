with Interfaces; use Interfaces;
with Ada.Unchecked_Conversion;

package Crypha is
   -- Główny pakiet dla cyberbezpieczeństwa w Nula.
   -- Użyj subpakietów dla konkretnych algorytmów.

   type Byte is new Unsigned_8;
   type Byte_Array is array (Positive range <>) of Byte;

   -- Funkcja pomocnicza: Konwersja string do byte array.
   function String_To_Bytes (S : String) return Byte_Array;
end Crypha;
