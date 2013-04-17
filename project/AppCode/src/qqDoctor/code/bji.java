import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.tencent.qqpimsecure.view.securespace.SecureSmsDialogueView;

public final class bji
  implements TextWatcher
{
  public bji(SecureSmsDialogueView paramSecureSmsDialogueView)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramCharSequence.toString().length() > 0)
      SecureSmsDialogueView.j(this.a).setText(String.valueOf(paramCharSequence.toString().length()));
    while (true)
    {
      pc.b().f();
      return;
      SecureSmsDialogueView.j(this.a).setText("");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bji
 * JD-Core Version:    0.6.2
 */