import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class bnx
  implements View.OnClickListener
{
  bnx(bnt parambnt, kw paramkw, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (fy.b(this.c.getActivity(), this.a))
    {
      bnt.a(this.c).remove(this.a);
      List localList = this.c.a().c();
      localList.remove(Integer.valueOf(this.c.a().b(this.a)));
      this.c.a().a(localList);
      bnt.e(this.c).sendEmptyMessage(-2);
    }
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bnx
 * JD-Core Version:    0.6.2
 */