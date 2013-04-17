import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

final class bes
  implements TextWatcher
{
  bes(ber paramber)
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
    if (paramCharSequence.length() >= 16)
    {
      ber.a(this.a).setText(paramCharSequence.subSequence(0, 15));
      ber.a(this.a).setSelection(15);
      ha.a(ber.b(this.a), 2131429330);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bes
 * JD-Core Version:    0.6.2
 */