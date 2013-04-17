import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class bqc
  implements Runnable
{
  bqc(bqb parambqb)
  {
  }

  public final void run()
  {
    String str = bqb.a(this.a);
    this.a.getActivity().runOnUiThread(new bqd(this, str));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqc
 * JD-Core Version:    0.6.2
 */