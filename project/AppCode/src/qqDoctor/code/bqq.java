import com.tencent.qqpimsecure.uilib.view.ProgressBarView;

final class bqq
  implements Runnable
{
  bqq(bqb parambqb)
  {
  }

  public final void run()
  {
    bqb.i(this.a).startAnimation();
    bqb.a(this.a, true);
    bqb.C(this.a);
    if (bqb.v(this.a))
      bqb.a(this.a, false);
    while (true)
    {
      return;
      bqb.D(this.a);
      if (bqb.v(this.a))
      {
        bqb.a(this.a, false);
      }
      else
      {
        bqb.E(this.a);
        this.a.a = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqq
 * JD-Core Version:    0.6.2
 */