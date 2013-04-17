import com.tencent.qqpimsecure.uilib.view.SpinnerView;
import com.tencent.qqpimsecure.uilib.view.SpinnerView.OnSelectChangeListener;
import java.util.List;

final class bas
  implements SpinnerView.OnSelectChangeListener
{
  bas(bam parambam)
  {
  }

  public final void onSelectChange(int paramInt)
  {
    bam.m(this.a).clear();
    bam.n(this.a).clear();
    String str = (String)bam.o(this.a).get(paramInt);
    bam.g(this.a);
    wr.a(bam.g(this.a).a(str), bam.m(this.a), bam.n(this.a));
    bam.k(this.a);
    if (bam.n(this.a).size() > 1)
    {
      bam.a(this.a, false);
      bam.h(this.a).init(2131429135, bam.n(this.a), -1);
    }
    while (true)
    {
      if (bam.m(this.a).size() > 1)
        bam.h(this.a).clickView(bam.h(this.a));
      return;
      bam.a(this.a, true);
      bam.h(this.a).init(2131429135, bam.n(this.a), 0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bas
 * JD-Core Version:    0.6.2
 */