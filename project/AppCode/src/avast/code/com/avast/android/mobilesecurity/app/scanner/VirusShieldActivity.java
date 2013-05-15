package com.avast.android.mobilesecurity.app.scanner;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.a.p;
import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.fileshield.v;
import com.avast.android.mobilesecurity.app.locking.core.App;
import com.avast.android.mobilesecurity.engine.u;
import com.avast.android.mobilesecurity.engine.x;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

public class VirusShieldActivity extends Activity
{
  private boolean a;
  private String b;
  private Uri c;
  private String d;
  private boolean e;
  private App f;
  private Queue g;

  private void a()
  {
    if (!this.g.isEmpty())
      a((Intent)this.g.poll());
    while (true)
    {
      return;
      finish();
    }
  }

  private void a(Intent paramIntent)
  {
    if (paramIntent.hasExtra("app"))
      this.f = ((App)paramIntent.getParcelableExtra("app"));
    this.c = paramIntent.getData();
    View localView;
    label165: PackageManager localPackageManager;
    Object localObject;
    label229: String[] arrayOfString1;
    label246: StringBuilder localStringBuilder;
    int j;
    label270: String str1;
    int k;
    if (this.c != null)
    {
      this.d = this.c.getAuthority();
      this.e = paramIntent.getBooleanExtra("isRealtimeShield", false);
      this.a = paramIntent.getBooleanExtra("isStorageShield", false);
      this.b = null;
      if ((this.a) && (this.c != null))
        this.b = new File(this.c.getPath()).getAbsolutePath();
      Button localButton = (Button)findViewById(2131165301);
      if (this.a)
        localButton.setText(2131493339);
      localButton.setOnClickListener(new ak(this));
      localView = findViewById(2131165302);
      if (!this.a)
        break label445;
      localView.setVisibility(8);
      TextView localTextView = (TextView)findViewById(2131165303);
      if ((this.e) || (this.a))
        localTextView.setText(2131493450);
      localTextView.setOnClickListener(new am(this));
      localPackageManager = getPackageManager();
      if (!this.a)
        break label460;
      localObject = this.b;
      if (!paramIntent.hasExtra("infectionType"))
        break label512;
      arrayOfString1 = paramIntent.getStringArrayExtra("infectionType");
      String[] arrayOfString2 = (String[])arrayOfString1;
      localStringBuilder = new StringBuilder();
      int i = arrayOfString2.length;
      j = 0;
      if (j >= i)
        break label610;
      str1 = arrayOfString2[j];
      k = str1.indexOf('|');
      if (k <= 0)
        break label659;
    }
    label512: label527: label659: for (String str2 = str1.substring(0, k); ; str2 = str1)
    {
      ArrayList localArrayList;
      label325: u localu;
      label355: String str3;
      if (paramIntent.hasExtra("detectionCategory"))
      {
        localArrayList = paramIntent.getIntegerArrayListExtra("detectionCategory");
        if ((localArrayList == null) || (localArrayList.size() <= 0))
          break label527;
        localu = u.a(((Integer)localArrayList.get(0)).intValue());
        switch (an.a[localu.ordinal()])
        {
        default:
          str3 = getString(2131493447, new Object[] { localObject, str2 });
        case 1:
        case 2:
        case 3:
        }
      }
      while (true)
      {
        while (true)
        {
          localStringBuilder.append(str3);
          localStringBuilder.append("<br/>");
          j++;
          break label270;
          this.d = "";
          break;
          label445: localView.setOnClickListener(new al(this));
          break label165;
          try
          {
            label460: CharSequence localCharSequence = localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(this.d, 0));
            localObject = localCharSequence;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            if (this.c != null)
            {
              localObject = this.c.toString();
              break label229;
            }
            localObject = "";
          }
        }
        break label229;
        arrayOfString1 = new String[0];
        break label246;
        localArrayList = null;
        break label325;
        localu = u.a;
        break label355;
        str3 = getString(2131493444, new Object[] { localObject, str2 });
        continue;
        str3 = getString(2131493445, new Object[] { localObject, str2 });
        continue;
        str3 = getString(2131493446, new Object[] { localObject, str2 });
      }
      label610: if (localStringBuilder.length() > 5)
        localStringBuilder.delete(-5 + localStringBuilder.length(), localStringBuilder.length());
      ((TextView)findViewById(2131165275)).setText(Html.fromHtml(localStringBuilder.toString()));
      return;
    }
  }

  private void b()
  {
    p.a(this).a(new Intent("com.avast.android.mobilesecurity.app.scanner.ACTION_LOG_CLEARED"));
    ((j)ad.a(this, j.class)).a(2131427342L);
  }

  public static void call(Context paramContext, Uri paramUri, App paramApp, List paramList1, List paramList2, List paramList3, ao paramao, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, VirusShieldActivity.class);
    localIntent.setData(paramUri);
    if (paramApp != null)
      localIntent.putExtra("app", paramApp);
    localIntent.putExtra("infectionType", (String[])paramList3.toArray(new String[paramList3.size()]));
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = paramList1.iterator();
    while (localIterator1.hasNext())
      localArrayList1.add(Integer.valueOf(((x)localIterator1.next()).a()));
    localIntent.putExtra("result", localArrayList1.toArray(new Integer[localArrayList1.size()]));
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator2 = paramList2.iterator();
    while (localIterator2.hasNext())
      localArrayList2.add(Integer.valueOf(((u)localIterator2.next()).a()));
    localIntent.putExtra("detectionCategory", localArrayList2);
    if (paramao != null)
    {
      localIntent.putExtra("isRealtimeShield", paramao.equals(ao.a));
      localIntent.putExtra("isStorageShield", paramao.equals(ao.b));
    }
    localIntent.setFlags(paramInt);
    paramContext.startActivity(localIntent);
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903074);
    this.g = new LinkedList();
    if (getIntent().hasExtra("intent_queue"))
    {
      this.g.addAll(getIntent().getParcelableArrayListExtra("intent_queue"));
      a();
    }
    while (true)
    {
      return;
      a(getIntent());
    }
  }

  protected void onNewIntent(Intent paramIntent)
  {
    m.c("VirusShield: onNewIntent: adding intent to queue.");
    this.g.add(paramIntent);
  }

  protected void onStop()
  {
    super.onStop();
    finish();
    if (this.a)
      v.a().c(this.b);
    if (this.g.size() > 0)
    {
      Intent localIntent = new Intent(this, getClass());
      localIntent.putParcelableArrayListExtra("intent_queue", new ArrayList(this.g));
      startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.VirusShieldActivity
 * JD-Core Version:    0.6.2
 */