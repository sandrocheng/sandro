import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker.CheckResult;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.aresengine.TelephonyEntity;

public final class aam
  implements DataHandler.DataHandlerCallback
{
  private ov a = ov.a();
  private zs b = new zs();
  private ho c = ho.a();

  public final void onCallback(TelephonyEntity paramTelephonyEntity, int paramInt1, int paramInt2, Object[] paramArrayOfObject)
  {
    if (!(paramTelephonyEntity instanceof SmsEntity));
    while (true)
    {
      return;
      if (paramInt1 == 1)
      {
        SmsEntity localSmsEntity = (SmsEntity)paramTelephonyEntity;
        if ((paramInt2 == 2) && (localSmsEntity.protocolType != 1))
          this.a.e();
        else if ((paramInt2 == 2) && (!oo.a()) && (localSmsEntity.protocolType == 1))
          this.a.e();
      }
      else if (paramInt1 != 256)
      {
        if (paramInt2 == 1)
        {
          this.c.e(1 + this.c.K());
          this.a.a(2, paramTelephonyEntity);
        }
        else if ((paramInt2 == 2) && (paramArrayOfObject != null) && (paramArrayOfObject.length > 2))
        {
          IIntelligentSmsChecker.CheckResult localCheckResult = (IIntelligentSmsChecker.CheckResult)paramArrayOfObject[1];
          boolean bool = ((Boolean)paramArrayOfObject[2]).booleanValue();
          if (localCheckResult != null)
            if (IIntelligentSmsChecker.CheckResult.shouldBeBlockedOrNot(localCheckResult))
            {
              mm localmm2 = zs.a((SmsEntity)paramTelephonyEntity, localCheckResult.mInnterResult, true);
              this.b.a(localmm2, true);
              if (bool)
              {
                this.c.e(1 + this.c.K());
                this.a.a(2, paramTelephonyEntity);
              }
            }
            else if (localCheckResult.mSuggestion == 1)
            {
              mm localmm1 = zs.a((SmsEntity)paramTelephonyEntity, localCheckResult.mInnterResult, false);
              this.b.a(localmm1, true);
            }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aam
 * JD-Core Version:    0.6.2
 */