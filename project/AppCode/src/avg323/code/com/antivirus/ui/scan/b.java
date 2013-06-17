package com.antivirus.ui.scan;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.text.TextUtils;
import com.avg.toolkit.f.a;

class b
  implements DialogInterface.OnClickListener
{
  b(FileRemover paramFileRemover, String paramString1, String paramString2)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.antivirus.core.b localb = new com.antivirus.core.b(this.c.getApplicationContext());
    localb.e(this.a);
    if (!TextUtils.isEmpty(this.b))
      localb.c(this.b);
    try
    {
      Intent localIntent = (Intent)this.c.getIntent().getParcelableExtra("continue");
      if (localIntent != null)
        this.c.startActivity(localIntent);
      this.c.finish();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.b
 * JD-Core Version:    0.6.2
 */