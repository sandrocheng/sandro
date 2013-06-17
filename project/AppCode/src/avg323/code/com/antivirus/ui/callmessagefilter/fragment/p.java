package com.antivirus.ui.callmessagefilter.fragment;

import android.os.AsyncTask;
import android.support.v4.app.i;
import com.antivirus.callmessagefilter.a;
import com.antivirus.core.b.a.b;
import java.util.Map;

class p extends AsyncTask
{
  p(ContactsFragment paramContactsFragment, i parami)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    Map localMap = a.a(b.a(this.a).b());
    ContactsFragment.a(this.b, false, localMap);
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.p
 * JD-Core Version:    0.6.2
 */