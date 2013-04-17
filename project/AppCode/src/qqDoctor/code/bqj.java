import com.tencent.tmsecure.utils.PhoneInfoUtil.CPUScaleListener;

final class bqj
  implements PhoneInfoUtil.CPUScaleListener
{
  bqj(bqb parambqb)
  {
  }

  public final void onFinish(float paramFloat)
  {
    bqb.a(this.a, paramFloat);
    if (bqb.c(this.a) != null)
      bqb.c(this.a).sendEmptyMessage(2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqj
 * JD-Core Version:    0.6.2
 */