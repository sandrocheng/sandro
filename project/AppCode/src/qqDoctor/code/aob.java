import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;

final class aob
  implements Runnable
{
  aob(aoa paramaoa)
  {
  }

  public final void run()
  {
    if (aoa.a(this.a) == null)
      return;
    qc localqc = aoa.a(this.a);
    if (qc.g)
      ha.b(localqc.d, localqc.d.getResources().getString(2131428228));
    while (true)
    {
      aoa.b(this.a).sendEmptyMessage(101);
      break;
      nd.a().a(13);
      qc.g = true;
      qc.h = true;
      localqc.i = false;
      if (ho.a().aV())
      {
        ho localho = ho.a();
        Long.valueOf(System.currentTimeMillis());
        localho.m();
        ho.a().aU();
      }
      localqc.j = new Thread(new qd(localqc));
      localqc.j.start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aob
 * JD-Core Version:    0.6.2
 */