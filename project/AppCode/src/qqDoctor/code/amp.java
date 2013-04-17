import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.LocationManager;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.List;

public final class amp extends BaseListView
{
  private List a = new ArrayList();
  private OperatingModel b;
  private OperatingModel c;
  private int d;
  private boolean e = true;
  private boolean f = false;
  private sy g;
  private LocationManager h;
  private jp i;
  private hi j;
  private ki k;
  private jm l;
  private boolean m;
  private boolean n;

  public amp(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.d = paramInt;
  }

  private int a()
  {
    List localList = this.mDataList;
    int i1 = 0;
    if (localList != null)
    {
      int i2 = this.mDataList.size();
      i1 = 0;
      if (i2 > 0)
      {
        int i3 = 0;
        int i4 = 0;
        while (i3 < this.mDataList.size())
        {
          if (((le)this.mDataList.get(i3)).d)
            i4++;
          i3++;
        }
        i1 = i4;
      }
    }
    return i1;
  }

  private String a(String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if ((paramString2 != null) && (paramString2.length() < 3));
    for (String str1 = null; ; str1 = paramString2)
    {
      if ((paramString1 != null) && (paramString1.length() > 0))
      {
        localStringBuffer.append(paramString1);
        if (str1 != null)
        {
          String str3 = this.h.getLocation(str1);
          if (str3.length() > 0)
            localStringBuffer.append("(" + str3 + ")");
        }
        return localStringBuffer.toString();
      }
      if (str1 == null);
      for (String str2 = this.mContext.getResources().getString(2131428361); ; str2 = str1)
      {
        localStringBuffer.append(str2);
        break;
      }
    }
  }

  private void a(int paramInt, List<Integer> paramList, Handler paramHandler)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131427340);
      localDialog.setMessage(2131427852);
      localDialog.setPositiveButton(2131427397, new amq(this, paramInt, paramList, paramHandler, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new amr(localDialog), 2);
      localDialog.show();
    }
    while (true)
    {
      return;
      ha.a(this.mContext, 2131428589);
    }
  }

  private List<Integer> b()
  {
    ArrayList localArrayList = new ArrayList();
    if ((this.mDataList != null) && (this.mDataList.size() > 0))
      for (int i1 = 0; i1 < this.mDataList.size(); i1++)
        if (((le)this.mDataList.get(i1)).d)
          localArrayList.add(Integer.valueOf(i1));
    return localArrayList;
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new ahw(localContext, localArrayList, false);
  }

  public final List createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    switch (this.d)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      localArrayList.add(this.b);
      this.c = new OperatingModel(1002, 2131428653);
      this.c.setStyle(0);
      if ((this.d == 4) || (this.d == 3))
        this.c.setVisible(8);
      localArrayList.add(this.c);
      return localArrayList;
      this.b = new OperatingModel(1000, 2131427377);
      continue;
      this.b = new OperatingModel(1001, 2131427411);
    }
  }

  // ERROR //
  public final void loadDataList()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 209	amp:m	Z
    //   4: ifne +16 -> 20
    //   7: aload_0
    //   8: getfield 46	amp:d	I
    //   11: iconst_3
    //   12: if_icmpne +8 -> 20
    //   15: aload_0
    //   16: iconst_1
    //   17: putfield 211	amp:n	Z
    //   20: aload_0
    //   21: getfield 209	amp:m	Z
    //   24: ifne +10 -> 34
    //   27: aload_0
    //   28: getfield 211	amp:n	Z
    //   31: ifne +61 -> 92
    //   34: aload_0
    //   35: getfield 50	amp:mDataList	Ljava/util/List;
    //   38: invokeinterface 214 1 0
    //   43: aload_0
    //   44: getfield 46	amp:d	I
    //   47: tableswitch	default:+33 -> 80, 0:+56->103, 1:+188->235, 2:+188->235, 3:+312->359, 4:+56->103
    //   81: getfield 209	amp:m	Z
    //   84: ifeq +8 -> 92
    //   87: aload_0
    //   88: iconst_0
    //   89: putfield 209	amp:m	Z
    //   92: aload_0
    //   93: getfield 218	amp:mHandler	Landroid/os/Handler;
    //   96: bipush 254
    //   98: invokevirtual 224	android/os/Handler:sendEmptyMessage	(I)Z
    //   101: pop
    //   102: return
    //   103: aload_0
    //   104: aload_0
    //   105: getfield 226	amp:i	Ljp;
    //   108: invokevirtual 230	jp:a	()Ljava/util/List;
    //   111: putfield 40	amp:a	Ljava/util/List;
    //   114: aload_0
    //   115: getfield 40	amp:a	Ljava/util/List;
    //   118: ifnull -38 -> 80
    //   121: aload_0
    //   122: getfield 40	amp:a	Ljava/util/List;
    //   125: invokeinterface 55 1 0
    //   130: ifle -50 -> 80
    //   133: iconst_0
    //   134: istore 16
    //   136: iload 16
    //   138: aload_0
    //   139: getfield 40	amp:a	Ljava/util/List;
    //   142: invokeinterface 55 1 0
    //   147: if_icmpge -67 -> 80
    //   150: aload_0
    //   151: getfield 40	amp:a	Ljava/util/List;
    //   154: iload 16
    //   156: invokeinterface 59 2 0
    //   161: checkcast 232	mk
    //   164: astore 17
    //   166: aload 17
    //   168: getfield 235	mk:id	I
    //   171: pop
    //   172: new 61	le
    //   175: dup
    //   176: aload_0
    //   177: aload 17
    //   179: getfield 239	mk:name	Ljava/lang/String;
    //   182: aload 17
    //   184: invokevirtual 241	mk:a	()Ljava/lang/String;
    //   187: invokespecial 243	amp:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   190: aload 17
    //   192: getfield 247	mk:date	J
    //   195: invokestatic 251	a:a	(J)Ljava/lang/String;
    //   198: aload 17
    //   200: getfield 254	mk:body	Ljava/lang/String;
    //   203: aload_0
    //   204: getfield 256	amp:l	Ljm;
    //   207: aload 17
    //   209: invokevirtual 261	jm:a	(Lmk;)Z
    //   212: invokespecial 264	le:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    //   215: astore 19
    //   217: aload_0
    //   218: getfield 50	amp:mDataList	Ljava/util/List;
    //   221: aload 19
    //   223: invokeinterface 170 2 0
    //   228: pop
    //   229: iinc 16 1
    //   232: goto -96 -> 136
    //   235: aload_0
    //   236: aload_0
    //   237: getfield 266	amp:j	Lhi;
    //   240: invokevirtual 270	hi:b	()Ljava/util/List;
    //   243: putfield 40	amp:a	Ljava/util/List;
    //   246: aload_0
    //   247: getfield 40	amp:a	Ljava/util/List;
    //   250: ifnull -170 -> 80
    //   253: aload_0
    //   254: getfield 40	amp:a	Ljava/util/List;
    //   257: invokeinterface 55 1 0
    //   262: ifle -182 -> 80
    //   265: iconst_0
    //   266: istore 11
    //   268: iload 11
    //   270: aload_0
    //   271: getfield 40	amp:a	Ljava/util/List;
    //   274: invokeinterface 55 1 0
    //   279: if_icmpge -199 -> 80
    //   282: aload_0
    //   283: getfield 40	amp:a	Ljava/util/List;
    //   286: iload 11
    //   288: invokeinterface 59 2 0
    //   293: checkcast 272	ky
    //   296: astore 12
    //   298: aload 12
    //   300: getfield 273	ky:id	I
    //   303: pop
    //   304: new 61	le
    //   307: dup
    //   308: aload_0
    //   309: aload 12
    //   311: getfield 274	ky:name	Ljava/lang/String;
    //   314: aload 12
    //   316: getfield 277	ky:phonenum	Ljava/lang/String;
    //   319: invokespecial 243	amp:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   322: aload 12
    //   324: getfield 278	ky:date	J
    //   327: invokestatic 251	a:a	(J)Ljava/lang/String;
    //   330: aload 12
    //   332: getfield 277	ky:phonenum	Ljava/lang/String;
    //   335: iconst_0
    //   336: invokespecial 264	le:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    //   339: astore 14
    //   341: aload_0
    //   342: getfield 50	amp:mDataList	Ljava/util/List;
    //   345: aload 14
    //   347: invokeinterface 170 2 0
    //   352: pop
    //   353: iinc 11 1
    //   356: goto -88 -> 268
    //   359: aload_0
    //   360: aload_0
    //   361: getfield 280	amp:k	Lki;
    //   364: iconst_1
    //   365: invokevirtual 285	ki:c	(I)Ljava/util/List;
    //   368: putfield 40	amp:a	Ljava/util/List;
    //   371: aload_0
    //   372: getfield 40	amp:a	Ljava/util/List;
    //   375: ifnull -295 -> 80
    //   378: aload_0
    //   379: getfield 40	amp:a	Ljava/util/List;
    //   382: invokeinterface 55 1 0
    //   387: ifle -307 -> 80
    //   390: aload_0
    //   391: getfield 50	amp:mDataList	Ljava/util/List;
    //   394: astore_3
    //   395: aload_3
    //   396: monitorenter
    //   397: iconst_0
    //   398: istore 4
    //   400: iload 4
    //   402: aload_0
    //   403: getfield 40	amp:a	Ljava/util/List;
    //   406: invokeinterface 55 1 0
    //   411: if_icmpge +94 -> 505
    //   414: aload_0
    //   415: getfield 40	amp:a	Ljava/util/List;
    //   418: iload 4
    //   420: invokeinterface 59 2 0
    //   425: checkcast 232	mk
    //   428: astore 7
    //   430: aload 7
    //   432: getfield 235	mk:id	I
    //   435: pop
    //   436: new 61	le
    //   439: dup
    //   440: aload_0
    //   441: aload 7
    //   443: getfield 239	mk:name	Ljava/lang/String;
    //   446: aload 7
    //   448: invokevirtual 241	mk:a	()Ljava/lang/String;
    //   451: invokespecial 243	amp:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   454: aload 7
    //   456: getfield 247	mk:date	J
    //   459: invokestatic 251	a:a	(J)Ljava/lang/String;
    //   462: aload 7
    //   464: getfield 254	mk:body	Ljava/lang/String;
    //   467: iconst_0
    //   468: invokespecial 264	le:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    //   471: astore 9
    //   473: aload_0
    //   474: getfield 50	amp:mDataList	Ljava/util/List;
    //   477: aload 9
    //   479: invokeinterface 170 2 0
    //   484: pop
    //   485: iinc 4 1
    //   488: goto -88 -> 400
    //   491: astore_1
    //   492: aload_0
    //   493: aconst_null
    //   494: putfield 40	amp:a	Ljava/util/List;
    //   497: aload_1
    //   498: invokevirtual 288	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   501: pop
    //   502: goto -131 -> 371
    //   505: aload_3
    //   506: monitorexit
    //   507: goto -427 -> 80
    //   510: astore 5
    //   512: aload_3
    //   513: monitorexit
    //   514: aload 5
    //   516: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   359	371	491	java/lang/Exception
    //   400	485	510	finally
    //   505	507	510	finally
  }

  public final void onCreate()
  {
    super.onCreate();
    this.g = sy.b(getActivity());
    this.h = ((LocationManager)ManagerCreator.getManager(LocationManager.class));
    this.i = new jp("smslog", "mms_pdu", "mms_parts");
    this.j = new hi(0);
    this.k = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
    if (jm.b == null)
      jm.b = new jm();
    this.l = jm.b;
    this.m = true;
    switch (this.d)
    {
    case 0:
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.j = new hi(0);
      continue;
      this.j = new hi(1);
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt > -1 + this.mDataList.size())
      return;
    le localle = (le)this.mDataList.get(paramInt);
    boolean bool;
    if (!localle.d)
    {
      bool = true;
      label42: localle.d = bool;
      int i1 = a();
      this.b.setNumber(i1);
      if (i1 != this.mDataList.size())
        break label111;
      this.e = false;
      refreshListData();
    }
    while (true)
    {
      refreshOperatingBar(this.b);
      getAdapter().notifyDataSetChanged();
      break;
      bool = false;
      break label42;
      label111: this.e = true;
      refreshListData();
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    int i1 = 0;
    if (this.f)
      switch (paramOperatingModel.getID())
      {
      case 1001:
      default:
      case 1000:
      case 1002:
      }
    while (true)
    {
      return;
      if (this.d == 0)
      {
        a(0, b(), this.mHandler);
      }
      else
      {
        a(1, b(), this.mHandler);
        continue;
        if ((this.mDataList != null) && (this.mDataList.size() > 0))
          if (this.e)
          {
            this.e = false;
            while (i1 < this.mDataList.size())
            {
              ((le)this.mDataList.get(i1)).d = true;
              i1++;
            }
            this.mHandler.sendEmptyMessage(-2);
          }
          else
          {
            this.e = true;
            for (int i2 = 0; i2 < this.mDataList.size(); i2++)
              ((le)this.mDataList.get(i2)).d = false;
            this.mHandler.sendEmptyMessage(-2);
          }
      }
    }
  }

  public final void onResume()
  {
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void refreshListData()
  {
    if (this.mDataList.size() > 0)
    {
      hideEmptyView();
      this.f = true;
    }
    while (true)
      synchronized (getAdapter())
      {
        ahw localahw = (ahw)getAdapter();
        ArrayList localArrayList = new ArrayList();
        localArrayList.add(new ListModel(this.mDataList, null, 1, false));
        localahw.setDataList(localArrayList);
        getAdapter().notifyDataSetChanged();
        setReloadData(false);
        this.b.setNumber(a());
        refreshOperatingBar(this.b);
        if (this.e)
        {
          this.c.setText(this.mContext.getString(2131428653));
          refreshOperatingBar(this.c);
          return;
          switch (this.d)
          {
          default:
            break;
          case 0:
            setEmptyText(2131428805);
            break;
          case 1:
            setEmptyText(2131428806);
            break;
          case 2:
            setEmptyText(2131428808);
            break;
          case 3:
            setEmptyText(2131428810);
            break;
          case 4:
            setEmptyText(2131428805);
          }
        }
      }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
    switch (this.d)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131427377);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131427377);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131427377);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428651);
      continue;
      paramFrameworkTemplateUI.setTitleTextData(2131428651);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amp
 * JD-Core Version:    0.6.2
 */