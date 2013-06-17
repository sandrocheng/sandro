package com.antivirus.ui.urlFilter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.antivirus.AVService;

class a
  implements DialogInterface.OnClickListener
{
  a(UrlWarningActivity paramUrlWarningActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("__SAD", "/mobile/urlfiltering.jsp");
    AVService.a(this.a, 7000, 7003, localBundle);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.urlFilter.a
 * JD-Core Version:    0.6.2
 */