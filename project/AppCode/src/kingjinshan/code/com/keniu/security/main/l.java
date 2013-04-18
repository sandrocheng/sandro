package com.keniu.security.main;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.keniu.security.e;
import com.keniu.security.util.af;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

final class l
  implements AdapterView.OnItemClickListener
{
  l(k paramk)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String str2;
    Intent localIntent7;
    ResolveInfo localResolveInfo2;
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
      while (true)
      {
        this.a.b();
        return;
        Intent localIntent9 = new Intent("android.intent.action.VIEW", Uri.parse("http://bbs.duba.net/forum-6421-1.html"));
        if (k.a(this.a).queryIntentActivities(localIntent9, 65536).size() != 0)
        {
          k.b(this.a).startActivity(localIntent9);
          continue;
          Intent localIntent5 = k.a(this.a).getLaunchIntentForPackage("com.sina.weibo");
          StringBuilder localStringBuilder3 = new StringBuilder().append("@").append(k.b(this.a).getString(2131427862)).append(" ").append(k.b(this.a).getString(2131428832)).append(" ").append(k.b(this.a).getString(2131428607)).append(e.b(k.b(this.a))).append(" ").append(",");
          Context localContext3 = k.b(this.a);
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Build.MODEL;
          StringBuilder localStringBuilder4 = localStringBuilder3.append(localContext3.getString(2131428839, arrayOfObject3)).append(",");
          Context localContext4 = k.b(this.a);
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = Build.VERSION.RELEASE;
          str2 = localContext4.getString(2131428840, arrayOfObject4) + "," + k.b(this.a).getString(2131428838);
          if (localIntent5 != null)
            break;
          Intent localIntent6 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.sina.com.cn/share/share.php?title=" + URLEncoder.encode(str2)));
          if (k.a(this.a).queryIntentActivities(localIntent6, 65536).size() != 0)
            k.b(this.a).startActivity(localIntent6);
        }
      }
      localIntent7 = new Intent("android.intent.action.SEND");
      localIntent7.setType("text/plain");
      Iterator localIterator2 = k.a(this.a).queryIntentActivities(localIntent7, 65536).iterator();
      do
      {
        if (!localIterator2.hasNext())
          break;
        localResolveInfo2 = (ResolveInfo)localIterator2.next();
      }
      while (!localResolveInfo2.activityInfo.packageName.equalsIgnoreCase("com.sina.weibo"));
    case 2:
    case 3:
    }
    while (true)
    {
      if (localResolveInfo2 != null)
      {
        localIntent7.setComponent(new ComponentName(localResolveInfo2.activityInfo.packageName, localResolveInfo2.activityInfo.name));
        localIntent7.putExtra("android.intent.extra.TEXT", str2);
        k.b(this.a).startActivity(localIntent7);
        break;
      }
      Intent localIntent8 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.sina.com.cn/share/share.php?title=" + URLEncoder.encode(str2)));
      if (k.a(this.a).queryIntentActivities(localIntent8, 65536).size() == 0)
        break;
      k.b(this.a).startActivity(localIntent8);
      break;
      Intent localIntent1 = k.a(this.a).getLaunchIntentForPackage("com.tencent.WBlog");
      StringBuilder localStringBuilder1 = new StringBuilder().append("@").append(k.b(this.a).getString(2131427862)).append(" ").append(k.b(this.a).getString(2131428832)).append(" ").append(k.b(this.a).getString(2131428607)).append(e.b(k.b(this.a))).append(" ").append(",");
      Context localContext1 = k.b(this.a);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Build.MODEL;
      StringBuilder localStringBuilder2 = localStringBuilder1.append(localContext1.getString(2131428839, arrayOfObject1)).append(",");
      Context localContext2 = k.b(this.a);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Build.VERSION.RELEASE;
      String str1 = localContext2.getString(2131428840, arrayOfObject2) + "," + k.b(this.a).getString(2131428838);
      if (localIntent1 == null)
      {
        Intent localIntent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.qq.com/share/share.php?title=" + URLEncoder.encode(str1)));
        if (k.a(this.a).queryIntentActivities(localIntent2, 65536).size() == 0)
          break;
        k.b(this.a).startActivity(localIntent2);
        break;
      }
      Intent localIntent3 = new Intent("android.intent.action.SEND");
      localIntent3.setType("text/plain");
      Iterator localIterator1 = k.a(this.a).queryIntentActivities(localIntent3, 65536).iterator();
      ResolveInfo localResolveInfo1;
      do
      {
        if (!localIterator1.hasNext())
          break;
        localResolveInfo1 = (ResolveInfo)localIterator1.next();
      }
      while (!localResolveInfo1.activityInfo.packageName.equalsIgnoreCase("com.tencent.WBlog"));
      while (true)
      {
        if (localResolveInfo1 != null)
        {
          localIntent3.setComponent(new ComponentName(localResolveInfo1.activityInfo.packageName, localResolveInfo1.activityInfo.name));
          localIntent3.putExtra("android.intent.extra.TEXT", str1);
          k.b(this.a).startActivity(localIntent3);
          break;
        }
        Intent localIntent4 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.qq.com/share/share.php?title=" + URLEncoder.encode(str1)));
        if (k.a(this.a).queryIntentActivities(localIntent4, 65536).size() == 0)
          break;
        k.b(this.a).startActivity(localIntent4);
        break;
        af.a(k.b(this.a), SuggestionFeedback.class);
        break;
        localResolveInfo1 = null;
      }
      localResolveInfo2 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.l
 * JD-Core Version:    0.6.2
 */