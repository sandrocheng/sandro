package king.org.apache.commons.codec.language;

import king.org.apache.commons.codec.EncoderException;
import king.org.apache.commons.codec.StringEncoder;

public abstract class AbstractCaverphone
  implements StringEncoder
{
  public Object encode(Object paramObject)
  {
    if (!(paramObject instanceof String))
      throw new EncoderException("Parameter supplied to Caverphone encode is not of type java.lang.String");
    return encode((String)paramObject);
  }

  public boolean isEncodeEqual(String paramString1, String paramString2)
  {
    return encode(paramString1).equals(encode(paramString2));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.AbstractCaverphone
 * JD-Core Version:    0.6.2
 */