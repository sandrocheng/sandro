import android.content.SharedPreferences;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

final class oq
  implements lt
{
  oq(op paramop)
  {
  }

  public final boolean a(SmsEntity paramSmsEntity)
  {
    if (paramSmsEntity != null);
    try
    {
      if ((paramSmsEntity.phonenum != null) && (jo.a().a.getBoolean("isopen", true)))
      {
        boolean bool = op.a(this.a).getIntelligentSmsChecker().isChartSms(paramSmsEntity);
        if (zq.a == null)
          zq.a = jo.a().a("nocharge_body_smslog");
        if (zq.b == null)
          zq.b = jo.a().a("nocharge_phonenum_smslog");
        if ((!zq.a(paramSmsEntity)) && (bool))
          op.b(this.a).g();
      }
      return false;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     oq
 * JD-Core Version:    0.6.2
 */