package com.jxphone.mosecurity.activity.friend;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageButton;
import com.jxphone.mosecurity.c.l;

final class bl
  implements TextWatcher
{
  bl(PeopleSmsLogActivity paramPeopleSmsLogActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    PeopleSmsLogActivity.g(this.a).b(this.a.l.getText().toString());
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    ImageButton localImageButton = PeopleSmsLogActivity.f(this.a);
    if (paramCharSequence.length() != 0);
    for (boolean bool = true; ; bool = false)
    {
      localImageButton.setEnabled(bool);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bl
 * JD-Core Version:    0.6.2
 */