import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.View;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;

final class apl
  implements DialogInterface.OnCancelListener
{
  apl(apf paramapf, View paramView, Dialog paramDialog)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    apf.o(this.c).setChecked(true);
    ((CheckBoxPreferenceView)this.a).doClickEventNoAnimation(-1, 2131427352);
    this.c.getAdapter().notifyDataSetChanged();
    this.b.dismiss();
    apf.a(this.c).S(true);
    Context localContext = apf.q(this.c);
    if (ok.a == null)
      ok.a = new ok(localContext);
    ok.a.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     apl
 * JD-Core Version:    0.6.2
 */