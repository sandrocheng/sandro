package com.keniu.security.commumgr;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.TextView;
import com.jxphone.mosecurity.c.k;

final class j
  implements TextWatcher
{
  j(NumLocateQueryActivity paramNumLocateQueryActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str = NumLocateQueryActivity.a(this.a).getText().toString();
    switch (str.length())
    {
    default:
      NumLocateQueryActivity.b(this.a, new k(str).a(this.a, NumLocateQueryActivity.d(this.a)));
      NumLocateQueryActivity.e(this.a).setText(NumLocateQueryActivity.c(this.a));
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      NumLocateQueryActivity.e(this.a).setText(NumLocateQueryActivity.d(this.a));
      continue;
      NumLocateQueryActivity.e(this.a).setText(NumLocateQueryActivity.d(this.a));
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.j
 * JD-Core Version:    0.6.2
 */