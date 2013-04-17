package com.tencent.tmsecure.module.applist;

import QQPIM.SoftElementInfo;
import QQPIM.SoftList;
import QQPIM.SoftListType;
import android.content.Context;
import btu;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class AppListManager extends BaseManager
{
  private btu a;

  public boolean contains(String paramString, SoftListType paramSoftListType)
  {
    boolean bool;
    if (isExpired())
      bool = false;
    while (true)
    {
      return bool;
      btu localbtu = this.a;
      SoftList localSoftList1 = (SoftList)localbtu.a.get(paramSoftListType.toString());
      if (localSoftList1 == null)
      {
        localSoftList1 = btu.b(paramSoftListType.toString(), btu.a(paramSoftListType));
        if (localSoftList1 == null)
          bool = false;
        else
          localbtu.a.put(paramSoftListType.toString(), localSoftList1);
      }
      else
      {
        SoftList localSoftList2 = localSoftList1;
        switch (paramSoftListType.value())
        {
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 18:
        case 25:
        default:
          bool = localbtu.a(paramString, localSoftList2);
          break;
        case 0:
        case 1:
        case 2:
        case 4:
        case 5:
        case 17:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 26:
        case 27:
          bool = localbtu.a(paramString, localSoftList2);
          break;
        case 3:
          AppEntity localAppEntity = localbtu.b.getAppInfo(paramString, 8);
          if (localAppEntity == null)
          {
            bool = false;
          }
          else
          {
            long l = ((Long)localAppEntity.get("size")).longValue();
            Iterator localIterator = localSoftList2.vctSofts.iterator();
            label284: SoftElementInfo localSoftElementInfo;
            if (!localIterator.hasNext())
              localSoftElementInfo = null;
            while (true)
            {
              if ((localSoftElementInfo != null) && ((localSoftElementInfo.pkgname.length() == 0) || (localSoftElementInfo.pkgname.equals(paramString))))
                break label358;
              bool = false;
              break;
              localSoftElementInfo = (SoftElementInfo)localIterator.next();
              if (localSoftElementInfo.softsize != l)
                break label284;
            }
            label358: bool = localbtu.a(paramString, localSoftElementInfo.cert);
          }
          break;
        }
      }
    }
  }

  public SoftList loadAppList(SoftListType paramSoftListType)
  {
    if (isExpired());
    for (SoftList localSoftList = null; ; localSoftList = btu.b(paramSoftListType.toString(), btu.a(paramSoftListType)))
      return localSoftList;
  }

  public void onCreate(Context paramContext)
  {
    this.a = new btu();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.applist.AppListManager
 * JD-Core Version:    0.6.2
 */