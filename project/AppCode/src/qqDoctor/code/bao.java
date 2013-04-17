import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.SpinnerView;
import com.tencent.qqpimsecure.uilib.view.SpinnerView.OnSelectChangeListener;
import java.util.List;

final class bao
  implements SpinnerView.OnSelectChangeListener
{
  bao(bam parambam, View.OnClickListener paramOnClickListener)
  {
  }

  public final void onSelectChange(int paramInt)
  {
    bam.d(this.b).clear();
    bam.e(this.b).clear();
    String str1 = (String)bam.f(this.b).get(paramInt);
    bam.g(this.b);
    wr.a(bam.g(this.b).b(str1), bam.d(this.b), bam.e(this.b));
    String str2;
    if ("".equals(""))
      if (((String)bam.f(this.b).get(paramInt)).equals("CMCC"))
        str2 = "20000";
    while (true)
    {
      int i = 0;
      label118: if (i < bam.d(this.b).size())
        if (!str2.equals(bam.d(this.b).get(i)));
      while (true)
      {
        bam.c(this.b).init(2131429137, bam.e(this.b), i);
        bam.c(this.b).setOnClickListener(this.a);
        return;
        if (((String)bam.f(this.b).get(paramInt)).equals("UNICOM"))
        {
          str2 = "70000";
          break;
        }
        if (!((String)bam.f(this.b).get(paramInt)).equals("TELECOM"))
          break label267;
        str2 = "60000";
        break;
        i++;
        break label118;
        i = -1;
      }
      label267: str2 = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bao
 * JD-Core Version:    0.6.2
 */