import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

final class ail
  implements View.OnClickListener
{
  ail(aik paramaik)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBoxView localCheckBoxView = (CheckBoxView)paramView;
    mb localmb = (mb)paramView.getTag();
    nd localnd = nd.a();
    if ((localmb != null) && (localCheckBoxView.getChecked() != true))
    {
      localnd.a(26293);
      localmb.c = 2;
      aik.a(this.a).b(localmb);
      aik.a(this.a);
      ja.c(localmb);
      if (localmb.c != 2)
        break label125;
    }
    label125: for (int i = 1; ; i = 0)
    {
      if (i != 0)
        aik.b(this.a);
      aik.c(this.a).getHandler().sendEmptyMessageDelayed(-1, 500L);
      return;
      localnd.a(26292);
      localmb.c = 1;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ail
 * JD-Core Version:    0.6.2
 */