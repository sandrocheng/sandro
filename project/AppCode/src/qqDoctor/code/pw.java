import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

public final class pw
  implements DataHandler.DataHandlerCallback
{
  private ov a = ov.a();
  private hh b = hh.a();
  private ho c = ho.a();

  public final void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    if (!(paramTelephonyEntity instanceof CallLogEntity));
    while (true)
    {
      return;
      if (paramInt1 == 1)
      {
        if (((CallLogEntity)paramTelephonyEntity).type == 1)
        {
          this.c.h(1 + this.c.N());
          this.a.a(paramTelephonyEntity);
        }
      }
      else if (paramInt2 == 1)
      {
        this.c.d(1 + this.c.G());
        this.c.f(1 + this.c.L());
        this.a.a(1, paramTelephonyEntity);
        String str1 = paramTelephonyEntity.phonenum;
        if ((str1 != null) && (str1.length() > 2) && (this.b.e() == 0) && (this.c.k()))
        {
          String str2 = this.c.i();
          if (str2.length() > 0)
            gu.a(str1, str2);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pw
 * JD-Core Version:    0.6.2
 */