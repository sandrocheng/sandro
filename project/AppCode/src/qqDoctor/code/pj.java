import com.tencent.qqpimsecure.uilib.service.IRetryListener;

final class pj
  implements IRetryListener
{
  pj(ph paramph)
  {
  }

  public final void onCancel()
  {
    this.a.a.d();
  }

  public final void onRetry()
  {
    new Thread(new pk(this)).start();
    wr.a(this.a.a.b).a(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pj
 * JD-Core Version:    0.6.2
 */