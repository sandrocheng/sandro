package org.antivirus.ui.scan;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import org.antivirus.AVService;

public class FileRemover extends Activity
{
  private org.antivirus.core.b.a a;
  private boolean b;
  private ServiceConnection c = new a(this);

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bindService(new Intent(this, AVService.class), this.c, 1);
  }

  protected void onStop()
  {
    if (this.b)
    {
      unbindService(this.c);
      this.b = false;
    }
    super.onStop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.FileRemover
 * JD-Core Version:    0.6.2
 */