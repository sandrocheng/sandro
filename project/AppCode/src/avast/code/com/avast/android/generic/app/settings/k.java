package com.avast.android.generic.app.settings;

class k
  implements Runnable
{
  k(SetRecoveryNumberDialog paramSetRecoveryNumberDialog)
  {
  }

  public void run()
  {
    if (this.a.isAdded())
    {
      this.a.dismiss();
      SetRecoveryNumberDialog.a(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.k
 * JD-Core Version:    0.6.2
 */