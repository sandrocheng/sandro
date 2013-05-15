package com.avast.android.mobilesecurity.app.scanner;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.AvastPendingIntent;
import com.avast.android.generic.notification.a;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.notification.s;
import com.avast.android.mobilesecurity.q;

class p
  implements Runnable
{
  p(o paramo, int paramInt)
  {
  }

  public void run()
  {
    AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(s.a, "android.intent.action.VIEW", q.a());
    localAvastPendingIntent.a().putInt("notificationId", 2131427342);
    Resources localResources = o.a(this.b).getResources();
    int i = this.a;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.a);
    a locala = new a(2131427342L, localResources.getQuantityString(2131689492, i, arrayOfObject1));
    CharSequence localCharSequence = o.a(this.b).getText(2131493354);
    int j = this.a;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(this.a);
    locala.a(localCharSequence, localResources.getQuantityString(2131689492, j, arrayOfObject2), localAvastPendingIntent);
    ((j)ad.a(o.a(this.b), j.class)).a(locala);
    android.support.v4.a.p.a(o.a(this.b)).a(new Intent("com.avast.android.mobilesecurity.app.scanner.ACTION_PROBLEM_FOUND"));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.p
 * JD-Core Version:    0.6.2
 */