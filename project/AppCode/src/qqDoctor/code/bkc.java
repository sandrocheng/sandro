import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bkc
  implements View.OnClickListener
{
  bkc(bjo parambjo, CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool1 = this.a.isChecked();
    boolean bool2 = this.b.isChecked();
    boolean bool3 = this.c.isChecked();
    int i;
    if ((bool1) && (bool2) && (bool3))
      i = 7;
    while (true)
    {
      bjo.a(this.e).c(i);
      this.d.dismiss();
      bjo.c(this.e).setSummary(bjo.b(this.e).getResources().getStringArray(2131165211)[i]);
      PreferenceAdapterModel localPreferenceAdapterModel = bjo.d(this.e);
      boolean bool4;
      if ((i != 1) && (i != 3) && (i != 5))
      {
        bool4 = false;
        if (i != 7);
      }
      else
      {
        bool4 = true;
      }
      localPreferenceAdapterModel.setEnabled(bool4);
      this.e.getAdapter().notifyDataSetChanged();
      return;
      if ((!bool1) && (bool2) && (bool3))
        i = 5;
      else if ((bool1) && (!bool2) && (bool3))
        i = 3;
      else if ((bool1) && (bool2) && (!bool3))
        i = 6;
      else if ((!bool1) && (!bool2) && (bool3))
        i = 1;
      else if ((bool1) && (!bool2) && (!bool3))
        i = 2;
      else if ((!bool1) && (bool2) && (!bool3))
        i = 4;
      else if ((!bool1) && (!bool2) && (!bool3))
        i = 0;
      else
        i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bkc
 * JD-Core Version:    0.6.2
 */