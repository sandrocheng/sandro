package QQPIM;

public final class ENotifyInfoType
{
  public static final ENotifyInfoType EIT_BlackBan;
  public static final ENotifyInfoType EIT_BlackNoban;
  public static final ENotifyInfoType EIT_NoblackBan;
  public static final ENotifyInfoType EIT_None;
  public static final int _EIT_BlackBan = 2;
  public static final int _EIT_BlackNoban = 1;
  public static final int _EIT_NoblackBan = 3;
  public static final int _EIT_None;
  private static ENotifyInfoType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!ENotifyInfoType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new ENotifyInfoType[4];
      EIT_None = new ENotifyInfoType(0, 0, "EIT_None");
      EIT_BlackNoban = new ENotifyInfoType(1, 1, "EIT_BlackNoban");
      EIT_BlackBan = new ENotifyInfoType(2, 2, "EIT_BlackBan");
      EIT_NoblackBan = new ENotifyInfoType(3, 3, "EIT_NoblackBan");
      return;
    }
  }

  private ENotifyInfoType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static ENotifyInfoType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (ENotifyInfoType localENotifyInfoType = __values[i]; ; localENotifyInfoType = null)
    {
      return localENotifyInfoType;
      i++;
      break;
    }
  }

  public static ENotifyInfoType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (ENotifyInfoType localENotifyInfoType = __values[i]; ; localENotifyInfoType = null)
    {
      return localENotifyInfoType;
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
 * Qualified Name:     QQPIM.ENotifyInfoType
 * JD-Core Version:    0.6.2
 */