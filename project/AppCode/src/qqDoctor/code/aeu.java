import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity.a;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

public final class aeu
  implements TextWatcher
{
  public aeu(SyncQQAccountLoginActivity.a parama)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if ((paramEditable.length() > 0) && (!SyncQQAccountLoginActivity.a.a(this.a).getText().toString().equals("")))
    {
      SyncQQAccountLoginActivity.a.l(this.a).setButtonByType(1);
      SyncQQAccountLoginActivity.a.l(this.a).setClickable(true);
    }
    while (true)
    {
      return;
      SyncQQAccountLoginActivity.a.l(this.a).setButtonByType(2);
      SyncQQAccountLoginActivity.a.l(this.a).setClickable(false);
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
 * Qualified Name:     aeu
 * JD-Core Version:    0.6.2
 */