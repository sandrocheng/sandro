package com.ijinshan.kpref;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class t
{
  public static final String a = "android.preference";
  public static final String b = "_has_set_default_values";
  private static final String c = "PreferenceManager";
  private Activity d;
  private Context e;
  private long f = 0L;
  private int g;
  private SharedPreferences h;
  private SharedPreferences.Editor i;
  private boolean j;
  private String k;
  private int l;
  private PreferenceScreen m;
  private List n;
  private List o;
  private List p;
  private List q;
  private x r;

  t(Activity paramActivity)
  {
    this.d = paramActivity;
    this.g = 100;
    c(paramActivity);
  }

  private t(Context paramContext)
  {
    c(paramContext);
  }

  private List a(Intent paramIntent)
  {
    return this.e.getPackageManager().queryIntentActivities(paramIntent, 128);
  }

  private void a(int paramInt)
  {
    this.l = paramInt;
    this.h = null;
  }

  private static void a(Context paramContext, int paramInt, boolean paramBoolean)
  {
    String str = d(paramContext);
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("_has_set_default_values", 0);
    SharedPreferences.Editor localEditor;
    if ((paramBoolean) || (!localSharedPreferences.getBoolean("_has_set_default_values", false)))
    {
      t localt = new t(paramContext);
      localt.a(str);
      localt.l = 0;
      localt.h = null;
      localt.a(paramContext, paramInt, null);
      localEditor = localSharedPreferences.edit().putBoolean("_has_set_default_values", true);
    }
    try
    {
      localEditor.commit();
      label93: return;
    }
    catch (AbstractMethodError localAbstractMethodError)
    {
      break label93;
    }
  }

  private static void a(Context paramContext, String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("_has_set_default_values", 0);
    SharedPreferences.Editor localEditor;
    if ((paramBoolean) || (!localSharedPreferences.getBoolean("_has_set_default_values", false)))
    {
      t localt = new t(paramContext);
      localt.a(paramString);
      localt.l = paramInt1;
      localt.h = null;
      localt.a(paramContext, paramInt2, null);
      localEditor = localSharedPreferences.edit().putBoolean("_has_set_default_values", true);
    }
    try
    {
      localEditor.commit();
      label89: return;
    }
    catch (AbstractMethodError localAbstractMethodError)
    {
      break label89;
    }
  }

  private void a(String paramString)
  {
    this.k = paramString;
    this.h = null;
  }

  private void a(boolean paramBoolean)
  {
    if ((!paramBoolean) && (this.i != null));
    try
    {
      this.i.commit();
      label21: this.j = paramBoolean;
      return;
    }
    catch (AbstractMethodError localAbstractMethodError)
    {
      break label21;
    }
  }

  public static SharedPreferences b(Context paramContext)
  {
    return paramContext.getSharedPreferences(d(paramContext), 0);
  }

  private void b(v paramv)
  {
    try
    {
      if (this.n != null)
        this.n.remove(paramv);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void c(Context paramContext)
  {
    this.e = paramContext;
    a(d(paramContext));
  }

  private static String d(Context paramContext)
  {
    return paramContext.getPackageName() + "_preferences";
  }

  private String l()
  {
    return this.k;
  }

  private int m()
  {
    return this.l;
  }

  private static int n()
  {
    return 0;
  }

  private Context o()
  {
    return this.e;
  }

  private void p()
  {
    try
    {
      if (this.q == null)
        return;
      ArrayList localArrayList = new ArrayList(this.q);
      this.q.clear();
      int i1 = localArrayList.size() - 1;
      if (i1 >= 0)
      {
        ((DialogInterface)localArrayList.get(i1)).dismiss();
        i1--;
      }
    }
    finally
    {
    }
  }

  final long a()
  {
    try
    {
      long l1 = this.f;
      this.f = (1L + l1);
      return l1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final Preference a(CharSequence paramCharSequence)
  {
    if (this.m == null);
    for (Preference localPreference = null; ; localPreference = this.m.c(paramCharSequence))
      return localPreference;
  }

  public final PreferenceScreen a(Context paramContext)
  {
    PreferenceScreen localPreferenceScreen = new PreferenceScreen(paramContext, null);
    localPreferenceScreen.a(this);
    return localPreferenceScreen;
  }

  public final PreferenceScreen a(Context paramContext, int paramInt, PreferenceScreen paramPreferenceScreen)
  {
    a(true);
    PreferenceScreen localPreferenceScreen = (PreferenceScreen)new s(paramContext, this).a(paramInt, paramPreferenceScreen);
    localPreferenceScreen.a(this);
    a(false);
    return localPreferenceScreen;
  }

  final PreferenceScreen a(Intent paramIntent, PreferenceScreen paramPreferenceScreen)
  {
    List localList = this.e.getPackageManager().queryIntentActivities(paramIntent, 128);
    HashSet localHashSet = new HashSet();
    int i1 = localList.size() - 1;
    Object localObject1 = paramPreferenceScreen;
    ActivityInfo localActivityInfo;
    if (i1 >= 0)
    {
      localActivityInfo = ((ResolveInfo)localList.get(i1)).activityInfo;
      Bundle localBundle = localActivityInfo.metaData;
      if ((localBundle == null) || (!localBundle.containsKey("android.preference")))
        break label270;
      String str = localActivityInfo.packageName + ":" + localActivityInfo.metaData.getInt("android.preference");
      if (localHashSet.contains(str))
        break label270;
      localHashSet.add(str);
    }
    while (true)
    {
      try
      {
        Context localContext = this.e.createPackageContext(localActivityInfo.packageName, 0);
        s locals = new s(localContext, this);
        XmlResourceParser localXmlResourceParser = localActivityInfo.loadXmlMetaData(localContext.getPackageManager(), "android.preference");
        localObject2 = (PreferenceScreen)locals.a(localXmlResourceParser, (g)localObject1);
        localXmlResourceParser.close();
        i1--;
        localObject1 = localObject2;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.w("PreferenceManager", "Could not create context for " + localActivityInfo.packageName + ": " + Log.getStackTraceString(localNameNotFoundException));
        localObject2 = localObject1;
        continue;
      }
      ((PreferenceScreen)localObject1).a(this);
      return localObject1;
      label270: Object localObject2 = localObject1;
    }
  }

  final void a(int paramInt, Intent paramIntent)
  {
    try
    {
      if (this.n == null)
        return;
      ArrayList localArrayList = new ArrayList(this.n);
      int i1 = localArrayList.size();
      int i2 = 0;
      if ((i2 < i1) && (!((v)localArrayList.get(i2)).a(paramInt, paramIntent)))
        i2++;
    }
    finally
    {
    }
  }

  final void a(DialogInterface paramDialogInterface)
  {
    try
    {
      if (this.q == null)
        this.q = new ArrayList();
      this.q.add(paramDialogInterface);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(u paramu)
  {
    try
    {
      if (this.p == null)
        this.p = new ArrayList();
      if (!this.p.contains(paramu))
        this.p.add(paramu);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(v paramv)
  {
    try
    {
      if (this.n == null)
        this.n = new ArrayList();
      if (!this.n.contains(paramv))
        this.n.add(paramv);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(w paramw)
  {
    try
    {
      if (this.o == null)
        this.o = new ArrayList();
      if (!this.o.contains(paramw))
        this.o.add(paramw);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void a(x paramx)
  {
    this.r = paramx;
  }

  final boolean a(PreferenceScreen paramPreferenceScreen)
  {
    if (paramPreferenceScreen != this.m)
      this.m = paramPreferenceScreen;
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final SharedPreferences b()
  {
    if (this.h == null)
      this.h = this.e.getSharedPreferences(this.k, this.l);
    return this.h;
  }

  final void b(DialogInterface paramDialogInterface)
  {
    try
    {
      if (this.q == null)
        return;
      this.q.remove(paramDialogInterface);
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void b(u paramu)
  {
    try
    {
      if (this.p != null)
        this.p.remove(paramu);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void b(w paramw)
  {
    try
    {
      if (this.o != null)
        this.o.remove(paramw);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final PreferenceScreen c()
  {
    return this.m;
  }

  final SharedPreferences.Editor d()
  {
    if (this.j)
      if (this.i == null)
        this.i = b().edit();
    for (SharedPreferences.Editor localEditor = this.i; ; localEditor = b().edit())
      return localEditor;
  }

  final boolean e()
  {
    if (!this.j);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  final Activity f()
  {
    return this.d;
  }

  final void g()
  {
    try
    {
      if (this.o == null)
        return;
      ArrayList localArrayList = new ArrayList(this.o);
      int i1 = localArrayList.size();
      int i2 = 0;
      if (i2 < i1)
      {
        ((w)localArrayList.get(i2)).a();
        i2++;
      }
    }
    finally
    {
    }
  }

  final void h()
  {
    while (true)
    {
      try
      {
        if (this.p == null)
          break label75;
        localArrayList = new ArrayList(this.p);
        if (localArrayList != null)
        {
          int i1 = localArrayList.size();
          int i2 = 0;
          if (i2 >= i1)
            continue;
          ((u)localArrayList.get(i2)).k();
          i2++;
        }
      }
      finally
      {
      }
      return;
      label75: ArrayList localArrayList = null;
    }
  }

  final int i()
  {
    try
    {
      int i1 = this.g;
      this.g = (i1 + 1);
      return i1;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  final void j()
  {
    p();
  }

  final x k()
  {
    return this.r;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.t
 * JD-Core Version:    0.6.2
 */