package com.tencent.qqpimsecure.uilib.service;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.tmsecure.utils.SDKUtil;
import di;
import gw;
import ho;
import java.util.ArrayList;
import java.util.List;
import jk;
import np;
import qx;
import qx.a;

public class TabFactory
{
  public static final int TAB_APK_MANAGER = 1;
  public static final int TAB_BENCHMARK_DOWNLOAD = 47;
  public static final int TAB_BOOT_OPTIMIZE = 16;
  public static final int TAB_CHANGE_PSW = 34;
  public static final int TAB_CHANGE_SECURITY_QUESTION = 35;
  public static final int TAB_CHARGEBACK_SCAN = 42;
  public static final int TAB_DATA_CLEAR = 17;
  public static final int TAB_DEEP_CLEAN = 46;
  public static final int TAB_DELETE_DATA = 18;
  public static final int TAB_ENCRY_AUDIO = 38;
  public static final int TAB_ENCRY_DOC = 39;
  public static final int TAB_ENCRY_OTHER = 40;
  public static final int TAB_ENCRY_PIC = 36;
  public static final int TAB_ENCRY_VIDEO = 37;
  public static final int TAB_FAR_CONTROL = 19;
  public static final int TAB_FILE_SAFE = 33;
  public static final int TAB_FILTER_MANAGER = 23;
  public static final int TAB_FIND_PASSWORD = 21;
  public static final int TAB_IPCALL = 13;
  public static final int TAB_LIST_COMMONT_TOOLS = 4;
  public static final int TAB_LIST_FILESAVE_MAIN = 9;
  public static final int TAB_LIST_FILESAVE_SET = 10;
  public static final int TAB_LIST_MAIN_PAGE = 8;
  public static final int TAB_LIST_MARKET = 1;
  public static final int TAB_LIST_NETWORK_NAMAGER = 3;
  public static final int TAB_LIST_PERMISSION = 2;
  public static final int TAB_LIST_PICKPROOF = 7;
  public static final int TAB_LIST_SOFTWARE_CENTER = 0;
  public static final int TAB_LIST_SYSTEM_OPTIMIZE = 5;
  public static final int TAB_LIST_VIRUS_MANAGER = 6;
  public static final int TAB_LOCATION_QUERY = 11;
  public static final int TAB_MONITOR_SOFTWARE = 7;
  public static final int TAB_NECESSARY_SOFTWARE = 4;
  public static final int TAB_NETWORK_MANAGER = 22;
  public static final int TAB_NOTIFICATION_ADBLOCK = 45;
  public static final int TAB_NUMBER_QUERY = 12;
  public static final int TAB_PASSWORD_VERIFY = 31;
  public static final int TAB_PHONE_OPTIMIZE = 24;
  public static final int TAB_PHONE_STATE_MARKET = 28;
  public static final int TAB_PHONE_STATE_MY_SOFTWARE = 27;
  public static final int TAB_PHONE_STATE_PEMISSION_MONITOR = 29;
  public static final int TAB_PHONE_STATE_SYSTEM_SETTING = 30;
  public static final int TAB_PHONE_STATE_VIRUS_SCAN = 26;
  public static final int TAB_PHONE_TOKEN = 41;
  public static final int TAB_PICKPROOF = 44;
  public static final int TAB_POSITION_PHONE = 20;
  public static final int TAB_POWER_MANAGER = 25;
  public static final int TAB_PRIVACY_LOCK = 48;
  public static final int TAB_PRIVATE_SPACE = 8;
  public static final int TAB_PUSH_SUPPLIER = 1002;
  public static final int TAB_PUSH_WANDOUJIA = 1001;
  public static final int TAB_SCREENSHOT = 14;
  public static final int TAB_SOFTWARE_DAIRY = 3;
  public static final int TAB_SOFTWARE_GATEGORY = 5;
  public static final int TAB_SOFTWARE_MOVE = 2;
  public static final int TAB_SOFTWARE_SEARCH = 6;
  public static final int TAB_SOFTWARE_UNINSTALL = 0;
  public static final int TAB_SOFTWARE_UPDATE = 10;
  public static final int TAB_STYLE_NORMAL = 0;
  public static final int TAB_STYLE_NO_BACKGROUND = 1;
  public static final int TAB_SYNC_ASSISTANTS = 43;
  public static final int TAB_TASK_MANAGER = 15;
  public static final int TAB_VIRUS_FULL_SCAN = 45;
  public static final int TAB_VIRUS_KILL_ROOT = 47;
  public static final int TAB_VIRUS_MANAGER = 49;
  public static final int TAB_VIRUS_UPDATE_DATA = 46;
  public static final int TAB_WAP_SORT = 9;
  private static boolean isHD;

  static
  {
    if (qx.a().h() == qx.a.q);
    for (boolean bool = true; ; bool = false)
    {
      isHD = bool;
      return;
    }
  }

  private static void createCommonToolsTabList(Context paramContext, List<TabModel> paramList)
  {
    ho localho = ho.a();
    if (gw.b())
    {
      TabModel localTabModel1 = new TabModel(44, 2130837988, 2131429289, "");
      localTabModel1.setContent(paramContext.getString(2131429933));
      paramList.add(localTabModel1);
    }
    if ((gw.c()) || (gw.b()))
    {
      TabModel localTabModel2 = new TabModel(43, 2130837993, 2131428139, "");
      localTabModel2.setContent(paramContext.getString(2131429932));
      paramList.add(localTabModel2);
    }
    TabModel localTabModel3;
    if (localho.dl())
    {
      localTabModel3 = new TabModel(45, 2130837951, 2131427991, 2131429935, QQPimApplication.a().getResources().getDrawable(2130837977));
      paramList.add(localTabModel3);
      if (localho.dQ())
        break label528;
    }
    label528: for (TabModel localTabModel4 = new TabModel(47, 2130837956, 2131430311, 2131430312, QQPimApplication.a().getResources().getDrawable(2130837977)); ; localTabModel4 = new TabModel(47, 2130837956, 2131430311, 2131430312))
    {
      paramList.add(localTabModel4);
      if (SDKUtil.getSDKVersion() < 14)
      {
        TabModel localTabModel5 = new TabModel(14, 2130837987, 2131429486, "");
        localTabModel5.setContent(paramContext.getString(2131427490));
        paramList.add(localTabModel5);
      }
      TabModel localTabModel6 = new TabModel(41, 2130837997, 2131427990, "");
      localTabModel6.setContent(paramContext.getString(2131429934));
      paramList.add(localTabModel6);
      TabModel localTabModel7 = new TabModel(42, 2130837991, 2131427989, "");
      localTabModel7.setContent(paramContext.getString(2131429931));
      paramList.add(localTabModel7);
      TabModel localTabModel8 = new TabModel(11, 2130837981, 2131427454, "");
      localTabModel8.setContent(paramContext.getString(2131427493));
      paramList.add(localTabModel8);
      if (!di.b().b())
      {
        TabModel localTabModel9 = new TabModel(13, 2130837964, 2131427471, "");
        localTabModel9.setContent(paramContext.getString(2131427491));
        paramList.add(localTabModel9);
      }
      paramList.add(new TabModel(1002, 2130837961, 2131428257, 2131428258));
      if (qx.a().j())
      {
        TabModel localTabModel10 = new TabModel(1001, 2130837998, 2131428252, "");
        localTabModel10.setContent(paramContext.getString(2131428253));
        paramList.add(localTabModel10);
      }
      TabModel localTabModel11 = new TabModel(12, 2130837959, 2131429208, "");
      localTabModel11.setContent(paramContext.getString(2131427498));
      paramList.add(localTabModel11);
      return;
      localTabModel3 = new TabModel(45, 2130837951, 2131427991, "");
      localTabModel3.setContent(paramContext.getString(2131429935));
      break;
    }
  }

  private static void createFileSaveMainTabList(Context paramContext, List<TabModel> paramList)
  {
    TabModel localTabModel1 = new TabModel(36, 2130837979, 2131429829, "");
    localTabModel1.setContent("");
    paramList.add(localTabModel1);
    TabModel localTabModel2 = new TabModel(37, 2130837969, 2131429830, "");
    localTabModel2.setContent("");
    paramList.add(localTabModel2);
    TabModel localTabModel3 = new TabModel(40, 2130837962, 2131429833, "");
    localTabModel3.setContent("");
    paramList.add(localTabModel3);
  }

  private static void createFileSaveSetTabList(Context paramContext, List<TabModel> paramList)
  {
    TabModel localTabModel1 = new TabModel(34, 2130837981, 2131429836, "");
    localTabModel1.setContent("");
    paramList.add(localTabModel1);
    TabModel localTabModel2 = new TabModel(35, 2130837981, 2131429888, "");
    localTabModel2.setContent("");
    paramList.add(localTabModel2);
  }

  private static void createMainPageTabList(Context paramContext, List<TabModel> paramList)
  {
    if ((gw.d()) || (gw.e()) || (gw.c()))
      paramList.add(new TabModel(22, 2130837785, 2131428000, ""));//主页流量监控项
    if (!isHD)
      paramList.add(new TabModel(23, 2130837784, 2131427982, ""));
    TabModel localTabModel1 = new TabModel(24, 2130837782, 2131428138, "");
    paramList.add(localTabModel1);
    if (isHD)
    {
      paramList.add(new TabModel(26, 2130837952, 2131428006, ""));
      paramList.add(new TabModel(27, 2130837970, 2131427878, ""));
      paramList.add(new TabModel(28, 2130837992, 2131427983, ""));
      paramList.add(new TabModel(29, 2130837983, 2131427958, ""));
      TabModel localTabModel3 = new TabModel(30, 2130837989, 2131427987, "");
      localTabModel3.setShowFooterLine(false);
      paramList.add(localTabModel3);
    }
    while (true)
    {
      return;
      if ((gw.d()) || (gw.e()))
      {
        TabModel localTabModel2 = new TabModel(49, 2130837783, 2131427440, "");
        paramList.add(localTabModel2);
        localTabModel2.setShowFooterLine(false);
      }
      else
      {
        localTabModel1.setShowFooterLine(false);
      }
    }
  }

  private static void createNetworkManagerTabList(List<TabModel> paramList)
  {
    paramList.add(new TabModel(9, 2130837970, 2131427745, ""));
  }

  private static void createPermissionTabList(Context paramContext, List<TabModel> paramList)
  {
    ho localho = ho.a();
    String str = localho.bb();
    paramList.add(new TabModel(8, bjo.a[localho.bc()], str, ""));
    paramList.add(new TabModel(33, 2130837986, 2131429813, ""));
    paramList.add(new TabModel(48, 2130837968, 2131429944, 2131429957));
    paramList.add(new TabModel(7, 2130837818, 2131427958, ""));
  }

  private static void createPickproofTabList(Context paramContext, List<TabModel> paramList)
  {
    paramList.add(new TabModel(18, 2130837827, 2131429409, paramContext.getString(2131429419)));
    paramList.add(new TabModel(19, 2130837829, 2131429410, paramContext.getString(2131429420)));
    paramList.add(new TabModel(20, 2130837828, 2131429411, paramContext.getString(2131429421)));
    paramList.add(new TabModel(21, 2130837830, 2131429412, paramContext.getString(2131429422)));
  }

  private static void createSoftwareCenterTabList(List<TabModel> paramList)
  {
    if (!di.b().n())
      paramList.add(new TabModel(10, 2130837974, 2131429568, ""));
    paramList.add(new TabModel(0, 2130837973, 2131429569, ""));
    paramList.add(new TabModel(1, 2130837971, 2131427694, ""));
    paramList.add(new TabModel(2, 2130837972, 2131427513, ""));
  }

  private static void createSystemOptimizeTabList(List<TabModel> paramList)
  {
    paramList.add(new TabModel(15, 2130837995, 2131429731, ""));
    paramList.add(new TabModel(16, 2130837996, 2131428001, ""));
    paramList.add(new TabModel(17, 2130837957, 2131428002, ""));
    paramList.add(new TabModel(46, 2130837960, 2131428003, ""));
  }

  public static ArrayList<TabModel> createTabListById(Context paramContext, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    switch (paramInt)
    {
    case 1:
    default:
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8://创建主页4ITEM
    case 9:
    case 10:
    }
    while (true)
    {
      return localArrayList;
      createSoftwareCenterTabList(localArrayList);
      continue;
      createPermissionTabList(paramContext, localArrayList);
      continue;
      createNetworkManagerTabList(localArrayList);
      continue;
      createCommonToolsTabList(paramContext, localArrayList);
      continue;
      createSystemOptimizeTabList(localArrayList);
      continue;
      createVirusManagerTabList(localArrayList);
      continue;
      createPickproofTabList(paramContext, localArrayList);
      continue;
      createMainPageTabList(paramContext, localArrayList);//创建主页4ITEM
      continue;
      createFileSaveMainTabList(paramContext, localArrayList);
      continue;
      createFileSaveSetTabList(paramContext, localArrayList);
    }
  }

  public static View createTabView(Context paramContext, TabModel paramTabModel, int paramInt1, int paramInt2)
  {
    int i = 2130838329;
    FrameLayout localFrameLayout = (FrameLayout)LayoutInflater.from(paramContext).inflate(2130903112, null);
    localFrameLayout.setId(paramTabModel.getID());
    localFrameLayout.setTag(paramTabModel);
    TextView localTextView1 = (TextView)localFrameLayout.findViewById(2131230886);
    localTextView1.setText(paramTabModel.getTitle());
    TextView localTextView2 = (TextView)localFrameLayout.findViewById(2131230885);
    localTextView2.setText(paramTabModel.getTitle());
    switch (paramInt2)
    {
    default:
      if (paramInt1 != 0)
        break;
    case 0:
    case 1:
    }
    while (true)
    {
      localFrameLayout.setBackgroundResource(i);
      while (true)
      {
        return localFrameLayout;
        if (paramInt1 == 0);
        for (int j = i; ; j = 2130838332)
        {
          localFrameLayout.setBackgroundResource(j);
          break;
        }
        localTextView2.setTextSize(18.0F);
        localTextView2.setTextColor(paramContext.getResources().getColor(2131296397));
        localTextView1.setTextSize(18.0F);
        localTextView1.setTextColor(paramContext.getResources().getColor(2131296410));
      }
      i = 2130838332;
    }
  }

  private static void createVirusManagerTabList(List<TabModel> paramList)
  {
    paramList.add(new TabModel(45, 2130837953, 2131428009, 2131428090));
    paramList.add(new TabModel(46, 2130837954, 2131428017, 2131427693));
    if (jk.a == new jk(QQPimApplication.a()).a());
    for (TabModel localTabModel = new TabModel(47, 2130837965, 2131428020, 2131428091, QQPimApplication.a().getResources().getDrawable(2130837977)); ; localTabModel = new TabModel(47, 2130837965, 2131428020, 2131428091))
    {
      paramList.add(localTabModel);
      return;
    }
  }

  public static void setTabStyle(Context paramContext, View paramView, boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      ((TextView)paramView.findViewById(2131230886)).setTextColor(paramContext.getResources().getColor(2131296398));
      ((TextView)paramView.findViewById(2131230885)).setTextColor(paramContext.getResources().getColor(2131296399));
    }
    while (true)
    {
      return;
      ((TextView)paramView.findViewById(2131230886)).setTextColor(paramContext.getResources().getColor(2131296400));
      ((TextView)paramView.findViewById(2131230885)).setTextColor(paramContext.getResources().getColor(2131296399));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.TabFactory
 * JD-Core Version:    0.6.2
 */