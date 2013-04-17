import android.database.ContentObserver;
import android.os.Handler;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.FilterResult;
import com.tencent.tmsecure.module.aresengine.IContactDao;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker.CheckResult;
import com.tencent.tmsecure.module.aresengine.ILastCallLogDao;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.Map;

final class or extends ContentObserver
{
  or(op paramop, Handler paramHandler)
  {
    super(paramHandler);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    SmsEntity localSmsEntity1;
    if (!paramBoolean)
    {
      localSmsEntity1 = op.c(this.a).a(5, 1);
      if (localSmsEntity1 == null)
        break label507;
      if (localSmsEntity1.phonenum == null)
        localSmsEntity1.phonenum = "";
      localSmsEntity1.phonenum = fu.a(localSmsEntity1.phonenum);
      int i = op.d(this.a).b();
      if ((i == 0) || (i == 2))
        break label74;
    }
    label74: boolean bool2;
    label191: boolean bool3;
    label237: IIntelligentSmsChecker.CheckResult localCheckResult;
    label507: SmsEntity localSmsEntity2;
    iq localiq1;
    do
    {
      do
      {
        String str4;
        Long localLong;
        long l;
        do
        {
          do
          {
            return;
            if ((op.e(this.a).contains(localSmsEntity1.phonenum, 1)) || (op.f(this.a).contains(localSmsEntity1.phonenum, 1)) || (op.c(this.a).contains(localSmsEntity1.phonenum)) || (op.g(this.a).contains(localSmsEntity1.phonenum)))
              break label658;
            io localio = op.h(this.a);
            String str3 = fu.e(localSmsEntity1.phonenum);
            if (str3 == null)
              break label660;
            bool2 = localio.e.contains(fu.f(fu.a(str3)));
            if (!bool2)
            {
              iq localiq2 = op.i(this.a);
              String str5 = fu.e(localSmsEntity1.phonenum);
              if (str5 == null)
                break label666;
              bool3 = localiq2.e.contains(fu.f(fu.a(str5)));
              if (!bool3)
                break;
            }
          }
          while (ft.b(localSmsEntity1.phonenum));
          str4 = fu.f(localSmsEntity1.phonenum);
          localLong = (Long)op.j(this.a).get(str4);
          if (localLong == null)
            break;
          l = System.currentTimeMillis();
        }
        while ((localLong.longValue() > l - 15000L) && (localLong.longValue() < l + 15000L));
        op.j(this.a).remove(str4);
        localCheckResult = op.a(this.a).getIntelligentSmsChecker().check(localSmsEntity1);
        if (localCheckResult != null)
        {
          if (!IIntelligentSmsChecker.CheckResult.shouldBeBlockedOrNot(localCheckResult))
            break label672;
          mk localmk = new mk();
          localmk.phonenum = localSmsEntity1.phonenum;
          localmk.type = localSmsEntity1.type;
          localmk.body = localSmsEntity1.body;
          localmk.date = localSmsEntity1.date;
          FilterResult localFilterResult = new FilterResult();
          localFilterResult.mFilterfiled = 64;
          localFilterResult.mParams = new Object[] { localCheckResult };
          if (op.k(this.a).a(localmk, localFilterResult) > 0L)
          {
            op.c(this.a).remove(localSmsEntity1);
            op.d(this.a).e(1 + op.d(this.a).K());
            op.b(this.a).a(2, localmk);
          }
        }
        localSmsEntity2 = op.c(this.a).a(10, 2);
      }
      while (localSmsEntity2 == null);
      localiq1 = op.i(this.a);
    }
    while (localSmsEntity2 == null);
    while (true)
    {
      try
      {
        String str1 = fu.e(localSmsEntity2.phonenum);
        if (str1 == null)
          break;
        String str2 = fu.e(localSmsEntity2.phonenum);
        if (str2 == null)
          break label681;
        bool1 = localiq1.e.contains(fu.f(fu.a(str2)));
        if ((bool1) || (localiq1.c.b(localSmsEntity2.phonenum)) || (localiq1.d.b(localSmsEntity2.phonenum)) || (localiq1.b.contains(localSmsEntity2.phonenum)))
          break;
        localiq1.a(fu.f(fu.a(str1)));
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      break;
      label658: break;
      label660: bool2 = false;
      break label191;
      label666: bool3 = false;
      break label237;
      label672: break label507;
      label681: boolean bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     or
 * JD-Core Version:    0.6.2
 */