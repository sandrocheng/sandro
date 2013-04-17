package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.desktop.DesktopView;
import com.tencent.qqpimsecure.uilib.view.desktop.DesktopView.PositionListener;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.plugin.PluginEntity;
import com.tencent.tmsecure.module.plugin.PluginManager;
import di;
import gw;
import ho;
import is;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kk;
import nd;
import np;

public class DesktopAdapter extends BaseAdapter
  implements DesktopView.PositionListener
{
  public static final int DATA_TYPE_BOTTOM_GRIDVIEW = 1;
  public static final int DATA_TYPE_TOP_GRIDVIEW = 0;
  public static final int FUNCTION_BATTERY_SAVE = 16;
  public static final int FUNCTION_BOOT_OPTIMIZE = 1;
  public static final int FUNCTION_CHARGEBACK_SCAN = 6;
  public static final int FUNCTION_COMMON_UTILS = 17;
  public static final int FUNCTION_DATA_CLEAR = 5;
  public static final int FUNCTION_IP_CALL = 10;
  public static final int FUNCTION_MARKET = 4;
  public static final int FUNCTION_MY_SOFTWARE = 3;
  public static final int FUNCTION_NUMBER_QUERY = 9;
  public static final int FUNCTION_PACKAGE_MANAGER = 2;
  public static final int FUNCTION_PHONE_TOKEN = 7;
  public static final int FUNCTION_PICKPROOF = 15;
  public static final int FUNCTION_PLUGIN_TYPE = 30;
  public static final int FUNCTION_PRIVATE_PROTECT = 11;
  public static final int FUNCTION_SCREEN_SHOT = 18;
  public static final int FUNCTION_SECURE_SPACE = 8;
  public static final int FUNCTION_SYNC_ASSISTANTS = 13;
  public static final int FUNCTION_SYSTEM_SETTING = 12;
  public static final int FUNCTION_VIRUS_SCAN = 0;
  public static final int FUNCTION_WAP_MONITOR = 14;
  private int IconId = 0;
  private ho mConfigDao;
  private Context mContext;
  private List<FunctionModel> mDataList = new ArrayList();
  private int mDataType = -1;
  private DesktopView mDesktopView;
  private int mFocusPosition = -1;
  private List<PluginEntity> mPluginEntityList = null;
  private PluginManager mPluginManager;
  private kk mToolBoxDao;
  private String secureSpaceName = "";

  public DesktopAdapter(Context paramContext, DesktopView paramDesktopView, int paramInt)
  {
    this.mDesktopView = paramDesktopView;
    this.mContext = paramContext;
    this.mDataType = paramInt;
    this.mPluginManager = ((PluginManager)ManagerCreator.getManager(PluginManager.class));
    this.mToolBoxDao = new kk(QQPimApplication.a());
    this.mConfigDao = ho.a();
    refreshDataList();
  }

  private void addDataList(int paramInt)
  {
    switch (paramInt)
    {
    case 12:
    default:
    case 0:
    case 3:
    case 4:
    case 5:
    case 1:
    case 8:
    case 11:
    case 2:
    case 7:
    case 6:
    case 10:
    case 9:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    }
    while (true)
    {
      return;
      try
      {
        this.mDataList.add(new FunctionModel(0, 2131428006, 2130837952));
        continue;
      }
      finally
      {
      }
      this.mDataList.add(new FunctionModel(3, 2131427878, 2130837970));
      continue;
      this.mDataList.add(new FunctionModel(4, 2131427983, 2130837992));
      continue;
      this.mDataList.add(new FunctionModel(5, 2131428002, 2130837995));
      continue;
      this.mDataList.add(new FunctionModel(1, 2131428001, 2130837996));
      continue;
      this.mDataList.add(new FunctionModel(8, this.mConfigDao.bb(), this.mContext.getResources().getDrawable(bjo.a[this.mConfigDao.bc()])));
      continue;
      this.mDataList.add(new FunctionModel(11, 2131427993, 2130837983));
      continue;
      this.mDataList.add(new FunctionModel(2, 2131427694, 2130837978));
      continue;
      this.mDataList.add(new FunctionModel(7, 2131427990, 2130837997));
      continue;
      this.mDataList.add(new FunctionModel(6, 2131427989, 2130837991));
      continue;
      this.mDataList.add(new FunctionModel(10, 2131427471, 2130837964));
      continue;
      this.mDataList.add(new FunctionModel(9, 2131429208, 2130837959));
      continue;
      this.mDataList.add(new FunctionModel(13, 2131428139, 2130837993));
      continue;
      this.mDataList.add(new FunctionModel(14, 2131428000, 2130837975));
      continue;
      this.mDataList.add(new FunctionModel(15, 2131429289, 2130837988));
      continue;
      this.mDataList.add(new FunctionModel(16, 2131429287, 2130837955));
      continue;
      this.mDataList.add(new FunctionModel(17, 2131427992, 2130837959));
      continue;
      this.mDataList.add(new FunctionModel(18, 2131429486, 2130837987));
    }
  }

  // ERROR //
  private void addPlugin(int paramInt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: iload_1
    //   5: bipush 30
    //   7: if_icmpge +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: aload_0
    //   14: getfield 91	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:mPluginEntityList	Ljava/util/List;
    //   17: ifnonnull +21 -> 38
    //   20: aload_0
    //   21: aload_0
    //   22: getfield 105	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:mPluginManager	Lcom/tencent/tmsecure/module/plugin/PluginManager;
    //   25: invokevirtual 209	com/tencent/tmsecure/module/plugin/PluginManager:getAllPlugins	()Ljava/util/List;
    //   28: putfield 91	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:mPluginEntityList	Ljava/util/List;
    //   31: aload_0
    //   32: getfield 91	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:mPluginEntityList	Ljava/util/List;
    //   35: ifnull -25 -> 10
    //   38: aload_0
    //   39: getfield 118	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:mToolBoxDao	Lkk;
    //   42: getfield 212	kk:a	Landroid/content/SharedPreferences;
    //   45: ldc 214
    //   47: ldc 85
    //   49: invokeinterface 220 3 0
    //   54: astore 5
    //   56: aload 5
    //   58: ldc 85
    //   60: invokevirtual 225	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   63: ifne +196 -> 259
    //   66: aload 5
    //   68: ldc 227
    //   70: invokevirtual 231	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   73: astore 13
    //   75: aload 13
    //   77: arraylength
    //   78: istore 14
    //   80: iload_2
    //   81: iload 14
    //   83: if_icmpge +176 -> 259
    //   86: aload 13
    //   88: iload_2
    //   89: aaload
    //   90: ldc 233
    //   92: invokevirtual 231	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   95: astore 15
    //   97: aload 15
    //   99: iconst_0
    //   100: aaload
    //   101: invokestatic 239	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   104: iload_1
    //   105: if_icmpne +148 -> 253
    //   108: aload 15
    //   110: iconst_1
    //   111: aaload
    //   112: invokestatic 239	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   115: istore 6
    //   117: iload 6
    //   119: iconst_m1
    //   120: if_icmpeq -110 -> 10
    //   123: ldc 241
    //   125: invokestatic 103	com/tencent/tmsecure/common/ManagerCreator:getManager	(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;
    //   128: checkcast 241	com/tencent/tmsecure/module/software/SoftwareManager
    //   131: astore 7
    //   133: aload_0
    //   134: getfield 91	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:mPluginEntityList	Ljava/util/List;
    //   137: invokeinterface 245 1 0
    //   142: astore 8
    //   144: aload 8
    //   146: invokeinterface 251 1 0
    //   151: ifeq -141 -> 10
    //   154: aload 8
    //   156: invokeinterface 255 1 0
    //   161: checkcast 257	com/tencent/tmsecure/module/plugin/PluginEntity
    //   164: astore 9
    //   166: aload 9
    //   168: invokevirtual 260	com/tencent/tmsecure/module/plugin/PluginEntity:getKey	()I
    //   171: iload 6
    //   173: if_icmpne -29 -> 144
    //   176: aload_0
    //   177: aload 9
    //   179: invokevirtual 260	com/tencent/tmsecure/module/plugin/PluginEntity:getKey	()I
    //   182: invokespecial 264	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:isPluginAdd	(I)Z
    //   185: ifne -41 -> 144
    //   188: aload 7
    //   190: aload 9
    //   192: getfield 267	com/tencent/tmsecure/module/plugin/PluginEntity:mPluginFilePath	Ljava/lang/String;
    //   195: iconst_4
    //   196: invokevirtual 271	com/tencent/tmsecure/module/software/SoftwareManager:getApkInfo	(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;
    //   199: astore 10
    //   201: aload 10
    //   203: ifnull -193 -> 10
    //   206: aload 10
    //   208: invokevirtual 277	com/tencent/tmsecure/module/software/AppEntity:getIcon	()Landroid/graphics/drawable/Drawable;
    //   211: astore 11
    //   213: aload 11
    //   215: ifnull -205 -> 10
    //   218: aload_0
    //   219: getfield 81	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter:mDataList	Ljava/util/List;
    //   222: new 132	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel
    //   225: dup
    //   226: iload_1
    //   227: aload 9
    //   229: getfield 280	com/tencent/tmsecure/module/plugin/PluginEntity:mPluginName	Ljava/lang/String;
    //   232: aload 11
    //   234: iload 6
    //   236: invokespecial 283	com/tencent/qqpimsecure/uilib/ui/adapter/DesktopAdapter$FunctionModel:<init>	(ILjava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    //   239: invokeinterface 143 2 0
    //   244: pop
    //   245: goto -101 -> 144
    //   248: astore 4
    //   250: goto -240 -> 10
    //   253: iinc 2 1
    //   256: goto -176 -> 80
    //   259: iconst_m1
    //   260: istore 6
    //   262: goto -145 -> 117
    //   265: astore_3
    //   266: aload_0
    //   267: monitorexit
    //   268: aload_3
    //   269: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   13	245	248	java/lang/Exception
    //   13	245	265	finally
  }

  private boolean isPluginAdd(int paramInt)
  {
    Iterator localIterator = this.mDataList.iterator();
    do
      if (!localIterator.hasNext())
        break;
    while (((FunctionModel)localIterator.next()).getPluginKey() != paramInt);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getCount()
  {
    return this.mDataList.size();
  }

  public List<FunctionModel> getDataList()
  {
    return this.mDataList;
  }

  public int getFocusPosition()
  {
    return this.mFocusPosition;
  }

  public Object getItem(int paramInt)
  {
    return this.mDataList.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public FunctionModel getModelById(int paramInt)
  {
    Iterator localIterator = this.mDataList.iterator();
    FunctionModel localFunctionModel;
    do
    {
      if (!localIterator.hasNext())
        break;
      localFunctionModel = (FunctionModel)localIterator.next();
    }
    while (localFunctionModel.getId() != paramInt);
    while (true)
    {
      return localFunctionModel;
      localFunctionModel = null;
    }
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.mDataList.size() <= 0)
    {
      paramView = null;
      return paramView;
    }
    FunctionHolder localFunctionHolder1;
    label181: FunctionModel localFunctionModel;
    if (paramView == null)
    {
      View localView = LayoutInflater.from(this.mContext).inflate(2130903100, null);
      FunctionHolder localFunctionHolder2 = new FunctionHolder();
      localFunctionHolder2.mItemLayout = ((LinearLayout)localView);
      localFunctionHolder2.mFunctionImage = ((ImageView)localView.findViewById(2131230869));
      localFunctionHolder2.mFunctionText = ((TextView)localView.findViewById(2131230748));
      localFunctionHolder2.mFunctionMessageText = ((TextView)localView.findViewById(2131230871));
      localFunctionHolder2.mTempLayout = ((FrameLayout)localView.findViewById(2131230867));
      localFunctionHolder2.mFunctionNewImage = ((ImageView)localView.findViewById(2131230855));
      localFunctionHolder2.mCenterLayout = ((LinearLayout)localView.findViewById(2131230868));
      localFunctionHolder2.mMessageLayout = ((LinearLayout)localView.findViewById(2131230870));
      localView.setTag(localFunctionHolder2);
      paramView = localView;
      localFunctionHolder1 = localFunctionHolder2;
      if (paramInt >= this.mDataList.size())
        break label461;
      localFunctionModel = (FunctionModel)this.mDataList.get(paramInt);
      if (localFunctionModel.getId() == 8)
      {
        this.secureSpaceName = this.mConfigDao.bb();
        this.IconId = bjo.a[this.mConfigDao.bc()];
        localFunctionModel.setImageResId(this.mContext.getResources().getDrawable(this.IconId));
        localFunctionModel.setTextResId(this.secureSpaceName);
      }
      localFunctionHolder1.mFunctionText.setText(localFunctionModel.getTextResId());
      localFunctionHolder1.mFunctionImage.setImageDrawable(localFunctionModel.getImageResId());
      if (gw.e())
      {
        paramView.setMinimumHeight(gw.d);
        localFunctionHolder1.mMessageLayout.setPadding(0, 10, 10, 0);
      }
      if (localFunctionModel.getNumber() <= 0)
        break label492;
      if (localFunctionModel.getNumber() <= 99)
        break label463;
      localFunctionHolder1.mFunctionMessageText.setText("99+");
      label355: localFunctionHolder1.mFunctionMessageText.setVisibility(0);
      label364: if ((!localFunctionModel.isNew()) || (this.mToolBoxDao.a.getInt("open_nine_box_count", 0) > 5))
        break label516;
      localFunctionHolder1.mFunctionNewImage.setImageResource(2130837976);
      localFunctionHolder1.mFunctionNewImage.setVisibility(0);
      label412: if (paramInt != this.mDesktopView.getLastSelectedIndex())
        break label633;
      localFunctionHolder1.mTempLayout.setVisibility(4);
    }
    while (true)
    {
      localFunctionHolder1.mTempLayout.setTag(Integer.valueOf(localFunctionModel.getId()));
      break;
      localFunctionHolder1 = (FunctionHolder)paramView.getTag();
      break label181;
      label461: break;
      label463: localFunctionHolder1.mFunctionMessageText.setText(localFunctionModel.getNumber());
      break label355;
      label492: localFunctionHolder1.mFunctionMessageText.setText("0");
      localFunctionHolder1.mFunctionMessageText.setVisibility(8);
      break label364;
      label516: if ((localFunctionModel.isHot()) && (this.mToolBoxDao.a.getInt("open_nine_box_count", 0) <= 5))
      {
        localFunctionHolder1.mFunctionNewImage.setImageResource(2130837963);
        localFunctionHolder1.mFunctionNewImage.setVisibility(0);
        break label412;
      }
      if ((localFunctionModel.getId() == 4) && (is.a(QQPimApplication.a()).b.getBoolean("has_not_see_wek", false)))
      {
        localFunctionHolder1.mFunctionNewImage.setImageResource(2130838192);
        localFunctionHolder1.mFunctionNewImage.setVisibility(0);
        break label412;
      }
      localFunctionHolder1.mFunctionNewImage.setVisibility(8);
      break label412;
      label633: localFunctionHolder1.mTempLayout.setVisibility(0);
    }
  }

  public void notifyDataSetChanged()
  {
    try
    {
      synchronized (this.mDataList)
      {
        super.notifyDataSetChanged();
        return;
      }
    }
    finally
    {
    }
  }

  public void positionChange(int paramInt1, int paramInt2)
  {
    ArrayList localArrayList;
    synchronized (this.mDataList)
    {
      FunctionModel localFunctionModel = (FunctionModel)this.mDataList.remove(paramInt1);
      this.mDataList.add(paramInt2, localFunctionModel);
      localArrayList = new ArrayList();
      Iterator localIterator = this.mDataList.iterator();
      if (localIterator.hasNext())
        localArrayList.add(Integer.valueOf(((FunctionModel)localIterator.next()).getId()));
    }
    if (this.mDataType == 0)
      this.mToolBoxDao.a(localArrayList);
    while (true)
    {
      nd.a().a(26215);
      return;
      this.mToolBoxDao.b(localArrayList);
    }
  }

  public void refreshDataList()
  {
    while (true)
    {
      String str;
      try
      {
        this.mDataList.clear();
        switch (this.mDataType)
        {
        default:
          di.b().a(this.mDataList);
          return;
        case 0:
          kk localkk = this.mToolBoxDao;
          str = "";
          if ((!di.b().a()) && (!localkk.a()))
            break label240;
          str = "";
          if (gw.b())
          {
            str = "0;11;3;4";
            if (localkk.a(true))
              localkk.b.putString("tool_box_top_index", str).commit();
            Iterator localIterator2 = kk.a(localkk.a.getString("tool_box_top_index", str)).iterator();
            if (!localIterator2.hasNext())
              continue;
            Integer localInteger2 = (Integer)localIterator2.next();
            addDataList(localInteger2.intValue());
            addPlugin(localInteger2.intValue());
            continue;
          }
          break;
        case 1:
        }
      }
      finally
      {
      }
      if (gw.c())
        str = "0;11;3;4";
      else if ((gw.d()) || (gw.e()))
        if (di.b().o())
        {
          str = di.b().p();
          continue;
          label240: if (gw.b())
          {
            str = "0;11;3;14";
          }
          else if (gw.c())
          {
            str = "0;11;3;15";
          }
          else if (!gw.d())
          {
            if (!gw.e())
              continue;
            break label342;
            Iterator localIterator1 = this.mToolBoxDao.b().iterator();
            while (localIterator1.hasNext())
            {
              Integer localInteger1 = (Integer)localIterator1.next();
              addDataList(localInteger1.intValue());
              addPlugin(localInteger1.intValue());
            }
          }
        }
        else
        {
          str = "16;11;3;4";
          continue;
          label342: str = "16;11;3;15";
        }
    }
  }

  public void setDataList(List<FunctionModel> paramList)
  {
    this.mDataList = paramList;
  }

  public void setFocusPosition(int paramInt)
  {
    this.mFocusPosition = paramInt;
  }

  public void setPluginEntityList(List<PluginEntity> paramList)
  {
    this.mPluginEntityList = paramList;
  }

  public static class FunctionHolder
  {
    public LinearLayout mCenterLayout;
    public ImageView mFunctionImage;
    public TextView mFunctionMessageText;
    public ImageView mFunctionNewImage;
    public TextView mFunctionText;
    public LinearLayout mItemLayout;
    public LinearLayout mMessageLayout;
    public FrameLayout mTempLayout;
  }

  public static class FunctionModel
  {
    private Drawable mDrawable;
    private boolean mHot;
    private int mId;
    private boolean mNew;
    private int mNumber;
    private int mPluginKey;
    private String mText;

    public FunctionModel(int paramInt)
    {
      this.mId = paramInt;
    }

    public FunctionModel(int paramInt1, int paramInt2, int paramInt3)
    {
      this.mId = paramInt1;
      this.mText = QQPimApplication.a().getString(paramInt2);
      this.mDrawable = QQPimApplication.a().getResources().getDrawable(paramInt3);
    }

    public FunctionModel(int paramInt, String paramString, Drawable paramDrawable)
    {
      this.mId = paramInt;
      this.mText = paramString;
      this.mDrawable = paramDrawable;
    }

    public FunctionModel(int paramInt1, String paramString, Drawable paramDrawable, int paramInt2)
    {
      this.mId = paramInt1;
      this.mText = paramString;
      this.mDrawable = paramDrawable;
      this.mPluginKey = paramInt2;
    }

    public boolean equals(Object paramObject)
    {
      boolean bool;
      if (paramObject != null)
        if (((FunctionModel)paramObject).getId() == this.mId)
          bool = true;
      while (true)
      {
        return bool;
        bool = false;
        continue;
        bool = super.equals(paramObject);
      }
    }

    public int getId()
    {
      return this.mId;
    }

    public Drawable getImageResId()
    {
      return this.mDrawable;
    }

    public int getNumber()
    {
      return this.mNumber;
    }

    public int getPluginKey()
    {
      return this.mPluginKey;
    }

    public String getTextResId()
    {
      return this.mText;
    }

    public boolean isHot()
    {
      return this.mHot;
    }

    public boolean isNew()
    {
      return this.mNew;
    }

    public void setHot(boolean paramBoolean)
    {
      this.mHot = paramBoolean;
    }

    public void setId(int paramInt)
    {
      this.mId = paramInt;
    }

    public void setImageResId(Drawable paramDrawable)
    {
      this.mDrawable = paramDrawable;
    }

    public void setNew(boolean paramBoolean)
    {
      this.mNew = paramBoolean;
    }

    public void setNumber(int paramInt)
    {
      this.mNumber = paramInt;
    }

    public void setPluginKey(int paramInt)
    {
      this.mPluginKey = paramInt;
    }

    public void setTextResId(String paramString)
    {
      this.mText = paramString;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter
 * JD-Core Version:    0.6.2
 */