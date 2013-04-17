package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public class NavUtils
{
  public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
  private static final String TAG = "NavUtils";

  public static Intent getParentActivityIntent(Activity paramActivity)
  {
    String str = getParentActivityName(paramActivity);
    if (str == null);
    for (Intent localIntent = null; ; localIntent = new Intent("android.intent.action.MAIN").setClassName(paramActivity, str))
      return localIntent;
  }

  public static Intent getParentActivityIntent(Context paramContext, ComponentName paramComponentName)
    throws PackageManager.NameNotFoundException
  {
    String str = getParentActivityName(paramContext, paramComponentName);
    if (str == null);
    for (Intent localIntent = null; ; localIntent = new Intent("android.intent.action.MAIN").setClassName(paramContext, str))
    {
      return localIntent;
      if (str.charAt(0) == '.')
        str = paramContext.getPackageName() + str;
    }
  }

  public static Intent getParentActivityIntent(Context paramContext, Class<?> paramClass)
    throws PackageManager.NameNotFoundException
  {
    String str = getParentActivityName(paramContext, new ComponentName(paramContext, paramClass));
    if (str == null);
    for (Intent localIntent = null; ; localIntent = new Intent("android.intent.action.MAIN").setClassName(paramContext, str))
      return localIntent;
  }

  public static String getParentActivityName(Activity paramActivity)
  {
    try
    {
      String str = getParentActivityName(paramActivity, paramActivity.getComponentName());
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new IllegalArgumentException(localNameNotFoundException);
    }
  }

  public static String getParentActivityName(Context paramContext, ComponentName paramComponentName)
    throws PackageManager.NameNotFoundException
  {
    ActivityInfo localActivityInfo = paramContext.getPackageManager().getActivityInfo(paramComponentName, 128);
    String str;
    if (localActivityInfo.metaData == null)
      str = null;
    while (true)
    {
      return str;
      str = localActivityInfo.metaData.getString("android.support.PARENT_ACTIVITY");
      if (str == null)
        str = null;
      else if (str.charAt(0) == '.')
        str = paramContext.getPackageName() + str;
    }
  }

  public static void navigateUpFromSameTask(Activity paramActivity)
  {
    Intent localIntent = getParentActivityIntent(paramActivity);
    if (localIntent == null)
      throw new IllegalArgumentException("Activity " + paramActivity.getClass().getSimpleName() + " does not have a parent activity name specified." + " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> " + " element in your manifest?)");
    navigateUpTo(paramActivity, localIntent);
  }

  public static void navigateUpTo(Activity paramActivity, Intent paramIntent)
  {
    paramIntent.addFlags(67108864);
    paramActivity.startActivity(paramIntent);
    paramActivity.finish();
  }

  public static boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent)
  {
    String str = paramActivity.getIntent().getAction();
    if ((str != null) && (!str.equals("android.intent.action.MAIN")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.support.v4.app.NavUtils
 * JD-Core Version:    0.6.2
 */