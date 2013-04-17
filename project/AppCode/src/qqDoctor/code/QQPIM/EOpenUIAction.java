package QQPIM;

public final class EOpenUIAction
{
  public static final EOpenUIAction EOpenUIA_NONE;
  public static final EOpenUIAction EOpenUIA_Sec_Android_SoftGame_WRecommend;
  public static final EOpenUIAction EOpenUIA_Sec_Iphone_About_Update;
  public static final int _EOpenUIA_NONE = 0;
  public static final int _EOpenUIA_Sec_Android_SoftGame_WRecommend = 120101000;
  public static final int _EOpenUIA_Sec_Iphone_About_Update = 130101001;
  private static EOpenUIAction[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EOpenUIAction.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EOpenUIAction[3];
      EOpenUIA_NONE = new EOpenUIAction(0, 0, "EOpenUIA_NONE");
      EOpenUIA_Sec_Android_SoftGame_WRecommend = new EOpenUIAction(1, 120101000, "EOpenUIA_Sec_Android_SoftGame_WRecommend");
      EOpenUIA_Sec_Iphone_About_Update = new EOpenUIAction(2, 130101001, "EOpenUIA_Sec_Iphone_About_Update");
      return;
    }
  }

  private EOpenUIAction(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EOpenUIAction convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EOpenUIAction localEOpenUIAction = __values[i]; ; localEOpenUIAction = null)
    {
      return localEOpenUIAction;
      i++;
      break;
    }
  }

  public static EOpenUIAction convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EOpenUIAction localEOpenUIAction = __values[i]; ; localEOpenUIAction = null)
    {
      return localEOpenUIAction;
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
 * Qualified Name:     QQPIM.EOpenUIAction
 * JD-Core Version:    0.6.2
 */