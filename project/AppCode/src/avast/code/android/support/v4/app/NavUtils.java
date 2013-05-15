package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.support.v4.a.g;

public class NavUtils
{
  private static final NavUtils.NavUtilsImpl IMPL;
  public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
  private static final String TAG = "NavUtils";

  static
  {
    if (Build.VERSION.SDK_INT >= 16);
    for (IMPL = new NavUtils.NavUtilsImplJB(); ; IMPL = new NavUtils.NavUtilsImplBase())
      return;
  }

  public static Intent getParentActivityIntent(Activity paramActivity)
  {
    return IMPL.getParentActivityIntent(paramActivity);
  }

  public static Intent getParentActivityIntent(Context paramContext, ComponentName paramComponentName)
  {
    String str = getParentActivityName(paramContext, paramComponentName);
    Intent localIntent;
    if (str == null)
      localIntent = null;
    while (true)
    {
      return localIntent;
      ComponentName localComponentName = new ComponentName(paramComponentName.getPackageName(), str);
      if (getParentActivityName(paramContext, localComponentName) == null)
        localIntent = g.a(localComponentName);
      else
        localIntent = new Intent().setComponent(localComponentName);
    }
  }

  public static Intent getParentActivityIntent(Context paramContext, Class paramClass)
  {
    String str = getParentActivityName(paramContext, new ComponentName(paramContext, paramClass));
    Intent localIntent;
    if (str == null)
      localIntent = null;
    while (true)
    {
      return localIntent;
      ComponentName localComponentName = new ComponentName(paramContext, str);
      if (getParentActivityName(paramContext, localComponentName) == null)
        localIntent = g.a(localComponentName);
      else
        localIntent = new Intent().setComponent(localComponentName);
    }
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
  {
    ActivityInfo localActivityInfo = paramContext.getPackageManager().getActivityInfo(paramComponentName, 128);
    return IMPL.getParentActivityName(paramContext, localActivityInfo);
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
    IMPL.navigateUpTo(paramActivity, paramIntent);
  }

  public static boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent)
  {
    return IMPL.shouldUpRecreateTask(paramActivity, paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.NavUtils
 * JD-Core Version:    0.6.2
 */