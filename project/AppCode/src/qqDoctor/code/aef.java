import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

public final class aef
  implements TextWatcher
{
  public aef(SyncMobileAccountLoginActivity.a parama)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if ((paramEditable.length() > 0) && (!SyncMobileAccountLoginActivity.a.k(this.a).getText().toString().equals("")))
    {
      SyncMobileAccountLoginActivity.a.l(this.a).setButtonByType(1);
      SyncMobileAccountLoginActivity.a.l(this.a).setClickable(true);
    }
    while (true)
    {
      return;
      SyncMobileAccountLoginActivity.a.l(this.a).setButtonByType(2);
      SyncMobileAccountLoginActivity.a.l(this.a).setClickable(false);
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aef
 * JD-Core Version:    0.6.2
 */