package com.antivirus.widget.a;

import android.content.Context;
import android.database.ContentObserver;
import com.antivirus.AVService;
import com.antivirus.widget.appbackup.AppBackupWidgetPlugin;
import com.antivirus.widget.update.UpdateWidgetPlugin;

public class a extends ContentObserver
{
  private java.text.DateFormat a;
  private Context b;

  public a(Context paramContext)
  {
    super(null);
    this.b = paramContext;
    this.a = android.text.format.DateFormat.getDateFormat(paramContext);
  }

  public void onChange(boolean paramBoolean)
  {
    super.onChange(paramBoolean);
    java.text.DateFormat localDateFormat = android.text.format.DateFormat.getDateFormat(this.b);
    if (!this.a.equals(localDateFormat))
    {
      this.a = localDateFormat;
      AVService.a(this.b, 25000, 8, AppBackupWidgetPlugin.k());
      AVService.a(this.b, 25000, 8, UpdateWidgetPlugin.k());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.a.a
 * JD-Core Version:    0.6.2
 */