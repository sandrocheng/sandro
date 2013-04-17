import QQPIM.UserActionTime;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker.CheckResult;
import com.tencent.tmsecure.module.aresengine.IntelligentSmsHandler;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class os
  implements IntelligentSmsHandler
{
  os(op paramop)
  {
  }

  public final boolean handleCheckResult(SmsEntity paramSmsEntity, IIntelligentSmsChecker.CheckResult paramCheckResult, boolean paramBoolean)
  {
    if ((paramSmsEntity == null) || (paramSmsEntity.phonenum == null));
    while (true)
    {
      return paramBoolean;
      if (paramBoolean)
      {
        paramSmsEntity.phonenum = fu.a(paramSmsEntity.phonenum);
        if (ft.b(paramSmsEntity.phonenum))
        {
          io localio = op.h(this.a);
          String str1 = fu.e(paramSmsEntity.phonenum);
          if (str1 != null);
          for (boolean bool1 = localio.e.contains(fu.f(fu.a(str1))); ; bool1 = false)
          {
            if (!bool1)
              break label167;
            op.l(this.a);
            mm localmm3 = zs.a(paramSmsEntity, paramCheckResult.mInnterResult, true);
            UserActionTime localUserActionTime3 = new UserActionTime();
            localUserActionTime3.time = ((int)(System.currentTimeMillis() / 1000L));
            localUserActionTime3.userAction = 18;
            localmm3.i.add(localUserActionTime3);
            op.l(this.a).a(localmm3, false);
            paramBoolean = false;
            break;
          }
          label167: iq localiq = op.i(this.a);
          String str2 = fu.e(paramSmsEntity.phonenum);
          if (str2 != null);
          for (boolean bool2 = localiq.e.contains(fu.f(fu.a(str2))); ; bool2 = false)
          {
            if (!bool2)
              break label296;
            op.l(this.a);
            mm localmm2 = zs.a(paramSmsEntity, paramCheckResult.mInnterResult, true);
            UserActionTime localUserActionTime2 = new UserActionTime();
            localUserActionTime2.time = ((int)(System.currentTimeMillis() / 1000L));
            localUserActionTime2.userAction = 21;
            localmm2.i.add(localUserActionTime2);
            op.l(this.a).a(localmm2, false);
            paramBoolean = false;
            break;
          }
          label296: if ((paramSmsEntity.body != null) && (!"".equals(paramSmsEntity.body)))
          {
            String str3 = paramSmsEntity.body;
            if (str3.length() > 50)
              str3 = str3.substring(0, 50);
            List localList = op.k(this.a).a(paramSmsEntity.phonenum, str3);
            if (localList.size() > 0)
            {
              op.j(this.a).put(fu.f(paramSmsEntity.phonenum), Long.valueOf(System.currentTimeMillis()));
              new Thread(new ot(this, localList, paramSmsEntity)).start();
              op.l(this.a);
              mm localmm1 = zs.a(paramSmsEntity, paramCheckResult.mInnterResult, true);
              UserActionTime localUserActionTime1 = new UserActionTime();
              localUserActionTime1.time = ((int)(System.currentTimeMillis() / 1000L));
              localUserActionTime1.userAction = 22;
              localmm1.i.add(localUserActionTime1);
              op.l(this.a).a(localmm1, false);
              paramBoolean = false;
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     os
 * JD-Core Version:    0.6.2
 */