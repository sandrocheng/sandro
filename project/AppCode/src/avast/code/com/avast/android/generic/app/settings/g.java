package com.avast.android.generic.app.settings;

class g
  implements Runnable
{
  g(f paramf)
  {
  }

  public void run()
  {
    if (this.a.a.isAdded())
    {
      this.a.a.dismiss();
      SetRecoveryNumberDialog.a(this.a.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.settings.g
 * JD-Core Version:    0.6.2
 */