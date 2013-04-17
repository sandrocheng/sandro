import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.ArrayList;
import java.util.List;

final class bnz
  implements View.OnClickListener
{
  bnz(bnt parambnt, ArrayList paramArrayList, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    int i = this.a.size();
    for (int j = 0; j < i; j++)
    {
      kw localkw = (kw)this.a.get(j);
      if (fy.b(this.c.getActivity(), localkw))
      {
        bnt.a(this.c).remove(localkw);
        List localList = this.c.a().c();
        localList.remove(Integer.valueOf(this.c.a().b(localkw)));
        this.c.a().a(localList);
        bnt.f(this.c).sendEmptyMessage(-2);
      }
    }
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnz
 * JD-Core Version:    0.6.2
 */