import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

public final class aer
  implements View.OnClickListener
{
  public aer(SyncQQAccountLoginActivity.a parama, EditText paramEditText, Dialog paramDialog)
  {
  }

  public final void onClick(View paramView)
  {
    SyncQQAccountLoginActivity.a.a(this.c, this.a.getText().toString());
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aer
 * JD-Core Version:    0.6.2
 */