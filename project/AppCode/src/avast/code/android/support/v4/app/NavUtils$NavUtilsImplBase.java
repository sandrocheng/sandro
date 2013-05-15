package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.a.g;
import android.util.Log;

class NavUtils$NavUtilsImplBase
  implements NavUtils.NavUtilsImpl
{
  public Intent getParentActivityIntent(Activity paramActivity)
  {
    String str1 = NavUtils.getParentActivityName(paramActivity);
    Object localObject = null;
    if (str1 == null);
    while (true)
    {
      return localObject;
      ComponentName localComponentName = new ComponentName(paramActivity, str1);
      try
      {
        String str2 = NavUtils.getParentActivityName(paramActivity, localComponentName);
        localObject = null;
        if (str2 == null)
        {
          localObject = g.a(localComponentName);
        }
        else
        {
          Intent localIntent = new Intent().setComponent(localComponentName);
          localObject = localIntent;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + str1 + "' in manifest");
      }
    }
  }

  public String getParentActivityName(Context paramContext, ActivityInfo paramActivityInfo)
  {
    String str;
    if (paramActivityInfo.metaData == null)
      str = null;
    while (true)
    {
      return str;
      str = paramActivityInfo.metaData.getString("android.support.PARENT_ACTIVITY");
      if (str == null)
        str = null;
      else if (str.charAt(0) == '.')
        str = paramContext.getPackageName() + str;
    }
  }

  public void navigateUpTo(Activity paramActivity, Intent paramIntent)
  {
    paramIntent.addFlags(67108864);
    paramActivity.startActivity(paramIntent);
    paramActivity.finish();
  }

  public boolean shouldUpRecreateTask(Activity paramActivity, Intent paramIntent)
  {
    String str = paramActivity.getIntent().getAction();
    if ((str != null) && (!str.equals("android.intent.action.MAIN")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.NavUtils.NavUtilsImplBase
 * JD-Core Version:    0.6.2
 */