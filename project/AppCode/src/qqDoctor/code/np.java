import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.widget.RemoteViews;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.InterceptCenterActivity;
import com.tencent.qqpimsecure.ui.activity.SplashActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter.FunctionModel;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import com.tencent.tmsecure.module.plugin.PluginManager;
import java.util.List;

public class np
{
  public Notification a(Context paramContext, int paramInt, NetworkInfoEntity paramNetworkInfoEntity)
  {
    ho localho = ho.a();
    boolean bool1 = localho.f();
    boolean bool2 = new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f());
    int i = new jp("smslog", "mms_pdu", "mms_parts").e();
    int j = localho.G();
    int k = localho.J();
    Object localObject;
    if ((!bool1) && (!bool2) && (i <= 0) && (j <= 0))
    {
      localObject = null;
      return localObject;
    }
    Notification localNotification = new Notification();
    localNotification.when = System.currentTimeMillis();
    localNotification.flags = (0x2 | localNotification.flags);
    Intent localIntent = new Intent();
    localIntent.setFlags(872415232);
    int m;
    if (((j > 0) || (i > 0)) && (localho.ae()) && (paramInt >= 0))
    {
      m = 1;
      label169: if (m == 0)
        break label586;
      localIntent = new Intent();
      localIntent.putExtra("is_from_notification", true);
      localIntent.setClass(paramContext, InterceptCenterActivity.class);
      localIntent.putExtra("extra_back_to_main", true);
    }
    label926: label952: 
    while (true)
    {
      float f;
      int i1;
      String str2;
      try
      {
        localNotification.contentIntent = PendingIntent.getActivity(paramContext, 0, localIntent, 134217728);
        f = -1.0F;
        if (bool2)
        {
          if (paramNetworkInfoEntity == null)
            paramNetworkInfoEntity = new iu(QQPimApplication.a()).getTodayNetworkInfoEntity();
          if (paramNetworkInfoEntity.mTotalForMonth == 0L)
          {
            f = -1.0F;
            if (f < 0.9F)
              continue;
            if (f >= 1.0F)
              continue;
            n = 2130903246;
            localNotification.contentView = new RemoteViews(paramContext.getPackageName(), n);
            if (m == 0)
              continue;
            if (k != 1)
              continue;
            localNotification.icon = 2130838308;
            localNotification.contentView.setViewVisibility(2131231312, 0);
            localNotification.contentView.setViewVisibility(2131231315, 8);
            localNotification.contentView.setTextViewText(2131231313, String.valueOf(i));
            localNotification.contentView.setTextViewText(2131231314, String.valueOf(j));
            localNotification.contentView.setImageViewResource(2131231311, 2130838088);
            if (!gw.e())
              break label839;
            localNotification.contentView.setFloat(2131231315, "setTextSize", 17.0F);
            if (!bool2)
              break label926;
            localNotification.contentView.setViewVisibility(2131231316, 0);
            localNotification.contentView.setViewVisibility(2131231319, 8);
            if (bool2)
            {
              if (f >= 0.9F)
                break label952;
              i1 = paramContext.getResources().getColor(2131296327);
              if (f >= 0.0F)
                break label988;
              String str4 = paramContext.getResources().getString(2131427482);
              Object[] arrayOfObject3 = new Object[1];
              arrayOfObject3[0] = a.c(paramNetworkInfoEntity.mUsedForDay);
              str2 = String.format(str4, arrayOfObject3);
              localNotification.contentView.setTextViewText(2131231318, str2);
              localNotification.contentView.setTextColor(2131231318, i1);
              if ((f >= 0.01F) || (f <= 0.0F))
                break label1116;
              localNotification.contentView.setProgressBar(2131231317, 100, 1, false);
              if (!gw.e())
                break label1171;
              localNotification.contentView.setFloat(2131231318, "setTextSize", 11.0F);
            }
            localObject = localNotification;
            break;
            m = 0;
            break label169;
            label586: localIntent.setClass(paramContext, SplashActivity.class);
            continue;
          }
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        localNotification.contentIntent = null;
        localRuntimeException.printStackTrace();
        continue;
        if (paramNetworkInfoEntity.mTotalForMonth - paramNetworkInfoEntity.mUsedForMonth > 0L)
        {
          f = (float)paramNetworkInfoEntity.mUsedForMonth / (float)paramNetworkInfoEntity.mTotalForMonth;
          continue;
        }
        f = 1.0F;
        continue;
        int n = 2130903245;
        continue;
        n = 2130903244;
        continue;
        if (k == 2)
        {
          localNotification.icon = 2130838306;
          continue;
        }
        localNotification.icon = 2130838072;
        continue;
        localNotification.icon = 2130838073;
        localNotification.contentView.setViewVisibility(2131231312, 8);
        localNotification.contentView.setViewVisibility(2131231315, 0);
        if ((bool1) && (bool2))
        {
          localNotification.contentView.setTextViewText(2131231315, paramContext.getString(2131428259));
          localNotification.contentView.setImageViewResource(2131231311, 2130838088);
          continue;
        }
        if (bool1)
        {
          localNotification.contentView.setTextViewText(2131231315, paramContext.getString(2131427328));
          localNotification.contentView.setImageViewResource(2131231311, 2130838088);
          continue;
        }
        if (bool2)
        {
          localNotification.contentView.setImageViewResource(2131231311, 2130838090);
          localNotification.contentView.setTextViewText(2131231315, paramContext.getString(2131427328));
          continue;
        }
        localObject = null;
      }
      break;
      label839: if (gw.d())
      {
        localNotification.contentView.setFloat(2131231315, "setTextSize", 16.0F);
      }
      else if (gw.c())
      {
        localNotification.contentView.setFloat(2131231315, "setTextSize", 16.0F);
      }
      else if (gw.b())
      {
        localNotification.contentView.setFloat(2131231315, "setTextSize", 16.0F);
      }
      else
      {
        localNotification.contentView.setFloat(2131231315, "setTextSize", 15.0F);
        continue;
        localNotification.contentView.setViewVisibility(2131231316, 8);
        localNotification.contentView.setViewVisibility(2131231319, 0);
        continue;
        label1116: if (f < 1.0F)
        {
          i1 = paramContext.getResources().getColor(2131296327);
        }
        else
        {
          i1 = paramContext.getResources().getColor(2131296328);
          continue;
          label988: if (paramNetworkInfoEntity.mTotalForMonth - paramNetworkInfoEntity.mUsedForMonth > 0L)
          {
            String str3 = paramContext.getResources().getString(2131427480);
            Object[] arrayOfObject2 = new Object[2];
            arrayOfObject2[0] = a.c(paramNetworkInfoEntity.mUsedForDay);
            arrayOfObject2[1] = a.c(paramNetworkInfoEntity.mTotalForMonth - paramNetworkInfoEntity.mUsedForMonth);
            str2 = String.format(str3, arrayOfObject2);
          }
          else
          {
            String str1 = paramContext.getResources().getString(2131427481);
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = a.c(paramNetworkInfoEntity.mUsedForDay);
            arrayOfObject1[1] = a.c(paramNetworkInfoEntity.mUsedForMonth - paramNetworkInfoEntity.mTotalForMonth);
            str2 = String.format(str1, arrayOfObject1);
            continue;
            if (f >= 1.0F)
            {
              localNotification.contentView.setProgressBar(2131231317, 100, 100, false);
            }
            else if (f >= 0.0F)
            {
              localNotification.contentView.setProgressBar(2131231317, 100, (int)(f * 100.0F), false);
              continue;
              if (gw.d())
                localNotification.contentView.setFloat(2131231318, "setTextSize", 10.0F);
              else if (gw.c())
                localNotification.contentView.setFloat(2131231318, "setTextSize", 9.0F);
              else if (gw.b())
                localNotification.contentView.setFloat(2131231318, "setTextSize", 10.0F);
            }
          }
        }
      }
    }
  }

  public void a(Activity paramActivity)
  {
  }

  public void a(List<DesktopAdapter.FunctionModel> paramList)
  {
  }

  public boolean a()
  {
    return true;
  }

  public void b(Activity paramActivity)
  {
  }

  public boolean b()
  {
    return false;
  }

  public int c()
  {
    return 2131427933;
  }

  public void d()
  {
    Context localContext = TMSApplication.getApplicaionContext();
    ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).setAresEngineFactor(new oo(localContext));
    ((PluginManager)ManagerCreator.getManager(PluginManager.class)).setPluginControler(new ye());
  }

  public String e()
  {
    return "http://msm.qq.com/agreement/index_zhcn.jsp?pageNo=1&type=1";
  }

  public boolean f()
  {
    return true;
  }

  public boolean g()
  {
    return true;
  }

  public boolean h()
  {
    return true;
  }

  public boolean i()
  {
    return true;
  }

  public boolean j()
  {
    return true;
  }

  public String k()
  {
    return "";
  }

  public String l()
  {
    return "su";
  }

  public boolean m()
  {
    return true;
  }

  public boolean n()
  {
    return false;
  }

  public boolean o()
  {
    return false;
  }

  public String p()
  {
    return null;
  }

  public String q()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     np
 * JD-Core Version:    0.6.2
 */