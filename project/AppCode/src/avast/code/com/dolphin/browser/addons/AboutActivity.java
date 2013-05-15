package com.dolphin.browser.addons;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.Locale;

public abstract class AboutActivity extends Activity
{
  private static final float a = Resources.getSystem().getDisplayMetrics().density;
  private static final Object[][] b = arrayOfObject;;

  static
  {
    Object[][] arrayOfObject; = new Object[1][];
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[1] = "mobi.mgeek.TunnyBrowser";
    arrayOfObject[2] = Integer.valueOf(150);
    arrayOfObject[3] = "market://details?id=mobi.mgeek.TunnyBrowser";
    arrayOfObject;[0] = arrayOfObject;
  }

  public static int a(int paramInt)
  {
    return (int)(0.5F + paramInt * a);
  }

  public static boolean a(Context paramContext)
  {
    Object[][] arrayOfObject = b;
    int i = arrayOfObject.length;
    for (int j = 0; ; j++)
    {
      if (j >= i);
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        Object[] arrayOfObject1 = arrayOfObject[j];
        if (!a(paramContext, (String)arrayOfObject1[1], ((Integer)arrayOfObject1[2]).intValue()))
          break;
      }
    }
  }

  private static boolean a(Context paramContext, String paramString, int paramInt)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramString, 0).versionCode;
      bool = false;
      if (i >= paramInt)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public static String b()
  {
    String str1 = Locale.getDefault().getLanguage();
    Object[][] arrayOfObject = b;
    int i = arrayOfObject.length;
    int j = 0;
    Object localObject1 = null;
    String str2;
    label27: label32: Object[] arrayOfObject1;
    Locale localLocale;
    if (j >= i)
    {
      str2 = null;
      if (str2 == null)
        return localObject1;
    }
    else
    {
      arrayOfObject1 = arrayOfObject[j];
      localLocale = (Locale)arrayOfObject1[0];
      if (localLocale != null);
    }
    for (Object localObject2 = (String)arrayOfObject1[3]; ; localObject2 = localObject1)
    {
      j++;
      localObject1 = localObject2;
      break;
      if (localLocale.getLanguage().equals(str1))
      {
        str2 = (String)arrayOfObject1[3];
        break label27;
        localObject1 = str2;
        break label32;
      }
    }
  }

  private void c()
  {
    PackageManager localPackageManager = getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(getPackageName(), 0);
      LinearLayout localLinearLayout1 = new LinearLayout(this);
      localLinearLayout1.setOrientation(1);
      LinearLayout localLinearLayout2 = new LinearLayout(this);
      localLinearLayout2.setOrientation(0);
      localLinearLayout2.setPadding(a(10), a(5), a(10), a(5));
      localLinearLayout2.setGravity(16);
      ImageView localImageView = new ImageView(this);
      localImageView.setImageDrawable(localPackageInfo.applicationInfo.loadIcon(localPackageManager));
      int i = (int)getResources().getDimension(17104896);
      localLinearLayout2.addView(localImageView, i, i);
      TextView localTextView1 = new TextView(this);
      localTextView1.setText(localPackageInfo.applicationInfo.loadLabel(localPackageManager));
      localTextView1.setTextAppearance(this, 16973890);
      localTextView1.setPadding(a(5), 0, 0, 0);
      localLinearLayout2.addView(localTextView1, -2, -2);
      localLinearLayout1.addView(localLinearLayout2, -1, -2);
      localLinearLayout2.setBackgroundColor(-393227);
      TextView localTextView2 = new TextView(this);
      localTextView2.setText(e());
      localTextView2.setPadding(a(8), a(4), a(8), a(4));
      localTextView2.setBackgroundColor(-13132800);
      localTextView2.setTextAppearance(this, 16973892);
      localTextView2.setTextColor(-1);
      localTextView2.setMovementMethod(LinkMovementMethod.getInstance());
      localLinearLayout1.addView(localTextView2, -1, -2);
      ScrollView localScrollView = new ScrollView(this);
      localScrollView.setBackgroundColor(-1);
      TextView localTextView3 = new TextView(this);
      localTextView3.setText(d());
      localTextView3.setPadding(a(8), a(4), a(8), a(4));
      localTextView3.setTextAppearance(this, 16973892);
      localScrollView.addView(localTextView3, -1, -2);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, 0);
      localLayoutParams.weight = 1.0F;
      localLinearLayout1.addView(localScrollView, localLayoutParams);
      setContentView(localLinearLayout1, new ViewGroup.LayoutParams(-1, -1));
      label392: return;
    }
    catch (Exception localException)
    {
      break label392;
    }
  }

  private CharSequence d()
  {
    Resources localResources = getResources();
    int i = localResources.getIdentifier("long_description", "string", getPackageName());
    if (i > 0);
    for (CharSequence localCharSequence = localResources.getText(i); ; localCharSequence = null)
      return localCharSequence;
  }

  private CharSequence e()
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("You have to download Dolphin Browser to make this add-on work. ");
    URLSpan localURLSpan = new URLSpan(b());
    int i = localSpannableStringBuilder.length();
    localSpannableStringBuilder.append("Click to download.");
    localSpannableStringBuilder.setSpan(localURLSpan, i, localSpannableStringBuilder.length(), 33);
    return localSpannableStringBuilder;
  }

  protected abstract void a();

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (a(this))
    {
      a();
      finish();
    }
    while (true)
    {
      return;
      setTheme(16973837);
      c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.AboutActivity
 * JD-Core Version:    0.6.2
 */