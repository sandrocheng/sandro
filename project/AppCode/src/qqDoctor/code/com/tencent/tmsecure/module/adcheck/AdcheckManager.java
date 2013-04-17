package com.tencent.tmsecure.module.adcheck;

import android.content.Context;
import bto;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class AdcheckManager extends BaseManager
{
  private bto a;

  public final boolean checkIsAd(NotificationInfo paramNotificationInfo)
  {
    if (isExpired());
    while (true)
      return false;
  }

  public final boolean clear(NotificationInfo paramNotificationInfo)
  {
    if (ScriptHelper.canRunAtRoot() == 0);
    for (boolean bool = true; ; bool = false)
      return bto.a(paramNotificationInfo, bool);
  }

  public final boolean clear(List<NotificationInfo> paramList)
  {
    int i;
    Iterator localIterator;
    boolean bool;
    if (ScriptHelper.canRunAtRoot() == 0)
    {
      i = 1;
      if (i == 0)
        break label68;
      localIterator = paramList.iterator();
      bool = false;
      label28: if (localIterator.hasNext())
        break label46;
    }
    while (true)
    {
      return bool;
      i = 0;
      break;
      label46: bool &= bto.a((NotificationInfo)localIterator.next(), true);
      break label28;
      label68: bool = false;
    }
  }

  public final ArrayList<NotificationInfo> findAllNotificationInfo()
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = bto.a())
      return localArrayList;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bto();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.adcheck.AdcheckManager
 * JD-Core Version:    0.6.2
 */