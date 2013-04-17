import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;

final class aph
  implements View.OnClickListener
{
  aph(apf paramapf, View paramView, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    nd.a().a(26310);
    apf.m(this.c).setChecked(true);
    ((CheckBoxPreferenceView)this.a).doClickEventNoAnimation(-1, 2131427352);
    this.c.getAdapter().notifyDataSetChanged();
    this.b.dismiss();
    apf.a(this.c).P(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aph
 * JD-Core Version:    0.6.2
 */