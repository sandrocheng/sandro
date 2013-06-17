package com.antivirus.ui.urlFilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import com.antivirus.AVService;

class b
  implements DialogInterface.OnClickListener
{
  b(UrlWarningActivity paramUrlWarningActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("__SAD", this.a.getIntent().getExtras().getString("md5sum"));
    AVService.a(this.a, 3000, 2, localBundle);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.urlFilter.b
 * JD-Core Version:    0.6.2
 */