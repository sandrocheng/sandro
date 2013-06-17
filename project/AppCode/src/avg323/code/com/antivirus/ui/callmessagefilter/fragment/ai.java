package com.antivirus.ui.callmessagefilter.fragment;

import android.database.ContentObserver;
import android.os.AsyncTask;
import android.os.Handler;

class ai extends ContentObserver
{
  ai(v paramv)
  {
    super(new Handler());
  }

  public void onChange(boolean paramBoolean)
  {
    new aj(this).execute(new Void[0]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.ai
 * JD-Core Version:    0.6.2
 */