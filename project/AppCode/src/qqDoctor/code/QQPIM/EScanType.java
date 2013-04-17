package QQPIM;

public final class EScanType
{
  public static final EScanType ST_Apk;
  public static final EScanType ST_END;
  public static final EScanType ST_File;
  public static final EScanType ST_NONE;
  public static final int _ST_Apk = 1;
  public static final int _ST_END = 3;
  public static final int _ST_File = 2;
  public static final int _ST_NONE;
  private static EScanType[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EScanType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EScanType[4];
      ST_NONE = new EScanType(0, 0, "ST_NONE");
      ST_Apk = new EScanType(1, 1, "ST_Apk");
      ST_File = new EScanType(2, 2, "ST_File");
      ST_END = new EScanType(3, 3, "ST_END");
      return;
    }
  }

  private EScanType(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EScanType convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EScanType localEScanType = __values[i]; ; localEScanType = null)
    {
      return localEScanType;
      i++;
      break;
    }
  }

  public static EScanType convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EScanType localEScanType = __values[i]; ; localEScanType = null)
    {
      return localEScanType;
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
 * Qualified Name:     QQPIM.EScanType
 * JD-Core Version:    0.6.2
 */