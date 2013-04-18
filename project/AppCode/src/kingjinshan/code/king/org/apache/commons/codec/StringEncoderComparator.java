package king.org.apache.commons.codec;

import java.util.Comparator;

public class StringEncoderComparator
  implements Comparator
{
  private final StringEncoder stringEncoder;

  public StringEncoderComparator()
  {
    this.stringEncoder = null;
  }

  public StringEncoderComparator(StringEncoder paramStringEncoder)
  {
    this.stringEncoder = paramStringEncoder;
  }

  public int compare(Object paramObject1, Object paramObject2)
  {
    try
    {
      int j = ((Comparable)this.stringEncoder.encode(paramObject1)).compareTo((Comparable)this.stringEncoder.encode(paramObject2));
      i = j;
      return i;
    }
    catch (EncoderException localEncoderException)
    {
      while (true)
        int i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.StringEncoderComparator
 * JD-Core Version:    0.6.2
 */