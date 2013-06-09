package org.antivirus.widget.b;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import org.antivirus.widget.a.k;

public final class a extends ContentObserver
{
  private java.text.DateFormat a;
  private Context b;

  public a(Context paramContext)
  {
    super(new Handler());
    this.b = paramContext;
    this.a = android.text.format.DateFormat.getDateFormat(paramContext);
  }

  public final void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    java.text.DateFormat localDateFormat = android.text.format.DateFormat.getDateFormat(this.b);
    if (!this.a.equals(localDateFormat))
    {
      this.a = localDateFormat;
      k.a(this.b).d();
      k.a(this.b).c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.b.a
 * JD-Core Version:    0.6.2
 */