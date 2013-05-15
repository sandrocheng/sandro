package com.avast.android.generic.filebrowser;

import android.content.Context;
import android.os.Bundle;
import com.avast.android.generic.b;

public abstract class e extends b
{
  protected final Bundle f;
  protected f g;

  public e(Context paramContext, Bundle paramBundle)
  {
    super(paramContext);
    this.f = paramBundle;
    this.g = a(f());
  }

  protected abstract f a(String paramString);

  public String f()
  {
    return this.f.getString("path");
  }

  public f w()
  {
    return this.g;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.filebrowser.e
 * JD-Core Version:    0.6.2
 */