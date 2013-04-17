import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.adcheck.NotificationInfo;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

public final class bto extends BaseManager
{
  private static int a(String[] paramArrayOfString, int paramInt, String paramString, AtomicReference<String> paramAtomicReference)
  {
    paramAtomicReference.set(null);
    while (true)
    {
      if (paramInt >= paramArrayOfString.length)
        paramInt = -1;
      while (true)
      {
        return paramInt;
        if (!paramArrayOfString[paramInt].trim().startsWith(paramString))
          break;
        paramAtomicReference.set(paramArrayOfString[paramInt]);
      }
      paramInt++;
    }
  }

  public static ArrayList<NotificationInfo> a()
  {
    int i;
    ArrayList localArrayList;
    String[] arrayOfString1;
    int j;
    if (ScriptHelper.canRunAtRoot() == 0)
    {
      i = 1;
      localArrayList = new ArrayList();
      if ((i != 0) || (ScriptHelper.isSystemUid()))
      {
        arrayOfString1 = ScriptHelper.runScriptSplitLines(new String[] { "dumpsys notification" });
        if (arrayOfString1 != null)
          j = 2;
      }
    }
    String str1;
    String str3;
    while (true)
    {
      if (j >= arrayOfString1.length);
      do
      {
        return localArrayList;
        i = 0;
        break;
        str1 = arrayOfString1[j].trim();
      }
      while (str1.contains("mSoundNotification="));
      String str2;
      int m;
      NotificationInfo localNotificationInfo;
      if (str1.contains("NotificationRecord"))
      {
        AtomicReference localAtomicReference = new AtomicReference();
        int k = a(arrayOfString1, j, "tickerText=", localAtomicReference);
        str2 = ((String)localAtomicReference.get()).trim();
        m = a(arrayOfString1, k + 1, "flags=", localAtomicReference);
        str3 = ((String)localAtomicReference.get()).trim();
        localNotificationInfo = new NotificationInfo();
      }
      try
      {
        String[] arrayOfString2 = str1.trim().split("[ =]");
        localNotificationInfo.mPkg = arrayOfString2[2];
        localNotificationInfo.mNotificationID = Long.parseLong(arrayOfString2[4], 16);
        String str4 = str2.substring(11);
        localNotificationInfo.mTickerText = str4;
        if (str4.equals("null"))
          localNotificationInfo.mTickerText = null;
        localNotificationInfo.mFlags = Long.parseLong(str3.substring(8), 16);
        localArrayList.add(localNotificationInfo);
        j = m;
        j++;
      }
      catch (Exception localException)
      {
      }
    }
    throw new RuntimeException("flagsText: " + str3 + " Notification: " + str1);
  }

  public static boolean a(NotificationInfo paramNotificationInfo, boolean paramBoolean)
  {
    boolean bool = true;
    if (paramBoolean)
    {
      String[] arrayOfString = new String[bool];
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramNotificationInfo.mPkg;
      arrayOfObject[bool] = Long.valueOf(paramNotificationInfo.mNotificationID);
      arrayOfString[0] = String.format("service call notification 2 s16 %s i32 %d", arrayOfObject);
      if (ScriptHelper.runScriptAsRoot(arrayOfString) != 0);
    }
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }

  public final void onCreate(Context paramContext)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bto
 * JD-Core Version:    0.6.2
 */