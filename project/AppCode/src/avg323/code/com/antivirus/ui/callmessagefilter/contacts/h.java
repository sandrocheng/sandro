package com.antivirus.ui.callmessagefilter.contacts;

import android.support.v4.app.o;
import android.text.Editable;
import android.text.TextWatcher;
import com.antivirus.ui.callmessagefilter.fragment.ContactsFragment;

class h
  implements TextWatcher
{
  h(ContactsViewActivity paramContactsViewActivity)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    String str = paramCharSequence.toString();
    ((ContactsFragment)this.a.f().a(2131230866)).c(str);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.h
 * JD-Core Version:    0.6.2
 */