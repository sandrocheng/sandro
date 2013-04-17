package QQPIM;

public final class EUploadType
{
  public static final EUploadType EUT_Upload_Auto;
  public static final EUploadType EUT_Upload_End;
  public static final EUploadType EUT_Upload_None;
  public static final EUploadType EUT_Upload_Request;
  public static final int _EUT_Upload_Auto = 2;
  public static final int _EUT_Upload_End = 3;
  public static final int _EUT_Upload_None = 0;
  public static final int _EUT_Upload_Request = 1;
  private static EUploadType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EUploadType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EUploadType[4];
      EUT_Upload_None = new EUploadType(0, 0, "EUT_Upload_None");
      EUT_Upload_Request = new EUploadType(1, 1, "EUT_Upload_Request");
      EUT_Upload_Auto = new EUploadType(2, 2, "EUT_Upload_Auto");
      EUT_Upload_End = new EUploadType(3, 3, "EUT_Upload_End");
      return;
    }
  }

  private EUploadType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EUploadType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EUploadType localEUploadType = __values[i]; ; localEUploadType = null)
    {
      return localEUploadType;
      i++;
      break;
    }
  }

  public static EUploadType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EUploadType localEUploadType = __values[i]; ; localEUploadType = null)
    {
      return localEUploadType;
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
 * Qualified Name:     QQPIM.EUploadType
 * JD-Core Version:    0.6.2
 */