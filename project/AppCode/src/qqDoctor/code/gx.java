import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.text.Collator;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

public final class gx
{
  public static gx a;
  public static gx.b b;

  public static PackageInfo a(Context paramContext, String paramString)
  {
    Object localObject = null;
    if (paramString == null);
    while (true)
    {
      return localObject;
      PackageManager localPackageManager = paramContext.getPackageManager();
      try
      {
        PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramString, 1);
        localObject = localPackageInfo;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localObject = null;
      }
    }
  }

  public static void a(BaseView paramBaseView, SoftwareManager paramSoftwareManager, List<String> paramList)
  {
    paramBaseView.setBatchNext(new gy(paramList, paramSoftwareManager, paramBaseView));
    if (paramList.size() > 0);
    try
    {
      paramSoftwareManager.uninstallApp((String)paramList.remove(0), paramBaseView.getActivity(), 0);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        ha.b(TMSApplication.getApplicaionContext(), 2131427510);
    }
  }

  public static final class a
    implements Comparator<AppEntity>
  {
    private Collator a = Collator.getInstance(Locale.CHINA);

    private int a(AppEntity paramAppEntity1, AppEntity paramAppEntity2)
    {
      try
      {
        String str3 = paramAppEntity1.getAppName();
        str1 = str3;
      }
      catch (Exception localException1)
      {
        try
        {
          String str1;
          String str4 = paramAppEntity2.getAppName();
          for (str2 = str4; ; str2 = null)
          {
            int i;
            if ((paramAppEntity1 == null) || (str1 == null))
              i = -1;
            while (true)
            {
              return i;
              if ((paramAppEntity2 == null) || (str2 == null))
                i = 1;
              else
                i = this.a.compare(str1, str2);
            }
            localException1 = localException1;
            str1 = null;
          }
        }
        catch (Exception localException2)
        {
          while (true)
            String str2 = null;
        }
      }
    }
  }

  public static final class b
  {
    public b(aoh paramaoh)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     gx
 * JD-Core Version:    0.6.2
 */