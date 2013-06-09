package org.antivirus.widget.a.a;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.io.Serializable;
import org.antivirus.AVService;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.l;

public abstract class n
{
  protected static PendingIntent a(Context paramContext, i parami, boolean paramBoolean, Class paramClass, int paramInt, Serializable[] paramArrayOfSerializable)
  {
    Intent localIntent = new Intent(paramContext, AVService.class);
    localIntent.putExtra("__SAC", 503);
    localIntent.putExtra("WidgetItem", parami);
    localIntent.putExtra("isService", paramBoolean);
    localIntent.putExtra("DelegatedIntentClass", paramClass);
    for (int i = 0; i < paramArrayOfSerializable.length; i += 2)
      localIntent.putExtra((String)paramArrayOfSerializable[i], paramArrayOfSerializable[(i + 1)]);
    return PendingIntent.getService(paramContext, paramInt, localIntent, 134217728);
  }

  protected static void a(int paramInt, String paramString1, String paramString2, RemoteViews paramRemoteViews, l paraml)
  {
    if (paramInt >= 0)
      paramRemoteViews.setImageViewResource(paraml.b, paramInt);
    if (paramString1 != null)
      paramRemoteViews.setTextViewText(paraml.c, paramString1);
    if (paramString2 != null)
      paramRemoteViews.setTextViewText(paraml.d, paramString2);
  }

  protected static void a(RemoteViews paramRemoteViews, l paraml, int paramInt1, int paramInt2)
  {
    paramRemoteViews.setViewVisibility(paraml.d, paramInt2);
    paramRemoteViews.setViewVisibility(paraml.c, paramInt1);
  }

  public abstract boolean a(Context paramContext, Bundle paramBundle, RemoteViews paramRemoteViews, l paraml, boolean paramBoolean);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.a.a.n
 * JD-Core Version:    0.6.2
 */