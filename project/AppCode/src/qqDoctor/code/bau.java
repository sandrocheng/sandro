import com.tencent.qqpimsecure.uilib.view.SpinnerView;
import java.util.List;

final class bau
  implements Runnable
{
  bau(bam parambam)
  {
  }

  public final void run()
  {
    int i = bam.g(this.a).a((String)bam.o(this.a).get(bam.i(this.a).getSelectedIndex()), (String)bam.m(this.a).get(bam.h(this.a).getSelectedIndex()), (String)bam.f(this.a).get(bam.a(this.a).getSelectedIndex()), (String)bam.d(this.a).get(bam.c(this.a).getSelectedIndex()));
    if (i == 0);
    while (true)
    {
      try
      {
        bam.g(this.a).a(0, true);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      ff.a("NetworkFlowAutoAdjustConfigView", "saveConfigs error xxxxxxxx, errCode = " + i);
      ha.a(bam.q(this.a), 2131427702);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bau
 * JD-Core Version:    0.6.2
 */