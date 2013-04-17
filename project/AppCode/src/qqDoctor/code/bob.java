import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import java.util.List;

final class bob
  implements View.OnClickListener
{
  bob(bnt parambnt, kw paramkw, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (fy.a(this.c.getActivity(), this.a.getApkPath(), this.a.getPackageName()))
    {
      fy.a(this.a.getApkPath());
      bnt.a(this.c).remove(this.a);
      this.c.a().a(Integer.valueOf(this.c.a().b(this.a)));
      bnt.g(this.c).sendEmptyMessage(-2);
      ha.b(bnt.h(this.c), 2131427776);
    }
    while (true)
    {
      this.b.dismiss();
      return;
      ha.b(bnt.i(this.c), 2131427777);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bob
 * JD-Core Version:    0.6.2
 */