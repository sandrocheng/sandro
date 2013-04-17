import android.os.Handler;

final class bdc
  implements Runnable
{
  bdc(bcz parambcz)
  {
  }

  public final void run()
  {
    this.a.loadDataList();
    bcz.f(this.a).sendEmptyMessage(1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bdc
 * JD-Core Version:    0.6.2
 */