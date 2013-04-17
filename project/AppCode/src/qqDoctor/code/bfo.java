import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bfo
  implements View.OnClickListener
{
  bfo(bfg parambfg, PreferenceAdapterModel paramPreferenceAdapterModel, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setChecked(false);
    bfg.g(this.c).E(false);
    this.c.getAdapter().notifyDataSetChanged();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfo
 * JD-Core Version:    0.6.2
 */