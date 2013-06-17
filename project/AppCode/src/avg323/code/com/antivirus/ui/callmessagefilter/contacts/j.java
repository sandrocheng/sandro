package com.antivirus.ui.callmessagefilter.contacts;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.antivirus.ui.callmessagefilter.fragment.ContactsFragment;

class j
  implements DialogInterface.OnClickListener
{
  j(ContactsViewActivity paramContactsViewActivity, ContactsFragment paramContactsFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ContactsViewActivity.c(this.b).removeTextChangedListener(ContactsViewActivity.b(this.b));
    ContactsViewActivity.c(this.b).setText("");
    ContactsViewActivity.c(this.b).addTextChangedListener(ContactsViewActivity.b(this.b));
    this.a.b(paramInt);
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.contacts.j
 * JD-Core Version:    0.6.2
 */