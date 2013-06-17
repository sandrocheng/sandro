package com.antivirus.ui.versionUpdate;

import android.os.Bundle;
import android.os.Messenger;
import com.antivirus.AVService;

class g
  implements Runnable
{
  g(f paramf, VersionUpdateProgressDialog paramVersionUpdateProgressDialog)
  {
  }

  public void run()
  {
    if (VersionUpdateProgressDialog.e(this.a))
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("__SAH", new Messenger(this.b));
      AVService.a(this.a, 6000, 2, localBundle);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.versionUpdate.g
 * JD-Core Version:    0.6.2
 */