import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.List;

final class alh
  implements View.OnClickListener
{
  alh(alg paramalg)
  {
  }

  public final void onClick(View paramView)
  {
    kw localkw = (kw)paramView.getTag();
    int i = alg.a(localkw);
    if (i == -1)
      return;
    if (((CheckBoxView)paramView).getChecked())
      if (!alg.a(this.a).contains(Integer.valueOf(i)))
        alg.a(this.a).add(Integer.valueOf(i));
    while (true)
    {
      this.a.a();
      break;
      alg.a(this.a).remove(new Integer(i));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     alh
 * JD-Core Version:    0.6.2
 */