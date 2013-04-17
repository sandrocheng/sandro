import android.os.Handler;

final class bdp
  implements Runnable
{
  bdp(bdk parambdk)
  {
  }

  public final void run()
  {
    if (!bdk.c(this.a).a())
      bdk.c(this.a).b();
    bdk.d(this.a).sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdp
 * JD-Core Version:    0.6.2
 */