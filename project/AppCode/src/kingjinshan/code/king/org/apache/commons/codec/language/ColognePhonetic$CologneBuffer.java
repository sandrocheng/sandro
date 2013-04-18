package king.org.apache.commons.codec.language;

abstract class ColognePhonetic$CologneBuffer
{
  protected final char[] data;
  protected int length = 0;

  public ColognePhonetic$CologneBuffer(ColognePhonetic paramColognePhonetic, int paramInt)
  {
    this.data = new char[paramInt];
    this.length = 0;
  }

  public ColognePhonetic$CologneBuffer(ColognePhonetic paramColognePhonetic, char[] paramArrayOfChar)
  {
    this.data = paramArrayOfChar;
    this.length = paramArrayOfChar.length;
  }

  protected abstract char[] copyData(int paramInt1, int paramInt2);

  public int length()
  {
    return this.length;
  }

  public String toString()
  {
    return new String(copyData(0, this.length));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     king.org.apache.commons.codec.language.ColognePhonetic.CologneBuffer
 * JD-Core Version:    0.6.2
 */