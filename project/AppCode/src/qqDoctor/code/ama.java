import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

final class ama
  implements View.OnClickListener
{
  ama(alz paramalz)
  {
  }

  public final void onClick(View paramView)
  {
    alz.a((kw)paramView.getTag(), ((CheckBoxView)paramView).getChecked());
    paramView.getTag();
    ((CheckBoxView)paramView).getChecked();
    kw.w();
    this.a.a(paramView);
    if (!((CheckBoxView)paramView).getChecked())
    {
      Context localContext = alz.a(this.a);
      String str = alz.b(this.a).getString(2131429748);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = ((kw)paramView.getTag()).getAppName();
      ha.c(localContext, String.format(str, arrayOfObject));
      alz.c(this.a).a();
      if (!((kw)paramView.getTag()).x())
        nd.a().a(26171);
    }
    while (true)
    {
      return;
      if (!((kw)paramView.getTag()).x())
        nd.a().a(26172);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ama
 * JD-Core Version:    0.6.2
 */