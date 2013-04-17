package QQPIM;

public final class ETelClientLogic
{
  public static final ETelClientLogic ETCL_LOGIC_BLACK_LIST;
  public static final ETelClientLogic ETCL_LOGIC_MAX;
  public static final ETelClientLogic ETCL_LOGIC_MIN;
  public static final int _ETCL_LOGIC_BLACK_LIST = 1;
  public static final int _ETCL_LOGIC_MAX = 2;
  public static final int _ETCL_LOGIC_MIN;
  private static ETelClientLogic[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ETelClientLogic.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ETelClientLogic[3];
      ETCL_LOGIC_MIN = new ETelClientLogic(0, 0, "ETCL_LOGIC_MIN");
      ETCL_LOGIC_BLACK_LIST = new ETelClientLogic(1, 1, "ETCL_LOGIC_BLACK_LIST");
      ETCL_LOGIC_MAX = new ETelClientLogic(2, 2, "ETCL_LOGIC_MAX");
      return;
    }
  }

  private ETelClientLogic(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ETelClientLogic convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ETelClientLogic localETelClientLogic = __values[i]; ; localETelClientLogic = null)
    {
      return localETelClientLogic;
      i++;
      break;
    }
  }

  public static ETelClientLogic convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ETelClientLogic localETelClientLogic = __values[i]; ; localETelClientLogic = null)
    {
      return localETelClientLogic;
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
 * Qualified Name:     QQPIM.ETelClientLogic
 * JD-Core Version:    0.6.2
 */