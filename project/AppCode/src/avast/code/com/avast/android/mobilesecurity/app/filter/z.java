package com.avast.android.mobilesecurity.app.filter;

import android.content.ContentResolver;
import android.os.AsyncTask;
import com.avast.android.mobilesecurity.app.filter.core.f;
import com.avast.android.mobilesecurity.app.filter.core.g;

class z extends AsyncTask
{
  boolean a = true;

  z(SmsBlockOfferActivity paramSmsBlockOfferActivity, ContentResolver paramContentResolver)
  {
  }

  protected Void a(Long[] paramArrayOfLong)
  {
    long l = paramArrayOfLong[0].longValue();
    new aa(this, this.c, l).a(SmsBlockOfferActivity.b(this.c));
    if (this.a)
      SmsBlockOfferActivity.a(this.c, SmsBlockOfferActivity.b(this.c), SmsBlockOfferActivity.c(this.c), SmsBlockOfferActivity.d(this.c), SmsBlockOfferActivity.e(this.c));
    while (true)
    {
      return null;
      g.d(SmsBlockOfferActivity.g(this.c));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.z
 * JD-Core Version:    0.6.2
 */