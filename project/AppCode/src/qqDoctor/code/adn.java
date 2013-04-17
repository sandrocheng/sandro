import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

public final class adn
  implements TextWatcher
{
  private EditText a = null;
  private String b = null;
  private ButtonView c = null;

  public adn(EditText paramEditText)
  {
    this.a = paramEditText;
  }

  public adn(EditText paramEditText, ButtonView paramButtonView)
  {
    this.a = paramEditText;
    this.c = paramButtonView;
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.c != null)
    {
      ButtonView localButtonView = this.c;
      if (paramEditable.toString().trim().length() > 0)
      {
        bool2 = bool1;
        localButtonView.setEnabled(bool2);
      }
    }
    else
    {
      String str = paramEditable.toString();
      if ((str.contains("-")) || (str.contains("/")) || (str.contains("#")) || (str.contains(",")) || (str.contains(";")) || (str.contains("**")) || (str.contains(".")) || (str.contains("(")) || (str.contains(")")) || (str.contains("N")) || (str.contains(" ")))
        break label225;
      label142: if (!bool1)
      {
        this.a.removeTextChangedListener(this);
        this.a.setText(this.b);
        if (paramEditable.toString().length() != 0)
          break label230;
        ha.a(this.a.getContext(), QQPimApplication.a().getResources().getString(2131428456));
      }
    }
    while (true)
    {
      this.a.setSelection(this.b.length());
      this.a.addTextChangedListener(this);
      return;
      bool2 = false;
      break;
      label225: bool1 = false;
      break label142;
      label230: ha.a(this.a.getContext(), QQPimApplication.a().getResources().getString(2131428457));
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = paramCharSequence.toString();
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adn
 * JD-Core Version:    0.6.2
 */