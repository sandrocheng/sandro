import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class bse
  implements View.OnClickListener
{
  bse(bsb parambsb, PreferenceAdapterModel paramPreferenceAdapterModel, boolean paramBoolean, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool1 = true;
    PreferenceAdapterModel localPreferenceAdapterModel = this.a;
    boolean bool2;
    ho localho;
    if (!this.b)
    {
      bool2 = bool1;
      localPreferenceAdapterModel.setChecked(bool2);
      localho = bsb.c(this.d);
      if (this.b)
        break label76;
    }
    while (true)
    {
      localho.p(bool1);
      bsb.b(this.d);
      this.d.getAdapter().notifyDataSetChanged();
      this.c.dismiss();
      return;
      bool2 = false;
      break;
      label76: bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bse
 * JD-Core Version:    0.6.2
 */