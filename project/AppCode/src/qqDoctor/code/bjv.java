import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bjv
  implements View.OnClickListener
{
  bjv(bjo parambjo, CheckBox paramCheckBox1, CheckBox paramCheckBox2, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool1 = this.a.isChecked();
    boolean bool2 = this.b.isChecked();
    int i;
    if ((bool1) && (bool2))
      i = 3;
    while (true)
    {
      bjo.a(this.d).s(i);
      this.c.dismiss();
      bjo.q(this.d).setSummary(bjo.p(this.d).getResources().getStringArray(2131165227)[i]);
      if ((i == 2) || (i == 3))
        bjo.o(this.d).setEnabled(true);
      while (true)
      {
        this.d.getAdapter().notifyDataSetChanged();
        return;
        if ((!bool1) && (bool2))
        {
          i = 2;
          break;
        }
        if ((bool1) && (!bool2))
        {
          i = 1;
          break;
        }
        if ((bool1) || (bool2))
          break label191;
        i = 0;
        break;
        if (bjo.a(this.d).bd())
          bjo.o(this.d).setEnabled(true);
        else
          bjo.o(this.d).setEnabled(false);
      }
      label191: i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjv
 * JD-Core Version:    0.6.2
 */