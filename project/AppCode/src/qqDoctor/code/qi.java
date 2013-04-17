import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;

final class qi extends QScanListener
{
  qi(qc.a parama)
  {
  }

  public final void onPackageScanProgress(int paramInt, QScanResultEntity paramQScanResultEntity)
  {
    lc locallc = new lc();
    locallc.a = 0;
    locallc.d = Integer.valueOf(paramInt);
    locallc.c = paramQScanResultEntity.softName;
    if (this.a != null)
      this.a.a(locallc);
  }

  public final void onScanStarted()
  {
    lc locallc = new lc();
    locallc.a = 0;
    if (this.a != null)
      this.a.c(locallc);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qi
 * JD-Core Version:    0.6.2
 */