package com.antivirus.ui.callmessagefilter.fragment;

import android.database.ContentObserver;
import android.os.AsyncTask;
import android.os.Handler;

class k extends ContentObserver
{
  public k(g paramg)
  {
    super(new Handler());
  }

  public void onChange(boolean paramBoolean)
  {
    new l(this).execute(new Void[0]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.fragment.k
 * JD-Core Version:    0.6.2
 */