import com.tencent.tmsecure.module.aresengine.CallLogEntity;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;
import java.util.Set;

public final class abm
  implements DataHandler.DataHandlerCallback
{
  private ov a = ov.a();
  private ho b = ho.a();
  private jp c = new jp("smslog", "mms_pdu", "mms_parts");
  private jb d = jb.a();
  private zs e = new zs();

  public final void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    if (!(paramTelephonyEntity instanceof CallLogEntity));
    while (true)
    {
      return;
      CallLogEntity localCallLogEntity = (CallLogEntity)paramTelephonyEntity;
      label56: io localio;
      switch (paramInt1)
      {
      default:
        if (localCallLogEntity.type != 1)
          continue;
        localio = f.g();
        if (localCallLogEntity == null);
      case 1:
      case 128:
      case 64:
      case 256:
        try
        {
          String str2 = fu.e(localCallLogEntity.phonenum);
          if (str2 != null)
          {
            String str3 = fu.e(localCallLogEntity.phonenum);
            boolean bool2 = false;
            if (str3 != null)
              bool2 = localio.e.contains(fu.f(fu.a(str3)));
            if ((!bool2) && (!localio.c.b(localCallLogEntity.phonenum)) && (!localio.d.b(localCallLogEntity.phonenum)) && (!localio.b.contains(localCallLogEntity.phonenum)))
              localio.a(fu.f(fu.a(str2)));
          }
          if (localCallLogEntity.duration <= 2L)
            continue;
          new Thread(new abn(this, localCallLogEntity, paramTelephonyEntity)).start();
          continue;
          if ((localCallLogEntity.type != 3) || (!this.b.bd()) || (this.b.av() != 0))
            break label56;
          this.a.d();
          break label56;
          if (paramInt2 != 2)
            break label56;
          this.b.d(1 + this.b.G());
          this.b.f(1 + this.b.L());
          this.a.b(paramTelephonyEntity.phonenum);
          this.a.a(3, paramTelephonyEntity);
          break label56;
          if ((localCallLogEntity.type == 1) && (localCallLogEntity.duration < 15L))
          {
            jb localjb2 = this.d;
            String str4 = fu.e(paramTelephonyEntity.phonenum);
            if (str4 != null);
            for (boolean bool3 = localjb2.a.contains(fu.f(str4)); ; bool3 = false)
            {
              if (bool3)
                break label426;
              this.d.a(localCallLogEntity);
              this.a.a(localCallLogEntity);
              nd.a().a(26467);
              break;
            }
          }
          label426: if (!this.b.z())
            break label56;
          this.a.c(paramTelephonyEntity.phonenum);
          break label56;
          if ((localCallLogEntity.type != 1) || (localCallLogEntity.duration >= 15L))
            break label56;
          jb localjb1 = this.d;
          String str1 = fu.e(paramTelephonyEntity.phonenum);
          if (str1 != null);
          for (boolean bool1 = localjb1.a.contains(fu.f(str1)); !bool1; bool1 = false)
          {
            this.d.a(localCallLogEntity);
            this.a.a(localCallLogEntity);
            break;
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abm
 * JD-Core Version:    0.6.2
 */