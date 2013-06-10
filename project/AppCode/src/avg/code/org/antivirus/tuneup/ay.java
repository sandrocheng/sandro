package org.antivirus.tuneup;

import android.content.pm.PackageManager;

final class ay
  implements Runnable
{
  ay(aw paramaw, PackageManager paramPackageManager)
  {
  }

  public final void run()
  {
    StorageActivity.a(this.a, StorageActivity.a(this.b.a));
    this.b.a.runOnUiThread(new az(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.ay
 * JD-Core Version:    0.6.2
 */