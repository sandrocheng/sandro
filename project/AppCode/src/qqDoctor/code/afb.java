import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.SyncQQPimPasswordSettingsActivity.a;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;

public final class afb
  implements View.OnClickListener
{
  public afb(SyncQQPimPasswordSettingsActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = SyncQQPimPasswordSettingsActivity.a.a(this.a).getText().toString();
    String str2 = SyncQQPimPasswordSettingsActivity.a.b(this.a).getText().toString();
    if ((str1 == null) || (str1.length() < 6) || (str1.length() > 16))
      ha.b(SyncQQPimPasswordSettingsActivity.a.c(this.a), 2131427615);
    while (true)
    {
      return;
      if (-1 != str1.indexOf(" "))
      {
        ha.b(SyncQQPimPasswordSettingsActivity.a.d(this.a), 2131427616);
      }
      else if (!str1.equals(str2))
      {
        ha.b(SyncQQPimPasswordSettingsActivity.a.e(this.a), 2131427617);
      }
      else
      {
        ProgressDialog localProgressDialog = new ProgressDialog(SyncQQPimPasswordSettingsActivity.a.f(this.a), 1);
        localProgressDialog.addProgressDialog();
        localProgressDialog.setTitle(2131427567);
        localProgressDialog.setMessage(2131427578);
        localProgressDialog.show();
        new Thread(new afc(this, str1, localProgressDialog), "thread_set_pimpwd").start();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afb
 * JD-Core Version:    0.6.2
 */