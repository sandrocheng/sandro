import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class ta
  implements View.OnClickListener
{
  ta(sz paramsz)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.a.h != null)
    {
      this.a.a.h.dismiss();
      this.a.a.h = null;
    }
    this.a.a.h = new Dialog(this.a.a.a);
    Dialog localDialog;
    if (this.a.a.i)
    {
      this.a.a.h.setTitle(2131427840);
      this.a.a.h.setIconVisibility(8);
      this.a.a.h.setMessage(2131427841);
      localDialog = this.a.a.h;
      if (!this.a.a.i)
        break label249;
    }
    label249: for (int i = 2131427842; ; i = 2131427848)
    {
      localDialog.setPositiveButton(i, new tb(this), 1);
      this.a.a.h.setNeutralButton(2131427379, new tc(this), 2);
      this.a.a.h.show();
      return;
      this.a.a.h.setTitle(2131427846);
      this.a.a.h.setIconVisibility(8);
      this.a.a.h.setMessage(2131427847);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ta
 * JD-Core Version:    0.6.2
 */