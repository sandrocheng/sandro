import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.service.IRetryListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class em
  implements View.OnClickListener
{
  public em(Dialog paramDialog, boolean paramBoolean1, Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean2, IRetryListener paramIRetryListener)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.resetDialog();
    int i;
    if (!this.b)
    {
      i = 1;
      if (i == 0)
        break label62;
      a.a(this.a, this.c, true, this.d, this.e, 2131429924, 2131427379, this.f, this.g, this.h);
    }
    while (true)
    {
      return;
      i = 0;
      break;
      label62: a.a(this.a, this.c, false, this.d, this.e, 2131429924, 2131429929, this.f, this.g, this.h);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     em
 * JD-Core Version:    0.6.2
 */