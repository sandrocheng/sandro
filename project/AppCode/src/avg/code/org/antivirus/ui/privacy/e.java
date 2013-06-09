package org.antivirus.ui.privacy;

final class e
  implements Runnable
{
  e(d paramd)
  {
  }

  public final void run()
  {
    if (PrivacyActivity.h(this.a.b) != null)
      PrivacyActivity.h(this.a.b).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.privacy.e
 * JD-Core Version:    0.6.2
 */