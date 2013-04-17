import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class blc
  implements View.OnClickListener
{
  blc(bkn parambkn, lb paramlb, int paramInt, CheckBoxView paramCheckBoxView, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    bkn.a(this.e, this.a, this.b);
    jo localjo = jo.a();
    if (!this.c.getChecked());
    for (boolean bool = true; ; bool = false)
    {
      localjo.b.putBoolean("isshowreport", bool).commit();
      this.d.dismiss();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blc
 * JD-Core Version:    0.6.2
 */