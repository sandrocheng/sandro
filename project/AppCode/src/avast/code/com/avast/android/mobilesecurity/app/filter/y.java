package com.avast.android.mobilesecurity.app.filter;

import android.os.AsyncTask;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.filter.core.g;

class y extends AsyncTask
{
  y(SmsBlockOfferActivity paramSmsBlockOfferActivity, String paramString1, String paramString2, long paramLong, String paramString3)
  {
  }

  protected Void a(Void[] paramArrayOfVoid)
  {
    m.b("SmsBlockOfferActivity", "Saving message directly to the content provider.");
    if (g.a(this.e.getContentResolver(), this.a, this.b, this.c) < 0L)
      g.a(this.e, this.a, this.b, this.d, this.c, true);
    g.c(SmsBlockOfferActivity.g(this.e));
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.y
 * JD-Core Version:    0.6.2
 */