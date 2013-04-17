import com.tencent.qqpimsecure.uilib.view.SpinnerView;
import java.util.List;

final class bat
  implements Runnable
{
  bat(bam parambam)
  {
  }

  public final void run()
  {
    int i;
    try
    {
      i = bam.g(this.a).a((String)bam.o(this.a).get(bam.i(this.a).getSelectedIndex()), (String)bam.m(this.a).get(bam.h(this.a).getSelectedIndex()), (String)bam.f(this.a).get(bam.a(this.a).getSelectedIndex()), (String)bam.d(this.a).get(bam.c(this.a).getSelectedIndex()));
      if (i == 0)
        if (wr.a(bam.p(this.a)).e())
          bam.g(this.a).a(2, false);
        else
          ff.a("kfc", "report, no success record, do nothing");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    ff.a("NetworkFlowAutoAdjustConfigView", "saveConfigs error xxxxxxxx, errCode = " + i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bat
 * JD-Core Version:    0.6.2
 */