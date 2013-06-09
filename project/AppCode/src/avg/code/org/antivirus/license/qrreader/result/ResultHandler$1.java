package org.antivirus.license.qrreader.result;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

class ResultHandler$1
  implements DialogInterface.OnClickListener
{
  ResultHandler$1(ResultHandler paramResultHandler)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.this$0.launchIntent(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan")));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.result.ResultHandler.1
 * JD-Core Version:    0.6.2
 */