import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.DialogPreferenceView;

final class anr
  implements View.OnClickListener
{
  anr(anq paramanq, EditText paramEditText, View paramView, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str = this.a.getText().toString().trim();
    if (str.length() > 0)
    {
      anq.a(this.d).a(str);
      ((DialogPreferenceView)this.b).doClickEvent(anq.b(this.d).getString(2131427860), str);
      anq.c(this.d).notifyDataSetChanged();
      this.c.dismiss();
    }
    while (true)
    {
      return;
      ha.b(anq.d(this.d), anq.e(this.d).getResources().getString(2131428437));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anr
 * JD-Core Version:    0.6.2
 */