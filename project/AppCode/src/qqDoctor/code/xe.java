import com.tencent.tmsecure.module.qscanner.QScanListener;
import java.util.concurrent.atomic.AtomicBoolean;

final class xe extends QScanListener
{
  xe(AtomicBoolean paramAtomicBoolean)
  {
  }

  public final void onCloudScanError(int paramInt)
  {
    this.a.set(true);
  }

  public final void onScanStarted()
  {
    this.a.set(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     xe
 * JD-Core Version:    0.6.2
 */