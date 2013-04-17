import com.tencent.tccdb.MMatchSysResult;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker;
import com.tencent.tmsecure.module.aresengine.IIntelligentSmsChecker.CheckResult;
import com.tencent.tmsecure.module.aresengine.SmsEntity;

public final class bvj
  implements IIntelligentSmsChecker
{
  private IIntelligentSmsChecker.CheckResult a = new IIntelligentSmsChecker.CheckResult();

  public bvj()
  {
    this.a.mContentType = 1;
    this.a.mSuggestion = 4;
    this.a.mInnterResult = new MMatchSysResult(0, 0, 0, 0, 0, null);
  }

  public final IIntelligentSmsChecker.CheckResult check(SmsEntity paramSmsEntity)
  {
    return this.a;
  }

  public final boolean isChartSms(SmsEntity paramSmsEntity)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bvj
 * JD-Core Version:    0.6.2
 */