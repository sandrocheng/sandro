package com.ijinshan.bootmanager.activity;

import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.PackageParser.Activity;
import android.content.pm.PackageParser.ActivityIntentInfo;
import android.content.pm.PackageParser.Package;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.method.LinkMovementMethod;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.keniu.security.malware.bz;
import com.keniu.security.util.aq;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class AutoBootMangerActivity extends ListActivity
  implements com.keniu.security.monitor.b
{
  private static final String d = "android.intent.action.BOOT_COMPLETED";
  private static final String e = Environment.getDataDirectory() + "/system/packages.xml";
  private static final String f = "ap.jar";
  private static final int h = 1;
  private static final int i = 2;
  private static final int j = 3;
  private static final int k = 4;
  private static final int l = 5;
  private static final int m = 6;
  private static final String n = "BATTERY_DOC_TYPE";
  private static final String o = "DUBA_DOC_TYPE";
  private static final String p = "SECRET_PRO_TYPE";
  private static final String q = "ROOT_REQUEST";
  private int A;
  private String B;
  private ProgressBar C;
  private ProgressDialog D;
  private RadioGroup E;
  private RadioButton F;
  private RadioButton G;
  private Button H;
  private TextView I;
  private TextView J;
  private TextView K;
  private TextView L;
  private LinearLayout M;
  private Thread N;
  private Thread O;
  private Handler P = new f(this);
  com.keniu.security.monitor.a a;
  com.keniu.security.a b;
  i c = i.b;
  private final int g = Build.VERSION.SDK_INT;
  private PackageManager r;
  private com.ijinshan.bootmanager.a.a s;
  private List t = new ArrayList();
  private List u = new ArrayList();
  private List v = new ArrayList();
  private boolean w = bz.a().e();
  private boolean x = false;
  private boolean y = false;
  private int z;

  private String a(long paramLong)
  {
    return Formatter.formatFileSize(this, paramLong);
  }

  private void a(String paramString, com.ijinshan.bootmanager.b.a parama)
  {
    aq localaq = new aq(this, (byte)0);
    View localView = LayoutInflater.from(this).inflate(2130903097, null);
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131231005);
    localCheckBox.setChecked(false);
    localaq.a(getString(2131428763));
    if ("BATTERY_DOC_TYPE".equals(paramString))
    {
      localaq.b(getString(2131428772));
      localaq.a(getString(2131428774), new l(this, paramString, parama, localCheckBox));
      localaq.b(getString(2131428775), null);
      localaq.d();
    }
    while (true)
    {
      return;
      if ("DUBA_DOC_TYPE".equals(paramString))
      {
        localaq.b(getString(2131428773));
        localaq.a(getString(2131428774), new l(this, paramString, parama, localCheckBox));
        localaq.b(getString(2131428775), null);
        localaq.d();
      }
      else if ("SECRET_PRO_TYPE".equals(paramString))
      {
        localaq.b(getString(2131428771));
        localaq.a(getString(2131428774), new l(this, paramString, parama, localCheckBox));
        localaq.b(getString(2131428775), null);
        localaq.d();
      }
      else if ("ROOT_REQUEST".equals(paramString))
      {
        TextView localTextView = (TextView)localView.findViewById(2131231003);
        SpannableString localSpannableString = new SpannableString(getString(2131428776));
        localSpannableString.setSpan(new n(this, true), localSpannableString.length() - 5, localSpannableString.length() - 1, 17);
        localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131296283)), localSpannableString.length() - 5, localSpannableString.length() - 1, 34);
        localTextView.setText(localSpannableString);
        localTextView.setMovementMethod(LinkMovementMethod.getInstance());
        localaq.a(localView);
        if (this.b.y())
        {
          localaq.b(getString(2131428764), new l(this, paramString, parama, localCheckBox));
          localaq.d();
        }
        else
        {
          bz.a().c();
          this.a.a(com.keniu.security.monitor.a.x, this, 1073741823);
        }
      }
    }
  }

  private static boolean a(String paramString1, String paramString2)
  {
    File localFile = new File(paramString1);
    Iterator localIterator1 = new PackageParser(paramString1).parsePackage(localFile, null, new DisplayMetrics(), 0).receivers.iterator();
    boolean bool = false;
    if (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((PackageParser.Activity)localIterator1.next()).intents.iterator();
      while (localIterator2.hasNext())
      {
        Iterator localIterator3 = ((PackageParser.ActivityIntentInfo)localIterator2.next()).actionsIterator();
        while (localIterator3.hasNext())
          if (paramString2.equalsIgnoreCase((String)localIterator3.next()))
            bool = true;
      }
    }
    return bool;
  }

  private static String b(String paramString1, String paramString2)
  {
    File localFile = new File(paramString1);
    Iterator localIterator1 = new PackageParser(paramString1).parsePackage(localFile, null, new DisplayMetrics(), 0).receivers.iterator();
    label37: PackageParser.Activity localActivity;
    if (localIterator1.hasNext())
    {
      localActivity = (PackageParser.Activity)localIterator1.next();
      Iterator localIterator2 = localActivity.intents.iterator();
      Iterator localIterator3;
      label92: 
      do
      {
        break label92;
        if (!localIterator2.hasNext())
          break label37;
        localIterator3 = ((PackageParser.ActivityIntentInfo)localIterator2.next()).actionsIterator();
        if (!localIterator3.hasNext())
          break;
      }
      while (!paramString2.equalsIgnoreCase((String)localIterator3.next()));
    }
    for (String str = localActivity.className; ; str = "")
      return str;
  }

  private void b()
  {
    new d(this).start();
  }

  private static void b(int paramInt, Handler paramHandler)
  {
    Message localMessage = new Message();
    localMessage.what = paramInt;
    localMessage.obj = null;
    paramHandler.sendMessage(localMessage);
  }

  private boolean b(com.ijinshan.bootmanager.b.a parama)
  {
    com.ijinshan.bootmanager.c.a locala = new com.ijinshan.bootmanager.c.a(this);
    locala.a(parama, "1");
    locala.a();
    boolean bool1 = bz.a().a(parama.c(), parama.d());
    Iterator localIterator = parama.d().iterator();
    ComponentName localComponentName;
    do
    {
      if (!localIterator.hasNext())
        break;
      String str = (String)localIterator.next();
      localComponentName = ComponentName.unflattenFromString(parama.c() + "/" + str);
      for (int i1 = 0; (i1 < 100) && (2 != this.r.getComponentEnabledSetting(localComponentName)); i1++)
        SystemClock.sleep(100L);
    }
    while (2 == this.r.getComponentEnabledSetting(localComponentName));
    for (boolean bool2 = false; ; bool2 = bool1)
    {
      if (!bool2)
      {
        bz.a().d();
        bz.a().c();
        this.a.a(com.keniu.security.monitor.a.x);
        this.a.a(com.keniu.security.monitor.a.x, this, 1073741823);
      }
      return bool2;
    }
  }

  private boolean c()
  {
    List localList = this.r.getInstalledApplications(0);
    if (localList == null);
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      HashMap localHashMap = new HashMap();
      ArrayList localArrayList1 = new ArrayList();
      int i1 = localList.size();
      int i2 = 0;
      while (i2 < i1)
      {
        ApplicationInfo localApplicationInfo = (ApplicationInfo)localList.get(i2);
        String str;
        if ((0x1 & localApplicationInfo.flags) != 1)
        {
          str = b(localApplicationInfo.sourceDir, "android.intent.action.BOOT_COMPLETED");
          if (str.length() != 0)
          {
            ComponentName localComponentName = ComponentName.unflattenFromString(localApplicationInfo.packageName + "/" + str);
            if (2 == this.r.getComponentEnabledSetting(localComponentName))
            {
              if (!localHashMap.containsKey(localApplicationInfo.packageName))
                break label192;
              ((List)localHashMap.get(localApplicationInfo.packageName)).add(str);
            }
          }
        }
        i2++;
        continue;
        label192: com.ijinshan.bootmanager.b.a locala2 = new com.ijinshan.bootmanager.b.a();
        locala2.a(localApplicationInfo.packageName);
        if (localApplicationInfo.labelRes != 0)
        {
          locala2.b(localApplicationInfo.loadLabel(this.r).toString());
          label236: if (localApplicationInfo.icon == 0)
            break label346;
          locala2.a(localApplicationInfo.loadIcon(this.r));
          label258: if ((0x40000 & localApplicationInfo.flags) == 0)
            break label364;
          locala2.d(getString(2131428710));
        }
        while (true)
        {
          locala2.a(false);
          ArrayList localArrayList2 = new ArrayList();
          localArrayList2.add(str);
          localHashMap.put(localApplicationInfo.packageName, localArrayList2);
          localArrayList1.add(locala2);
          break;
          locala2.b(localApplicationInfo.packageName);
          break label236;
          label346: locala2.a(getResources().getDrawable(17301651));
          break label258;
          label364: locala2.d(getString(2131428711));
        }
      }
      Iterator localIterator = localArrayList1.iterator();
      while (localIterator.hasNext())
      {
        com.ijinshan.bootmanager.b.a locala1 = (com.ijinshan.bootmanager.b.a)localIterator.next();
        if (!this.t.contains(locala1))
        {
          locala1.a((List)localHashMap.get(locala1.c()));
          this.u.add(locala1);
        }
      }
      this.A = this.u.size();
    }
  }

  private boolean c(com.ijinshan.bootmanager.b.a parama)
  {
    com.ijinshan.bootmanager.c.a locala = new com.ijinshan.bootmanager.c.a(this);
    locala.a(parama, "0");
    locala.a();
    boolean bool1 = bz.a().b(parama.c(), parama.d());
    Iterator localIterator = parama.d().iterator();
    ComponentName localComponentName;
    do
    {
      if (!localIterator.hasNext())
        break;
      String str = (String)localIterator.next();
      localComponentName = ComponentName.unflattenFromString(parama.c() + "/" + str);
      for (int i1 = 0; (i1 < 100) && (2 == this.r.getComponentEnabledSetting(localComponentName)); i1++)
        SystemClock.sleep(100L);
    }
    while (2 != this.r.getComponentEnabledSetting(localComponentName));
    for (boolean bool2 = false; ; bool2 = bool1)
    {
      if (!bool2)
      {
        bz.a().d();
        bz.a().c();
        this.a.a(com.keniu.security.monitor.a.x);
        this.a.a(com.keniu.security.monitor.a.x, this, 1073741823);
      }
      return bool2;
    }
  }

  private void d()
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131428763));
    localaq.b("本功能需要打开系统设置中的“USB调试”并重启手机。现在打开USB调试吗？");
    localaq.a(2131428774, new e(this));
    localaq.b(2131428775, null);
    localaq.d();
  }

  private boolean e()
  {
    boolean bool;
    if ((this.t == null) || (this.t.size() == 0))
      bool = false;
    while (true)
    {
      return bool;
      Iterator localIterator = this.t.iterator();
      while (true)
        if (localIterator.hasNext())
        {
          com.ijinshan.bootmanager.b.a locala = (com.ijinshan.bootmanager.b.a)localIterator.next();
          if ((!"com.ijinshan.mguard".equals(locala.c())) && (!locala.c().startsWith("com.ijinshan.kbatterydoctor")) && (!locala.c().startsWith("com.ijinshan.duba")) && (!locala.c().startsWith("com.ijinshan.mPrivacy")))
          {
            bool = true;
            break;
          }
        }
      bool = false;
    }
  }

  private void f()
  {
    Intent localIntent = new Intent("android.intent.action.BOOT_COMPLETED", null);
    List localList = this.r.queryBroadcastReceivers(localIntent, 0);
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator1.next();
      ApplicationInfo localApplicationInfo = localResolveInfo.activityInfo.applicationInfo;
      if ((0x1 & localApplicationInfo.flags) != 1)
      {
        com.ijinshan.bootmanager.b.a locala2 = new com.ijinshan.bootmanager.b.a();
        locala2.a(localApplicationInfo.packageName);
        if (localApplicationInfo.labelRes != 0)
        {
          locala2.b(localApplicationInfo.loadLabel(this.r).toString());
          label133: if (localApplicationInfo.icon == 0)
            break label243;
          locala2.a(localApplicationInfo.loadIcon(this.r));
          label155: if ((0x40000 & localApplicationInfo.flags) == 0)
            break label261;
          locala2.d(getString(2131428710));
        }
        while (true)
        {
          locala2.a(true);
          if (!localHashMap.containsKey(localApplicationInfo.packageName))
            break label276;
          ((List)localHashMap.get(localApplicationInfo.packageName)).add(localResolveInfo.activityInfo.name);
          break;
          locala2.b(localApplicationInfo.packageName);
          break label133;
          label243: locala2.a(getResources().getDrawable(17301651));
          break label155;
          label261: locala2.d(getString(2131428711));
        }
        label276: ArrayList localArrayList2 = new ArrayList();
        localArrayList2.add(localResolveInfo.activityInfo.name);
        localHashMap.put(localApplicationInfo.packageName, localArrayList2);
        localArrayList1.add(locala2);
      }
    }
    Iterator localIterator2 = localArrayList1.iterator();
    while (localIterator2.hasNext())
    {
      com.ijinshan.bootmanager.b.a locala1 = (com.ijinshan.bootmanager.b.a)localIterator2.next();
      locala1.a((List)localHashMap.get(locala1.c()));
      this.t.add(locala1);
    }
    this.z = this.t.size();
  }

  // ERROR //
  private boolean g()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: new 469	java/util/HashMap
    //   5: dup
    //   6: invokespecial 470	java/util/HashMap:<init>	()V
    //   9: astore_2
    //   10: new 121	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 122	java/util/ArrayList:<init>	()V
    //   17: astore_3
    //   18: new 390	java/io/File
    //   21: dup
    //   22: getstatic 111	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:e	Ljava/lang/String;
    //   25: invokespecial 393	java/io/File:<init>	(Ljava/lang/String;)V
    //   28: astore 4
    //   30: invokestatic 609	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   33: invokevirtual 613	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   36: aload 4
    //   38: invokevirtual 619	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/File;)Lorg/w3c/dom/Document;
    //   41: invokeinterface 625 1 0
    //   46: astore 16
    //   48: iconst_0
    //   49: istore 17
    //   51: iload 17
    //   53: aload 16
    //   55: invokeinterface 630 1 0
    //   60: if_icmpge +679 -> 739
    //   63: aload 16
    //   65: iload 17
    //   67: invokeinterface 634 2 0
    //   72: invokeinterface 639 1 0
    //   77: ldc_w 641
    //   80: invokevirtual 228	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   83: ifeq +650 -> 733
    //   86: aload 16
    //   88: iload 17
    //   90: invokeinterface 634 2 0
    //   95: invokeinterface 642 1 0
    //   100: astore 21
    //   102: iconst_0
    //   103: istore 22
    //   105: iload 22
    //   107: aload 21
    //   109: invokeinterface 630 1 0
    //   114: if_icmpge +619 -> 733
    //   117: aload 21
    //   119: iload 22
    //   121: invokeinterface 634 2 0
    //   126: astore 23
    //   128: ldc_w 644
    //   131: aload 23
    //   133: invokeinterface 639 1 0
    //   138: invokevirtual 228	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   141: ifeq +586 -> 727
    //   144: aload 23
    //   146: invokeinterface 648 1 0
    //   151: astore 24
    //   153: aload 23
    //   155: invokeinterface 642 1 0
    //   160: astore 25
    //   162: iconst_0
    //   163: istore 26
    //   165: iload 26
    //   167: aload 25
    //   169: invokeinterface 630 1 0
    //   174: if_icmpge +553 -> 727
    //   177: aload 25
    //   179: iload 26
    //   181: invokeinterface 634 2 0
    //   186: astore 27
    //   188: ldc_w 650
    //   191: aload 27
    //   193: invokeinterface 639 1 0
    //   198: invokevirtual 228	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   201: ifeq +520 -> 721
    //   204: aload 27
    //   206: invokeinterface 642 1 0
    //   211: astore 28
    //   213: iconst_0
    //   214: istore 29
    //   216: iload 29
    //   218: aload 28
    //   220: invokeinterface 630 1 0
    //   225: if_icmpge +496 -> 721
    //   228: aload 28
    //   230: iload 29
    //   232: invokeinterface 634 2 0
    //   237: astore 30
    //   239: ldc_w 651
    //   242: aload 30
    //   244: invokeinterface 639 1 0
    //   249: invokevirtual 228	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   252: ifeq +617 -> 869
    //   255: aload 30
    //   257: invokeinterface 648 1 0
    //   262: astore 31
    //   264: aload 24
    //   266: ldc_w 652
    //   269: invokeinterface 658 2 0
    //   274: invokeinterface 661 1 0
    //   279: astore 32
    //   281: aload 24
    //   283: ldc_w 663
    //   286: invokeinterface 658 2 0
    //   291: invokeinterface 661 1 0
    //   296: astore 33
    //   298: aload 31
    //   300: ldc_w 652
    //   303: invokeinterface 658 2 0
    //   308: invokeinterface 661 1 0
    //   313: astore 34
    //   315: aload 33
    //   317: ldc_w 665
    //   320: invokevirtual 571	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   323: istore 35
    //   325: iload 35
    //   327: ifne +542 -> 869
    //   330: aload 33
    //   332: ldc 10
    //   334: invokestatic 667	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   337: istore 37
    //   339: iload 37
    //   341: ifeq +528 -> 869
    //   344: aload_0
    //   345: getfield 162	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:r	Landroid/content/pm/PackageManager;
    //   348: aload 32
    //   350: iconst_0
    //   351: invokevirtual 671	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   354: getfield 674	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   357: astore 38
    //   359: new 336	com/ijinshan/bootmanager/b/a
    //   362: dup
    //   363: invokespecial 503	com/ijinshan/bootmanager/b/a:<init>	()V
    //   366: astore 39
    //   368: aload 39
    //   370: aload 32
    //   372: invokevirtual 505	com/ijinshan/bootmanager/b/a:a	(Ljava/lang/String;)V
    //   375: aload_0
    //   376: getfield 124	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:t	Ljava/util/List;
    //   379: aload 39
    //   381: invokeinterface 546 2 0
    //   386: ifne +335 -> 721
    //   389: aload 38
    //   391: getfield 508	android/content/pm/ApplicationInfo:labelRes	I
    //   394: ifeq +105 -> 499
    //   397: aload 39
    //   399: aload 38
    //   401: aload_0
    //   402: getfield 162	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:r	Landroid/content/pm/PackageManager;
    //   405: invokevirtual 512	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   408: invokevirtual 515	java/lang/Object:toString	()Ljava/lang/String;
    //   411: invokevirtual 517	com/ijinshan/bootmanager/b/a:b	(Ljava/lang/String;)V
    //   414: aload 38
    //   416: getfield 520	android/content/pm/ApplicationInfo:icon	I
    //   419: ifeq +161 -> 580
    //   422: aload 39
    //   424: aload 38
    //   426: aload_0
    //   427: getfield 162	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:r	Landroid/content/pm/PackageManager;
    //   430: invokevirtual 524	android/content/pm/ApplicationInfo:loadIcon	(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    //   433: invokevirtual 527	com/ijinshan/bootmanager/b/a:a	(Landroid/graphics/drawable/Drawable;)V
    //   436: ldc_w 528
    //   439: aload 38
    //   441: getfield 482	android/content/pm/ApplicationInfo:flags	I
    //   444: iand
    //   445: ifeq +219 -> 664
    //   448: aload 39
    //   450: aload_0
    //   451: ldc_w 529
    //   454: invokevirtual 219	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:getString	(I)Ljava/lang/String;
    //   457: invokevirtual 531	com/ijinshan/bootmanager/b/a:d	(Ljava/lang/String;)V
    //   460: aload 39
    //   462: iconst_0
    //   463: invokevirtual 533	com/ijinshan/bootmanager/b/a:a	(Z)V
    //   466: aload_2
    //   467: aload 32
    //   469: invokeinterface 496 2 0
    //   474: ifeq +205 -> 679
    //   477: aload_2
    //   478: aload 32
    //   480: invokeinterface 499 2 0
    //   485: checkcast 346	java/util/List
    //   488: aload 34
    //   490: invokeinterface 502 2 0
    //   495: pop
    //   496: goto +373 -> 869
    //   499: aload 39
    //   501: aload 32
    //   503: invokevirtual 517	com/ijinshan/bootmanager/b/a:b	(Ljava/lang/String;)V
    //   506: goto -92 -> 414
    //   509: astore 10
    //   511: aload 10
    //   513: invokevirtual 677	java/lang/Exception:printStackTrace	()V
    //   516: aload_3
    //   517: invokeinterface 350 1 0
    //   522: astore 11
    //   524: aload 11
    //   526: invokeinterface 355 1 0
    //   531: ifeq +290 -> 821
    //   534: aload 11
    //   536: invokeinterface 359 1 0
    //   541: checkcast 336	com/ijinshan/bootmanager/b/a
    //   544: astore 14
    //   546: aload 14
    //   548: aload_2
    //   549: aload 14
    //   551: invokevirtual 338	com/ijinshan/bootmanager/b/a:c	()Ljava/lang/String;
    //   554: invokeinterface 499 2 0
    //   559: checkcast 346	java/util/List
    //   562: invokevirtual 549	com/ijinshan/bootmanager/b/a:a	(Ljava/util/List;)V
    //   565: aload_0
    //   566: getfield 126	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:u	Ljava/util/List;
    //   569: aload 14
    //   571: invokeinterface 502 2 0
    //   576: pop
    //   577: goto -53 -> 524
    //   580: aload 39
    //   582: aload_0
    //   583: invokevirtual 276	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:getResources	()Landroid/content/res/Resources;
    //   586: ldc_w 538
    //   589: invokevirtual 542	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   592: invokevirtual 527	com/ijinshan/bootmanager/b/a:a	(Landroid/graphics/drawable/Drawable;)V
    //   595: goto -159 -> 436
    //   598: astore 5
    //   600: aload_3
    //   601: invokeinterface 350 1 0
    //   606: astore 6
    //   608: aload 6
    //   610: invokeinterface 355 1 0
    //   615: ifeq +230 -> 845
    //   618: aload 6
    //   620: invokeinterface 359 1 0
    //   625: checkcast 336	com/ijinshan/bootmanager/b/a
    //   628: astore 8
    //   630: aload 8
    //   632: aload_2
    //   633: aload 8
    //   635: invokevirtual 338	com/ijinshan/bootmanager/b/a:c	()Ljava/lang/String;
    //   638: invokeinterface 499 2 0
    //   643: checkcast 346	java/util/List
    //   646: invokevirtual 549	com/ijinshan/bootmanager/b/a:a	(Ljava/util/List;)V
    //   649: aload_0
    //   650: getfield 126	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:u	Ljava/util/List;
    //   653: aload 8
    //   655: invokeinterface 502 2 0
    //   660: pop
    //   661: goto -53 -> 608
    //   664: aload 39
    //   666: aload_0
    //   667: ldc_w 543
    //   670: invokevirtual 219	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:getString	(I)Ljava/lang/String;
    //   673: invokevirtual 531	com/ijinshan/bootmanager/b/a:d	(Ljava/lang/String;)V
    //   676: goto -216 -> 460
    //   679: new 121	java/util/ArrayList
    //   682: dup
    //   683: invokespecial 122	java/util/ArrayList:<init>	()V
    //   686: astore 40
    //   688: aload 40
    //   690: aload 34
    //   692: invokeinterface 502 2 0
    //   697: pop
    //   698: aload_2
    //   699: aload 32
    //   701: aload 40
    //   703: invokeinterface 537 3 0
    //   708: pop
    //   709: aload_3
    //   710: aload 39
    //   712: invokeinterface 502 2 0
    //   717: pop
    //   718: goto +151 -> 869
    //   721: iinc 26 1
    //   724: goto -559 -> 165
    //   727: iinc 22 1
    //   730: goto -625 -> 105
    //   733: iinc 17 1
    //   736: goto -685 -> 51
    //   739: aload_3
    //   740: invokeinterface 350 1 0
    //   745: astore 18
    //   747: aload 18
    //   749: invokeinterface 355 1 0
    //   754: ifeq +49 -> 803
    //   757: aload 18
    //   759: invokeinterface 359 1 0
    //   764: checkcast 336	com/ijinshan/bootmanager/b/a
    //   767: astore 19
    //   769: aload 19
    //   771: aload_2
    //   772: aload 19
    //   774: invokevirtual 338	com/ijinshan/bootmanager/b/a:c	()Ljava/lang/String;
    //   777: invokeinterface 499 2 0
    //   782: checkcast 346	java/util/List
    //   785: invokevirtual 549	com/ijinshan/bootmanager/b/a:a	(Ljava/util/List;)V
    //   788: aload_0
    //   789: getfield 126	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:u	Ljava/util/List;
    //   792: aload 19
    //   794: invokeinterface 502 2 0
    //   799: pop
    //   800: goto -53 -> 747
    //   803: aload_0
    //   804: getfield 126	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:u	Ljava/util/List;
    //   807: invokeinterface 473 1 0
    //   812: ifne +51 -> 863
    //   815: iconst_0
    //   816: istore 13
    //   818: iload 13
    //   820: ireturn
    //   821: aload_0
    //   822: getfield 126	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:u	Ljava/util/List;
    //   825: invokeinterface 473 1 0
    //   830: istore 12
    //   832: iconst_0
    //   833: istore_1
    //   834: iload 12
    //   836: ifne +27 -> 863
    //   839: iconst_0
    //   840: istore 13
    //   842: goto -24 -> 818
    //   845: aload_0
    //   846: getfield 126	com/ijinshan/bootmanager/activity/AutoBootMangerActivity:u	Ljava/util/List;
    //   849: invokeinterface 473 1 0
    //   854: pop
    //   855: aload 5
    //   857: athrow
    //   858: astore 36
    //   860: goto +9 -> 869
    //   863: iload_1
    //   864: istore 13
    //   866: goto -48 -> 818
    //   869: iinc 29 1
    //   872: goto -656 -> 216
    //
    // Exception table:
    //   from	to	target	type
    //   18	325	509	java/lang/Exception
    //   344	506	509	java/lang/Exception
    //   580	595	509	java/lang/Exception
    //   664	718	509	java/lang/Exception
    //   18	325	598	finally
    //   330	339	598	finally
    //   344	506	598	finally
    //   511	516	598	finally
    //   580	595	598	finally
    //   664	718	598	finally
    //   330	339	858	java/lang/Exception
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == com.keniu.security.monitor.a.x)
    {
      this.w = ((Boolean)paramObject1).booleanValue();
      b();
    }
    return 0;
  }

  public final void a()
  {
    this.O = new o(this, this.P);
    this.O.start();
  }

  public final void a(com.ijinshan.bootmanager.b.a parama)
  {
    this.x = false;
    if (this.w)
    {
      bz.a();
      if (bz.b());
    }
    else
    {
      Toast.makeText(this, getString(2131428747), 0).show();
      return;
    }
    Iterator localIterator = parama.d().iterator();
    ComponentName localComponentName;
    do
    {
      if (!localIterator.hasNext())
        break;
      String str = (String)localIterator.next();
      localComponentName = ComponentName.unflattenFromString(parama.c() + "/" + str);
    }
    while (2 != this.r.getComponentEnabledSetting(localComponentName));
    for (int i1 = 1; ; i1 = 0)
    {
      if (i1 == 0)
      {
        if (parama.c().startsWith("com.ijinshan.kbatterydoctor"))
        {
          if (isFinishing())
            break;
          a("BATTERY_DOC_TYPE", parama);
          break;
        }
        if (parama.c().startsWith("com.ijinshan.duba"))
        {
          if (isFinishing())
            break;
          a("DUBA_DOC_TYPE", parama);
          break;
        }
        if (parama.c().startsWith("com.ijinshan.mPrivacy"))
        {
          if (isFinishing())
            break;
          a("SECRET_PRO_TYPE", parama);
          break;
        }
        b(2, this.P);
        new g(this, parama).start();
        break;
      }
      b(4, this.P);
      new h(this, parama).start();
      break;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903072);
    if (paramBundle == null)
      com.jxphone.mosecurity.a.a.i(this, "mg_auto_manger_main");
    ((TextView)findViewById(2131230727)).setText(getString(2131428743));
    ((TextView)findViewById(2131230728)).setVisibility(8);
    this.K = ((TextView)findViewById(2131230931));
    this.J = ((TextView)findViewById(2131230927));
    this.L = ((TextView)findViewById(2131230928));
    this.M = ((LinearLayout)findViewById(2131230921));
    bz.a();
    if (!bz.b())
    {
      this.M.setVisibility(0);
      this.M.setOnClickListener(new b(this));
    }
    this.C = ((ProgressBar)findViewById(2131230929));
    this.I = ((TextView)findViewById(2131230930));
    SpannableString localSpannableString = new SpannableString(getString(2131428757));
    localSpannableString.setSpan(new n(this, false), 0, localSpannableString.length(), 17);
    localSpannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131296283)), 0, localSpannableString.length(), 34);
    this.K.setText(localSpannableString);
    this.K.setMovementMethod(LinkMovementMethod.getInstance());
    this.L.setText(getString(2131428746));
    this.L.setVisibility(8);
    this.J.setVisibility(8);
    this.K.setVisibility(8);
    this.H = ((Button)findViewById(2131230926));
    this.H.setOnClickListener(new j(this));
    this.F = ((RadioButton)findViewById(2131230924));
    this.G = ((RadioButton)findViewById(2131230925));
    this.E = ((RadioGroup)findViewById(2131230923));
    this.E.check(2131230924);
    this.E.setOnCheckedChangeListener(new c(this));
    this.r = getPackageManager();
    this.a = com.keniu.security.monitor.a.a();
    this.b = com.keniu.security.a.a(this);
    this.B = (com.keniu.security.f.f.a(getFilesDir().getPath()) + "ap.jar");
    if (!this.w)
    {
      bz.a();
      if (bz.b())
        if (!isFinishing())
          a("ROOT_REQUEST", null);
    }
    while (true)
    {
      return;
      b();
    }
  }

  protected void onDestroy()
  {
    if (this.N != null)
    {
      if (this.N.isAlive())
        Thread.interrupted();
      this.N = null;
    }
    if (this.O != null)
    {
      if (this.O.isAlive())
        Thread.interrupted();
      this.O = null;
    }
    if (this.D != null)
    {
      if (this.D.isShowing())
        this.D.dismiss();
      this.D = null;
    }
    this.a.a(com.keniu.security.monitor.a.x);
    super.onDestroy();
  }

  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.AutoBootMangerActivity
 * JD-Core Version:    0.6.2
 */