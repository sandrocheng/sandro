import QQPIM.EUserAction;
import QQPIM.SmsReport;
import QQPIM.TelReport;
import QQPIM.UserActionTime;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tccdb.MMatchSysResult;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class zs
{
  Object a = new byte[0];
  jr b = new jr();
  hk c = new hk();
  ho d = ho.a();
  Handler e = new zt(this, QQPimApplication.a().getMainLooper());
  private jb f = jb.a();

  public static ArrayList<SmsReport> a(List<mm> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
      localArrayList.add(mm.a((mm)localIterator.next()));
    return localArrayList;
  }

  private static List<mb.a> a(List<mb.a> paramList, boolean paramBoolean)
  {
    Object localObject1 = null;
    if (paramList == null)
      return localObject1;
    int i = paramList.size();
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    Object localObject2 = null;
    label30: Object localObject3;
    int k;
    if (j < i)
    {
      localObject3 = (mb.a)paramList.get(j);
      if (localObject3 != null)
      {
        if ((0x2 & ((mb.a)localObject3).e) == 0)
          break label97;
        k = 1;
        label67: if (k == 0)
          localArrayList.add(localObject3);
      }
      if (localObject3 == null)
        break label138;
    }
    while (true)
    {
      j++;
      localObject2 = localObject3;
      break label30;
      label97: k = 0;
      break label67;
      if ((localArrayList.size() <= 0) && (paramBoolean) && (localObject2 != null))
        localArrayList.add(localObject2);
      localObject1 = localArrayList;
      break;
      label138: localObject3 = localObject2;
    }
  }

  public static mm a(SmsEntity paramSmsEntity, MMatchSysResult paramMMatchSysResult, boolean paramBoolean)
  {
    mm localmm = new mm();
    localmm.j = "";
    localmm.e = paramMMatchSysResult.finalAction;
    localmm.d = ((int)(System.currentTimeMillis() / 1000L));
    localmm.h = paramMMatchSysResult.minusMark;
    localmm.b = paramSmsEntity.phonenum;
    localmm.c = paramSmsEntity.getBody();
    localmm.n = paramSmsEntity.protocolType;
    localmm.f = paramMMatchSysResult.contentType;
    localmm.m = paramMMatchSysResult.actionReason;
    if (paramMMatchSysResult.ruleTypeID != null)
      localmm.g.addAll(Arrays.asList(paramMMatchSysResult.ruleTypeID));
    if (paramBoolean)
      localmm.k = paramSmsEntity.date;
    while (true)
    {
      return localmm;
      localmm.l = paramSmsEntity.date;
    }
  }

  public final TelReport a(CallLogEntity paramCallLogEntity)
  {
    TelReport localTelReport = new TelReport();
    localTelReport.calltime = ((int)(paramCallLogEntity.date / 1000L));
    localTelReport.phonenum = paramCallLogEntity.phonenum;
    localTelReport.talktime = ((int)paramCallLogEntity.duration);
    if (paramCallLogEntity.type == 3);
    for (localTelReport.teltype = 1; ; localTelReport.teltype = 3)
    {
      localTelReport.tagtype = this.f.a(paramCallLogEntity.phonenum);
      localTelReport.useraction = EUserAction.EMUA_IMPEACH.value();
      return localTelReport;
    }
  }

  public final mm a(mk parammk, boolean paramBoolean1, boolean paramBoolean2)
  {
    mm localmm1;
    mm localmm2;
    if (paramBoolean1)
    {
      localmm1 = this.b.a(parammk.date);
      if (localmm1 != null)
        break label231;
      localmm2 = new mm();
      localmm2.a = -1;
      localmm2.m = -1;
      localmm2.j = null;
      localmm2.e = -1;
      localmm2.d = ((int)(System.currentTimeMillis() / 1000L));
      localmm2.h = -1;
      localmm2.b = parammk.a();
      localmm2.c = parammk.getBody();
      localmm2.n = parammk.protocolType;
      localmm2.f = -1;
      if (!paramBoolean1)
        break label206;
      localmm2.k = parammk.date;
      localmm2.l = 0L;
      label126: if (parammk.j == 1)
        localmm2.m = 10;
    }
    label206: label224: label231: for (mm localmm3 = localmm2; ; localmm3 = localmm1)
    {
      ArrayList localArrayList;
      if (paramBoolean2)
      {
        localArrayList = localmm3.i;
        if (!paramBoolean1)
          break label224;
      }
      for (int i = 11; ; i = 19)
      {
        localArrayList.add(new UserActionTime(i, (int)(System.currentTimeMillis() / 1000L)));
        return localmm3;
        localmm1 = this.b.b(parammk.date);
        break;
        localmm2.k = 0L;
        localmm2.l = parammk.date;
        break label126;
      }
    }
  }

  public final void a()
  {
    List localList1 = new ja().a(true);
    if (localList1 != null)
    {
      ArrayList localArrayList = new ArrayList();
      new ArrayList();
      int i = localList1.size();
      for (int j = 0; j < i; j++)
      {
        List localList2 = a(((mb)localList1.get(j)).f, false);
        if (localList2 != null)
          localArrayList.addAll(localList2);
      }
      zw localzw = new zw();
      if (localArrayList.size() > 0)
        new zx(this, localArrayList, true, localzw).start();
    }
  }

  public final void a(List<mb.a> paramList, dv paramdv)
  {
    List localList = a(paramList, true);
    if ((localList == null) || (localList.size() <= 0));
    while (true)
    {
      return;
      new zx(this, localList, false, paramdv).start();
    }
  }

  public final void a(mk parammk, boolean paramBoolean, int paramInt)
  {
    mm localmm;
    UserActionTime localUserActionTime;
    Message localMessage;
    if ((paramInt == 13) || (paramInt == 4))
    {
      localmm = a(parammk, paramBoolean, false);
      if (localmm != null)
      {
        localUserActionTime = new UserActionTime(paramInt, (int)(System.currentTimeMillis() / 1000L));
        if (localmm.a <= 0)
          break label190;
        localMessage = this.e.obtainMessage(1);
        label61: localMessage.obj = localmm;
        switch (paramInt)
        {
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        default:
        case 13:
        case 14:
        case 15:
        case 11:
        case 12:
        case 4:
        }
      }
    }
    while (true)
    {
      localmm.i.add(localUserActionTime);
      this.e.sendMessage(localMessage);
      return;
      if (paramBoolean)
      {
        localmm = this.b.a(parammk.date);
        break;
      }
      localmm = this.b.b(parammk.date);
      break;
      label190: localMessage = this.e.obtainMessage(2);
      break label61;
      if (localmm.e == 3);
      for (int k = 5; ; k = 10)
      {
        localUserActionTime.userAction = k;
        break;
      }
      if (localmm.e == 3);
      for (int j = 6; ; j = 8)
      {
        localUserActionTime.userAction = j;
        break;
      }
      if (localmm.e == 3);
      for (int i = 7; ; i = 9)
      {
        localUserActionTime.userAction = i;
        break;
      }
      localUserActionTime.userAction = paramInt;
      continue;
      localUserActionTime.userAction = paramInt;
      continue;
      localUserActionTime.userAction = paramInt;
    }
  }

  public final void a(mm parammm, boolean paramBoolean)
  {
    int i = 0;
    int j;
    HashMap localHashMap;
    if (paramBoolean)
    {
      boolean bool1 = this.d.aF();
      i = 0;
      if (bool1)
      {
        boolean bool2 = this.d.cU();
        i = 0;
        if (bool2)
        {
          boolean bool3 = System.currentTimeMillis() < this.d.dd();
          i = 0;
          if (!bool3)
          {
            if (a.b(this.d.cX(), System.currentTimeMillis()))
              j = this.d.cZ();
            while (true)
            {
              int k = this.d.cW();
              i = 0;
              if (j >= k)
                break label330;
              String str = this.d.cV();
              i = 0;
              if (str == null)
                break label330;
              boolean bool4 = "".equals(str);
              i = 0;
              if (bool4)
                break label330;
              localHashMap = new HashMap();
              try
              {
                String[] arrayOfString1 = str.split("\\|");
                int i2 = arrayOfString1.length;
                int i3 = 0;
                label160: if (i3 < i2)
                {
                  String[] arrayOfString2 = arrayOfString1[i3].split(",");
                  if (Integer.valueOf(arrayOfString2[1]).intValue() == 0)
                    localHashMap.put(Integer.valueOf(arrayOfString2[0]), Integer.valueOf(-2147483648));
                  while (true)
                  {
                    i3++;
                    break label160;
                    this.d.y(System.currentTimeMillis());
                    this.d.F(0);
                    j = 0;
                    break;
                    localHashMap.put(Integer.valueOf(arrayOfString2[0]), Integer.valueOf(arrayOfString2[1]));
                  }
                }
              }
              catch (Exception localException)
              {
                if (parammm.e != 1)
                  break label364;
              }
            }
            if ((localHashMap.get(Integer.valueOf(1)) == null) || (parammm.h < ((Integer)localHashMap.get(Integer.valueOf(1))).intValue()))
              break label364;
            this.d.F(j + 1);
            i = 1;
          }
        }
      }
    }
    label330: if (i != 0)
    {
      Message localMessage2 = this.e.obtainMessage(4);
      localMessage2.obj = parammm;
      this.e.sendMessageDelayed(localMessage2, 5000L);
    }
    while (true)
    {
      return;
      label364: if ((parammm.e == 2) && (localHashMap.get(Integer.valueOf(2)) != null) && (parammm.h >= ((Integer)localHashMap.get(Integer.valueOf(2))).intValue()))
      {
        this.d.F(j + 1);
        i = 1;
        break;
      }
      int m = parammm.e;
      i = 0;
      if (m != 3)
        break;
      Object localObject = localHashMap.get(Integer.valueOf(3));
      i = 0;
      if (localObject == null)
        break;
      int n = parammm.h;
      int i1 = ((Integer)localHashMap.get(Integer.valueOf(3))).intValue();
      i = 0;
      if (n < i1)
        break;
      this.d.F(j + 1);
      i = 1;
      break;
      Message localMessage1 = this.e.obtainMessage(2);
      localMessage1.obj = parammm;
      this.e.sendMessage(localMessage1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zs
 * JD-Core Version:    0.6.2
 */