package com.avast.android.mobilesecurity.app.filter;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.os.Build.VERSION;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

class ae
  implements View.OnClickListener
{
  ae(TelBlockOfferActivity paramTelBlockOfferActivity, String paramString)
  {
  }

  @SuppressLint({"NewApi"})
  public void onClick(View paramView)
  {
    TelBlockOfferActivity.a(this.b).setVisibility(0);
    if (Build.VERSION.SDK_INT >= 11)
      ((android.content.ClipboardManager)this.b.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(this.a, TelBlockOfferActivity.b(this.b)));
    while (true)
    {
      return;
      ((android.text.ClipboardManager)this.b.getSystemService("clipboard")).setText(TelBlockOfferActivity.b(this.b));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.ae
 * JD-Core Version:    0.6.2
 */