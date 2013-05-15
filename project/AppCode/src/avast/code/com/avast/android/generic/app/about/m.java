package com.avast.android.generic.app.about;

import android.os.AsyncTask;

class m extends AsyncTask
{
  private m(FeedbackFragment paramFeedbackFragment)
  {
  }

  protected Boolean a(Void[] paramArrayOfVoid)
  {
    com.avast.android.generic.util.m.b("FeedbackFragment", "Preparing zipped logs.");
    FeedbackFragment.a(this.a, r.a());
    FeedbackFragment.b(this.a, r.b());
    if ((FeedbackFragment.a(this.a) != null) && (FeedbackFragment.b(this.a) != null));
    for (boolean bool = true; ; bool = false)
      return Boolean.valueOf(bool);
  }

  protected void a(Boolean paramBoolean)
  {
    com.avast.android.generic.util.m.b("FeedbackFragment", "Done preparing logs, result: " + paramBoolean);
    if (paramBoolean.booleanValue())
      FeedbackFragment.c(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.m
 * JD-Core Version:    0.6.2
 */