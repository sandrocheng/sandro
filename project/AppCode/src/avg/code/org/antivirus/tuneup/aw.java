package org.antivirus.tuneup;

import android.content.pm.PackageManager;

final class aw
  implements Runnable
{
  aw(StorageActivity paramStorageActivity)
  {
  }

  public final void run()
  {
    PackageManager localPackageManager = this.a.getPackageManager();
    if (StorageActivity.a(this.a) == null)
    {
      StorageActivity.a(this.a, StorageActivity.a(this.a, localPackageManager));
      StorageActivity.b(this.a);
      StorageActivity.c(this.a);
    }
    this.a.runOnUiThread(new ax(this));
    new Thread(new ay(this, localPackageManager)).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.aw
 * JD-Core Version:    0.6.2
 */