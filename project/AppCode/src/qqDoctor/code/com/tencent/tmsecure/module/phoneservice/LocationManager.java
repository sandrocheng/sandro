package com.tencent.tmsecure.module.phoneservice;

import android.content.Context;
import bxm;
import com.tencent.tccdb.TelNumberLocator;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;

public final class LocationManager extends BaseManager
{
  private bxm a;

  public final ArrayList<String> getCityNameList(String paramString)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.b(paramString))
      return localArrayList;
  }

  public final String getLocation(String paramString)
  {
    if (isExpired());
    for (String str = ""; ; str = this.a.a(paramString))
      return str;
  }

  public final void getLocation(StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, StringBuffer paramStringBuffer3, String paramString)
  {
    if (isExpired());
    label67: 
    while (true)
    {
      return;
      bxm localbxm = this.a;
      if (paramString == null);
      for (String str = ""; ; str = paramString)
      {
        while (true)
        {
          if ((paramStringBuffer1 == null) || (paramStringBuffer2 == null) || (paramStringBuffer3 == null))
            break label67;
          try
          {
            localbxm.a.getLocation(paramStringBuffer1, paramStringBuffer2, paramStringBuffer3, str, false);
          }
          catch (Exception localException)
          {
            localException.getMessage();
          }
        }
        break;
      }
    }
  }

  public final ArrayList<String> getProvinceNameList()
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = this.a.a())
      return localArrayList;
  }

  public final boolean isYellowPageNumber(String paramString)
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      bxm localbxm = this.a;
      bool2 = false;
      if (paramString != null)
        bool2 = localbxm.b.contains(paramString);
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bxm();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.LocationManager
 * JD-Core Version:    0.6.2
 */