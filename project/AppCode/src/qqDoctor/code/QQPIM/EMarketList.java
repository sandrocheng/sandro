package QQPIM;

public final class EMarketList
{
  public static final EMarketList EML_91Helper;
  public static final EMarketList EML_AnZhi;
  public static final EMarketList EML_AppChina;
  public static final EMarketList EML_Baidu;
  public static final EMarketList EML_GFan;
  public static final EMarketList EML_Google;
  public static final EMarketList EML_HiApk;
  public static final EMarketList EML_WanDouJia;
  public static final int _EML_91Helper = 5;
  public static final int _EML_AnZhi = 2;
  public static final int _EML_AppChina = 3;
  public static final int _EML_Baidu = 8;
  public static final int _EML_GFan = 4;
  public static final int _EML_Google = 7;
  public static final int _EML_HiApk = 1;
  public static final int _EML_WanDouJia = 6;
  private static EMarketList[] __values;
  private String __T = new String();
  private int __value;

  static
  {
    if (!EMarketList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      __values = new EMarketList[8];
      EML_HiApk = new EMarketList(0, 1, "EML_HiApk");
      EML_AnZhi = new EMarketList(1, 2, "EML_AnZhi");
      EML_AppChina = new EMarketList(2, 3, "EML_AppChina");
      EML_GFan = new EMarketList(3, 4, "EML_GFan");
      EML_91Helper = new EMarketList(4, 5, "EML_91Helper");
      EML_WanDouJia = new EMarketList(5, 6, "EML_WanDouJia");
      EML_Google = new EMarketList(6, 7, "EML_Google");
      EML_Baidu = new EMarketList(7, 8, "EML_Baidu");
      return;
    }
  }

  private EMarketList(int paramInt1, int paramInt2, String paramString)
  {
    this.__T = paramString;
    this.__value = paramInt2;
    __values[paramInt1] = this;
  }

  public static EMarketList convert(int paramInt)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (__values[i].value() != paramInt);
    for (EMarketList localEMarketList = __values[i]; ; localEMarketList = null)
    {
      return localEMarketList;
      i++;
      break;
    }
  }

  public static EMarketList convert(String paramString)
  {
    int i = 0;
    if (i >= __values.length)
    {
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    else if (!__values[i].toString().equals(paramString));
    for (EMarketList localEMarketList = __values[i]; ; localEMarketList = null)
    {
      return localEMarketList;
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
 * Qualified Name:     QQPIM.EMarketList
 * JD-Core Version:    0.6.2
 */