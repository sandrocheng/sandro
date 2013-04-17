import android.os.Handler;
import android.os.Message;

final class qe
  implements qc.a
{
  qe(qc paramqc)
  {
  }

  public final void a(lc paramlc)
  {
    qc localqc = this.a;
    Message localMessage = localqc.e.obtainMessage(5, 1, 1, paramlc);
    localqc.e.sendMessage(localMessage);
  }

  public final void b(lc paramlc)
  {
    this.a.a(5, paramlc);
  }

  public final void c(lc paramlc)
  {
    qc localqc = this.a;
    Message localMessage = localqc.e.obtainMessage(5, 3, 3, paramlc);
    localqc.e.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qe
 * JD-Core Version:    0.6.2
 */