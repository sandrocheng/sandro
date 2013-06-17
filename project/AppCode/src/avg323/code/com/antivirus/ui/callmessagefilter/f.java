package com.antivirus.ui.callmessagefilter;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.antivirus.ui.callmessagefilter.contacts.ContactsViewActivity;
import com.avg.toolkit.c.a;

class f
  implements View.OnClickListener
{
  f(CallMessageFilterActivity paramCallMessageFilterActivity)
  {
  }

  public void onClick(View paramView)
  {
    a.a(this.a, "call_message_blocker", "call_message_blocker_contact_view", null, 0);
    Intent localIntent = new Intent(this.a, ContactsViewActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.f
 * JD-Core Version:    0.6.2
 */