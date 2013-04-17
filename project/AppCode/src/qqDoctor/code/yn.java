import com.tencent.qqpimsecure.service.QQPimApplication;

public final class yn
  implements Runnable
{
  public yn(QQPimApplication paramQQPimApplication)
  {
  }

  public final void run()
  {
    new yr().a(QQPimApplication.b(), (byte)20, true);
    new yo(this).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yn
 * JD-Core Version:    0.6.2
 */