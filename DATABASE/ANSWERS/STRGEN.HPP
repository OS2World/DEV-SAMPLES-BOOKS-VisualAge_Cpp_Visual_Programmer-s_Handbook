/********************************************************************/
/*  Class required to provide a string generator                    */
/********************************************************************/

#include "areatabV.hpp"

#include <istrgen.hpp>

class IStringGeneratorForAreatablFn: public IStringGeneratorFn<Areatabl*>
{
public:
   IStringGeneratorForAreatablFn() {};
   virtual ~IStringGeneratorForAreatablFn() {};

   virtual IString stringFor(Areatabl* const&  pAreaTable )
   {
      IString generatedString( pAreaTable->city() );
      return generatedString.stripTrailing();
   }
};
