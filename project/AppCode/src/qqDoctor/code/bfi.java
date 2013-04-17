import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

final class bfi
  implements TextWatcher
{
  bfi(TextView paramTextView)
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
    this.a.setVisibility(8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfi
 * JD-Core Version:    0.6.2
 */