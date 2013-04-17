package QQPIM;

public final class ETelType
{
  public static final ETelType ETT_MAX;
  public static final ETelType ETT_MIN;
  public static final ETelType ETT_MISS_CALL;
  public static final ETelType ETT_RING_ONE_SOUND;
  public static final ETelType ETT_USER_CANCEL;
  public static final ETelType ETT_USER_HANG_UP;
  public static final int _ETT_MAX = 5;
  public static final int _ETT_MIN = 0;
  public static final int _ETT_MISS_CALL = 3;
  public static final int _ETT_RING_ONE_SOUND = 1;
  public static final int _ETT_USER_CANCEL = 2;
  public static final int _ETT_USER_HANG_UP = 4;
  private static ETelType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ETelType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ETelType[6];
      ETT_MIN = new ETelType(0, 0, "ETT_MIN");
      ETT_RING_ONE_SOUND = new ETelType(1, 1, "ETT_RING_ONE_SOUND");
      ETT_USER_CANCEL = new ETelType(2, 2, "ETT_USER_CANCEL");
      ETT_MISS_CALL = new ETelType(3, 3, "ETT_MISS_CALL");
      ETT_USER_HANG_UP = new ETelType(4, 4, "ETT_USER_HANG_UP");
      ETT_MAX = new ETelType(5, 5, "ETT_MAX");
      return;
    }
  }

  private ETelType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ETelType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ETelType localETelType = __values[i]; ; localETelType = null)
    {
      return localETelType;
      i++;
      break;
    }
  }

  public static ETelType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ETelType localETelType = __values[i]; ; localETelType = null)
    {
      return localETelType;
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
 * Qualified Name:     QQPIM.ETelType
 * JD-Core Version:    0.6.2
 */