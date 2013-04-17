import QQPIM.UserActionTime;
import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class abn
  implements Runnable
{
  abn(abm paramabm, CallLogEntity paramCallLogEntity, TelephonyEntity paramTelephonyEntity)
  {
  }

  public final void run()
  {
    nd localnd;
    try
    {
      List localList = abm.a(this.c).a(this.a.phonenum, null);
      if ((localList.size() > 0) && (abm.a(this.c).b(localList)))
      {
        abm.b(this.c).a(3, this.b);
        localnd = nd.a();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          mk localmk = (mk)localIterator.next();
          mm localmm = abm.c(this.c).a(localmk, true, false);
          UserActionTime localUserActionTime = new UserActionTime();
          localUserActionTime.time = ((int)(System.currentTimeMillis() / 1000L));
          localUserActionTime.userAction = 18;
          localmm.i.add(localUserActionTime);
          abm.c(this.c).a(localmm, false);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    while (true)
    {
      return;
      localnd.a(26418);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abn
 * JD-Core Version:    0.6.2
 */