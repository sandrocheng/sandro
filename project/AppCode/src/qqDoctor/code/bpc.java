import android.os.Handler;

final class bpc extends Thread
{
  bpc(bot parambot, String paramString)
  {
    super(paramString);
  }

  public final void run()
  {
    if (di.a())
      bot.x(this.a).sendEmptyMessage(2002);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bpc
 * JD-Core Version:    0.6.2
 */