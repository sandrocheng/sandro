import android.os.Handler;
import android.os.Message;

final class qh
  implements qc.a
{
  qh(qc paramqc)
  {
  }

  public final void a(lc paramlc)
  {
    qc localqc = this.a;
    Message localMessage = localqc.e.obtainMessage(10, 1, 1, paramlc);
    localqc.e.sendMessage(localMessage);
  }

  public final void b(lc paramlc)
  {
    this.a.a(10, paramlc);
  }

  public final void c(lc paramlc)
  {
    qc localqc = this.a;
    Message localMessage = localqc.e.obtainMessage(10, 3, 3, paramlc);
    localqc.e.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qh
 * JD-Core Version:    0.6.2
 */