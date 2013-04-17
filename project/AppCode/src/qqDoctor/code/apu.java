import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;

final class apu
  implements View.OnClickListener
{
  apu(apf paramapf, Dialog paramDialog, View paramView)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    apf.d(this.c).setChecked(true);
    String str2;
    if (apf.g(this.c))
    {
      str2 = apf.h(this.c).getString(2131427361);
      ((CheckBoxPreferenceView)this.b).doClickEventNoAnimation(-1, 2131427361);
    }
    String str1;
    for (Object localObject = str2; ; localObject = str1)
    {
      apf.d(this.c).setSummary((String)localObject);
      this.c.getAdapter().notifyDataSetChanged();
      return;
      str1 = apf.i(this.c).getString(2131427363);
      ((CheckBoxPreferenceView)this.b).doClickEventNoAnimation(-1, 2131427363);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apu
 * JD-Core Version:    0.6.2
 */