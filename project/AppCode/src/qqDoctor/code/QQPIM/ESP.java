package QQPIM;

public final class ESP
{
  public static final ESP SP_Mobile;
  public static final ESP SP_Telecom;
  public static final ESP SP_Unicom;
  public static final int _SP_Mobile = 0;
  public static final int _SP_Telecom = 2;
  public static final int _SP_Unicom = 1;
  private static ESP[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ESP.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ESP[3];
      SP_Mobile = new ESP(0, 0, "SP_Mobile");
      SP_Unicom = new ESP(1, 1, "SP_Unicom");
      SP_Telecom = new ESP(2, 2, "SP_Telecom");
      return;
    }
  }

  private ESP(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ESP convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ESP localESP = __values[i]; ; localESP = null)
    {
      return localESP;
      i++;
      break;
    }
  }

  public static ESP convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ESP localESP = __values[i]; ; localESP = null)
    {
      return localESP;
      i++;
      break;
    }
  }

  public final String toString()
  {
    return this.__T;
  }

  public final int value()
  {
    return this.__value;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ESP
 * JD-Core Version:    0.6.2
 */