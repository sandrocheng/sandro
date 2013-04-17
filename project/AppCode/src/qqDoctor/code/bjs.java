import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bjs
  implements View.OnClickListener
{
  bjs(bjo parambjo, CheckBox paramCheckBox1, CheckBox paramCheckBox2, CheckBox paramCheckBox3, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    int i;
    if (this.a.isChecked())
      i = 0;
    while (true)
    {
      bjo.a(this.e).r(i);
      bjo.a(this.e).w(this.c.isChecked());
      this.d.dismiss();
      bjo.n(this.e).setSummary(bjo.m(this.e).getResources().getStringArray(2131165226)[i]);
      bjo.o(this.e).setEnabled(this.c.isChecked());
      this.e.getAdapter().notifyDataSetChanged();
      return;
      if (this.b.isChecked())
        i = 1;
      else
        i = 2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bjs
 * JD-Core Version:    0.6.2
 */