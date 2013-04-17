import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class gn
  implements View.OnClickListener
{
  public gn(ge paramge, boolean paramBoolean, kw paramkw, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      if (this.a)
      {
        ge localge = this.d;
        kw localkw2 = this.b;
        String str1 = localge.a.getString(2131428335);
        String str2 = localge.a.getString(2131428339);
        Dialog localDialog = new Dialog(localge.a);
        localDialog.setTitle(str1);
        localDialog.setMessage(str2);
        localDialog.setPositiveButton(2131427397, new gp(localge, localkw2, localDialog), 2);
        localDialog.setNegativeButton(2131427379, new gq(localDialog), 1);
        localDialog.show();
      }
      while (true)
      {
        this.c.dismiss();
        return;
        if (this.d.b != null)
        {
          ge.a locala = this.d.b;
          kw localkw1 = this.b;
          locala.a.b(localkw1);
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
        ha.b(this.d.a, 2131427778);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gn
 * JD-Core Version:    0.6.2
 */