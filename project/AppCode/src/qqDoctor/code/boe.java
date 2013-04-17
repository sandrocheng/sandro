import android.os.Build;
import android.os.Handler;

final class boe extends Thread
{
  boe(bod parambod)
  {
  }

  public final void run()
  {
    if (!Build.MODEL.equals("HUAWEI U9508"))
      bod.a(this.a, fy.a());
    this.a.a().b(bod.a(this.a));
    bod.c(this.a).sendEmptyMessage(bod.b(this.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     boe
 * JD-Core Version:    0.6.2
 */