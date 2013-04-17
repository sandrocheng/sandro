import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;

final class bfj
  implements View.OnClickListener
{
  bfj(bfg parambfg, EditText paramEditText, TextView paramTextView, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.a.getText().toString().trim();
    if ((str1 == null) || ("".equals(str1)))
    {
      String str2 = bfg.a(this.d).getHelperNumber();
      if ((str2 == null) || ("".equals(str2)))
      {
        this.b.setVisibility(0);
        this.b.setTextColor(bfg.f(this.d).getResources().getColor(2131296392));
        this.b.setText(2131429472);
        return;
      }
    }
    for (int i = 1; ; i = 0)
    {
      if (i == 0)
      {
        str1 = str1.replace("+86", "").replace("-", "");
        if (!ft.b(str1))
        {
          this.b.setVisibility(0);
          this.b.setTextColor(bfg.f(this.d).getResources().getColor(2131296392));
          this.b.setText(2131429323);
          break;
        }
      }
      this.c.dismiss();
      bfg.a(this.d, str1);
      this.d.getAdapter().notifyDataSetChanged();
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfj
 * JD-Core Version:    0.6.2
 */