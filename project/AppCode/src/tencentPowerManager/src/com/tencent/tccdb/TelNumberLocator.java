package com.tencent.tccdb;

import a;
import android.content.Context;
import com.tencent.tmsecure.common.TMSApplication;
import eu;
import java.util.ArrayList;

public class TelNumberLocator
{
  private static final String YELLOW_PAGE_NAME = "yd.sdb";
  private static TelNumberLocator mInstance = null;
  private Context mContext;
  private int object;

  static
  {
    String str = TMSApplication.getStrFromEnvMap("location_libname");
    a.a(TMSApplication.getApplicaionContext(), str);
  }

  private TelNumberLocator(Context paramContext)
  {
    this.mContext = paramContext;
    this.object = newObject(paramContext);
    if (this.object == 0)
      throw new OutOfMemoryError();
    reload();
  }

  private static native void deleteObject(int paramInt);

  private static native int[] getAreaCode(int paramInt);

  private static native int getAreaCodeLocation(int paramInt1, int paramInt2, StringBuffer paramStringBuffer);

  private static native int getCityNameList(int paramInt, String paramString, ArrayList<String> paramArrayList);

  private static native int[] getCountryCode(int paramInt);

  private static native int getCountryCodeLocation(int paramInt1, int paramInt2, StringBuffer paramStringBuffer);

  public static TelNumberLocator getDefault(Context paramContext)
  {
    try
    {
      if (mInstance == null)
        mInstance = new TelNumberLocator(paramContext);
      TelNumberLocator localTelNumberLocator = mInstance;
      return localTelNumberLocator;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static native int getDetailYellowPages(int paramInt, ArrayList<Integer> paramArrayList, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayList<String> paramArrayList3);

  private static native int getLocation(int paramInt, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, StringBuffer paramStringBuffer3, String paramString, boolean paramBoolean);

  private static native int getMobileNumLocation(int paramInt1, int paramInt2, StringBuffer paramStringBuffer);

  private static native int getProvinceNameList(int paramInt, ArrayList<String> paramArrayList);

  private static native int getYellowPages(int paramInt, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2);

  private static native int init(int paramInt, String paramString1, String paramString2);

  private static native int newObject(Context paramContext);

  private static native int patch(int paramInt, String paramString1, String paramString2, String paramString3);

  private void throwIfError(int paramInt)
  {
    switch (paramInt)
    {
    default:
      throw new TelNumberLocatorException(paramInt);
    case -4:
      throw new OutOfMemoryError();
    case 0:
    }
  }

  protected void finalize()
  {
    if (this.object != 0)
      deleteObject(this.object);
  }

  public int[] getAreaCode()
  {
    return getAreaCode(this.object);
  }

  public String getAreaCodeLocation(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = getAreaCodeLocation(this.object, paramInt, localStringBuffer);
    if (i < 0)
      if (i != -1);
    for (String str = ""; ; str = localStringBuffer.toString())
    {
      return str;
      throwIfError(i);
    }
  }

  public ArrayList<String> getCityNameList(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    throwIfError(getCityNameList(this.object, paramString, localArrayList));
    return localArrayList;
  }

  public int[] getCountryCode()
  {
    return getCountryCode(this.object);
  }

  public String getCountryCodeLocation(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = getCountryCodeLocation(this.object, paramInt, localStringBuffer);
    if (i < 0)
      if (i != -1);
    for (String str = ""; ; str = localStringBuffer.toString())
    {
      return str;
      throwIfError(i);
    }
  }

  public boolean getDetailYellowPages(ArrayList<Integer> paramArrayList, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2, ArrayList<String> paramArrayList3)
  {
    if ((paramArrayList1 == null) || (paramArrayList2 == null));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      throwIfError(getDetailYellowPages(this.object, paramArrayList, paramArrayList1, paramArrayList2, paramArrayList3));
    }
  }

  public void getLocation(StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, StringBuffer paramStringBuffer3, String paramString, boolean paramBoolean)
  {
    int i = getLocation(this.object, paramStringBuffer1, paramStringBuffer2, paramStringBuffer3, paramString, paramBoolean);
    if (i < 0)
    {
      if (i != -1)
        break label64;
      paramStringBuffer1.replace(0, paramStringBuffer1.length(), "");
      paramStringBuffer2.replace(0, paramStringBuffer2.length(), "");
      paramStringBuffer3.replace(0, paramStringBuffer3.length(), "");
    }
    while (true)
    {
      return;
      label64: throwIfError(i);
    }
  }

  public String getMobileNumLocation(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = getMobileNumLocation(this.object, paramInt, localStringBuffer);
    if (i < 0)
      if (i != -1);
    for (String str = ""; ; str = localStringBuffer.toString())
    {
      return str;
      throwIfError(i);
    }
  }

  public ArrayList<String> getProvinceNameList()
  {
    ArrayList localArrayList = new ArrayList();
    throwIfError(getProvinceNameList(this.object, localArrayList));
    return localArrayList;
  }

  public boolean getYellowPages(ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2)
  {
    if ((paramArrayList1 == null) || (paramArrayList2 == null));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      throwIfError(getYellowPages(this.object, paramArrayList1, paramArrayList2));
    }
  }

  public int patchLocation(String paramString1, String paramString2)
  {
    String str = eu.a(this.mContext, "nldb.sdb");
    return patch(this.object, str, paramString1, paramString2);
  }

  public void reload()
  {
    try
    {
      String str1 = eu.a(this.mContext, "nldb.sdb");
      String str2 = eu.a(this.mContext, "yd.sdb");
      if ((str1 != null) || (str2 != null))
        throwIfError(init(this.object, str1, str2));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tccdb.TelNumberLocator
 * JD-Core Version:    0.6.2
 */