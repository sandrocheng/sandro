package com.keniu.security.main;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

final class ce
  implements AdapterView.OnItemClickListener
{
  ce(cd paramcd, List paramList)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == this.a.size());
    while (true)
    {
      ResolveInfo localResolveInfo3;
      try
      {
        Intent localIntent6 = cd.a(this.b).getLaunchIntentForPackage("com.sina.weibo");
        str2 = "@" + cd.b(this.b).getString(2131427862) + " " + cd.b(this.b).getString(2131429125);
        if (localIntent6 == null)
        {
          Intent localIntent7 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.sina.com.cn/share/share.php?title=" + URLEncoder.encode(str2)));
          if (cd.a(this.b).queryIntentActivities(localIntent7, 65536).size() != 0)
            cd.b(this.b).startActivity(localIntent7);
          this.b.b();
          return;
        }
        Intent localIntent8 = new Intent("android.intent.action.SEND");
        localIntent8.setType("text/plain");
        Iterator localIterator2 = cd.a(this.b).queryIntentActivities(localIntent8, 65536).iterator();
        if (!localIterator2.hasNext())
          break label951;
        localResolveInfo3 = (ResolveInfo)localIterator2.next();
        if (!localResolveInfo3.activityInfo.packageName.equalsIgnoreCase("com.sina.weibo"))
          continue;
        if (localResolveInfo3 != null)
        {
          localIntent8.setComponent(new ComponentName(localResolveInfo3.activityInfo.packageName, localResolveInfo3.activityInfo.name));
          localIntent8.putExtra("android.intent.extra.SUBJECT", cd.b(this.b).getString(2131429124));
          localIntent8.putExtra("android.intent.extra.TEXT", cd.b(this.b).getString(2131429125));
          cd.b(this.b).startActivity(localIntent8);
          continue;
        }
      }
      catch (Exception localException2)
      {
        String str2;
        localException2.printStackTrace();
        continue;
        Intent localIntent9 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.sina.com.cn/share/share.php?title=" + URLEncoder.encode(str2)));
        if (cd.a(this.b).queryIntentActivities(localIntent9, 65536).size() == 0)
          continue;
        cd.b(this.b).startActivity(localIntent9);
        continue;
      }
      String str1;
      label584: Intent localIntent4;
      ResolveInfo localResolveInfo2;
      if (paramInt == 1 + this.a.size())
      {
        try
        {
          Intent localIntent2 = cd.a(this.b).getLaunchIntentForPackage("com.tencent.WBlog");
          str1 = "@" + cd.b(this.b).getString(2131427862) + " " + cd.b(this.b).getString(2131429125);
          if (localIntent2 != null)
            break label584;
          Intent localIntent3 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.qq.com/share/share.php?title=" + URLEncoder.encode(str1)));
          if (cd.a(this.b).queryIntentActivities(localIntent3, 65536).size() == 0)
            continue;
          cd.b(this.b).startActivity(localIntent3);
        }
        catch (Exception localException1)
        {
          localException1.printStackTrace();
        }
        continue;
        localIntent4 = new Intent("android.intent.action.SEND");
        localIntent4.setType("text/plain");
        Iterator localIterator1 = cd.a(this.b).queryIntentActivities(localIntent4, 65536).iterator();
        do
        {
          if (!localIterator1.hasNext())
            break;
          localResolveInfo2 = (ResolveInfo)localIterator1.next();
        }
        while (!localResolveInfo2.activityInfo.packageName.equalsIgnoreCase("com.tencent.WBlog"));
      }
      else
      {
        while (true)
        {
          if (localResolveInfo2 != null)
          {
            localIntent4.setComponent(new ComponentName(localResolveInfo2.activityInfo.packageName, localResolveInfo2.activityInfo.name));
            localIntent4.putExtra("android.intent.extra.SUBJECT", cd.b(this.b).getString(2131429124));
            localIntent4.putExtra("android.intent.extra.TEXT", cd.b(this.b).getString(2131429125));
            cd.b(this.b).startActivity(localIntent4);
            break;
          }
          Intent localIntent5 = new Intent("android.intent.action.VIEW", Uri.parse("http://v.t.qq.com/share/share.php?title=" + URLEncoder.encode(str1)));
          if (cd.a(this.b).queryIntentActivities(localIntent5, 65536).size() == 0)
            break;
          cd.b(this.b).startActivity(localIntent5);
          break;
          ResolveInfo localResolveInfo1 = (ResolveInfo)this.a.get(paramInt);
          Intent localIntent1 = new Intent();
          ActivityInfo localActivityInfo = localResolveInfo1.activityInfo;
          localIntent1.setAction("android.intent.action.SEND");
          localIntent1.setComponent(new ComponentName(localActivityInfo.applicationInfo.packageName, localActivityInfo.name));
          localIntent1.putExtra("android.intent.extra.SUBJECT", cd.b(this.b).getString(2131429124));
          localIntent1.putExtra("android.intent.extra.TEXT", cd.b(this.b).getString(2131429125));
          cd.b(this.b).startActivity(localIntent1);
          break;
          localResolveInfo2 = null;
        }
        label951: localResolveInfo3 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ce
 * JD-Core Version:    0.6.2
 */