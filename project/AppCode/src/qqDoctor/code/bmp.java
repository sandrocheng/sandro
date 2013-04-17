import QQPIM.SoftListType;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.software.ApkManagerActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareMoveActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareUninstallActivity;
import com.tencent.qqpimsecure.ui.activity.software.SoftwareUpdateActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.model.ResultModel;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.MainResultAdapter;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.software.StorageTable;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.applist.AppListManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import com.tencent.tmsecure.module.tools.PackageChangedManager;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public final class bmp extends BaseView
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  private int A = 0;
  private int B = 0;
  private int C = 0;
  private int D = 0;
  private int E = 0;
  private kd F;
  private abe G;
  private long H;
  private boolean I = false;
  private boolean J = false;
  private PackageChangedManager K;
  private Thread L;
  private LinearLayout M;
  private FrameLayout N;
  private ButtonView O;
  private TextView P;
  private boolean Q = false;
  private od R;
  private ArrayList<kw> S = new ArrayList();
  private boolean T = false;
  private long U;
  private IPackageChangedListener V = new bmr(this);
  private BroadcastReceiver W = new bms(this);
  private BroadcastReceiver X = new bmt(this);
  private AppListManager Y = (AppListManager)ManagerCreator.getManager(AppListManager.class);
  private LinearLayout a;
  private LinearLayout b;
  private StorageTable c;
  private ListView d;
  private TabAdapter e;
  private LinearLayout f;
  private ListView g;
  private MainResultAdapter h;
  private ButtonView i;
  private FrameLayout j;
  private List<ResultModel> k = new ArrayList();
  private TextView l;
  private ImageView m;
  private TextView n;
  private LinearLayout o;
  private ProgressBarView p;
  private LinearLayout q;
  private ButtonView r;
  private ButtonView s;
  private PinnedHeaderListView t;
  private alg u;
  private List<kw> v = new ArrayList();
  private List<kw> w = new ArrayList();
  private List<kw> x = new ArrayList();
  private boolean y = false;
  private int z = 40;

  public bmp(Context paramContext)
  {
    super(paramContext, 2130903251);
    ManagerCreator.getManager(SoftwareManager.class);
  }

  private static int a(List<kw> paramList)
  {
    int i1 = 0;
    while (true)
    {
      try
      {
        Iterator localIterator = paramList.iterator();
        if (localIterator.hasNext())
        {
          if (!((kw)localIterator.next()).y())
          {
            i2 = i1 + 1;
            break label55;
          }
        }
        else
          return i1;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
      int i2 = i1;
      label55: i1 = i2;
    }
  }

  private static String a(String paramString)
  {
    char[] arrayOfChar = paramString.toCharArray();
    int i1 = 0;
    if (i1 < arrayOfChar.length)
    {
      if (arrayOfChar[i1] == '　')
        arrayOfChar[i1] = ' ';
      while (true)
      {
        i1++;
        break;
        if ((arrayOfChar[i1] > 65280) && (arrayOfChar[i1] < 65375))
          arrayOfChar[i1] = ((char)(arrayOfChar[i1] - 65248));
      }
    }
    return new String(arrayOfChar);
  }

  private int b(kw paramkw)
  {
    int i1 = 2130837904;
    if (paramkw.isApk())
    {
      new StringBuilder().append(paramkw.getPackageName()).append("  ").append(paramkw.getVersion()).toString();
      if (c(paramkw))
        paramkw.e(12);
      if (paramkw.n() == 6)
        this.w.add(paramkw);
    }
    while (true)
    {
      return i1;
      if (paramkw.n() == 12)
      {
        this.w.add(paramkw);
      }
      else if (paramkw.n() == 9)
      {
        this.w.add(paramkw);
      }
      else if (paramkw.n() == 11)
      {
        this.w.add(paramkw);
      }
      else if (paramkw.n() == 14)
      {
        this.w.add(paramkw);
      }
      else if (paramkw.n() == 13)
      {
        this.w.add(paramkw);
      }
      else
      {
        i1 = 2130837907;
        continue;
        if (paramkw.v() == -1)
          i1 = 2130837907;
        else if (paramkw.v() == 0)
          this.v.add(paramkw);
        else if (paramkw.v() == 1)
          this.v.add(paramkw);
        else if (paramkw.v() == 2)
          this.v.add(paramkw);
        else if (paramkw.v() == 3)
          this.v.add(paramkw);
        else if (paramkw.v() == 4)
          this.v.add(paramkw);
      }
    }
  }

  private void b()
  {
    int i1 = 2130837904;
    if (this.Q)
      return;
    String str1 = "";
    long l1 = this.F.a.getLong("one_key_analysis_time", 0L);
    long l2 = ho.a().cC();
    int i2 = g();
    int i4;
    int i5;
    int i3;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    int i7;
    if (this.J)
    {
      i4 = a(this.v);
      i5 = a(this.w);
      if (i2 < 30)
      {
        i3 = this.mContext.getResources().getColor(2131296308);
        if (this.T)
        {
          long l6 = this.H - n();
          String str19 = this.mContext.getString(2131429585);
          Object[] arrayOfObject9 = new Object[1];
          arrayOfObject9[0] = a.b(l6);
          localObject1 = String.format(str19, arrayOfObject9);
          if (n() == 0L);
          for (localObject2 = this.mContext.getString(2131429587); ; localObject2 = this.mContext.getString(2131429586))
          {
            this.M.setVisibility(0);
            this.m.setVisibility(0);
            this.n.setVisibility(0);
            this.m.setImageResource(i1);
            this.l.setTextColor(i3);
            this.l.setText((CharSequence)localObject1);
            this.n.setText((CharSequence)localObject2);
            break;
          }
        }
        this.H = n();
        if ((i4 != 0) || (i5 != 0))
        {
          localObject1 = this.mContext.getString(2131429584);
          i3 = this.mContext.getResources().getColor(2131296308);
          if ((i4 > 0) && (i5 > 0))
          {
            String str18 = this.mContext.getString(2131429588);
            Object[] arrayOfObject8 = new Object[3];
            arrayOfObject8[0] = Integer.valueOf(i5);
            arrayOfObject8[1] = Integer.valueOf(i4);
            arrayOfObject8[2] = a.b(this.H);
            str1 = String.format(str18, arrayOfObject8);
          }
        }
        while (true)
        {
          localObject2 = a(str1);
          break;
          if ((i4 > 0) && (i5 <= 0))
          {
            String str17 = this.mContext.getString(2131429590);
            Object[] arrayOfObject7 = new Object[2];
            arrayOfObject7[0] = Integer.valueOf(i4);
            arrayOfObject7[1] = a.b(this.H);
            str1 = String.format(str17, arrayOfObject7);
          }
          else if ((i4 <= 0) && (i5 > 0))
          {
            String str16 = this.mContext.getString(2131429589);
            Object[] arrayOfObject6 = new Object[2];
            arrayOfObject6[0] = Integer.valueOf(i5);
            arrayOfObject6[1] = a.b(this.H);
            str1 = String.format(str16, arrayOfObject6);
            continue;
            if ((System.currentTimeMillis() - l2) / 1000L >= 1296000L)
            {
              localObject1 = this.mContext.getString(2131429595);
              str1 = this.mContext.getString(2131429597);
            }
            else
            {
              localObject1 = this.mContext.getString(2131429595);
            }
          }
        }
      }
      i3 = this.mContext.getResources().getColor(2131296309);
      if (this.T)
      {
        long l5 = this.H - n();
        String str15 = this.mContext.getString(2131429585);
        Object[] arrayOfObject5 = new Object[1];
        arrayOfObject5[0] = a.b(l5);
        localObject3 = String.format(str15, arrayOfObject5);
        if (n() == 0L)
        {
          localObject4 = this.mContext.getString(2131429587);
          i7 = 2130837907;
        }
      }
    }
    while (true)
    {
      String str8 = a((String)localObject4);
      int i8 = i7;
      localObject2 = str8;
      localObject1 = localObject3;
      i1 = i8;
      break;
      localObject4 = this.mContext.getString(2131429586);
      i7 = 2130837907;
      continue;
      this.H = n();
      String str7;
      if ((i4 != 0) || (i5 != 0))
      {
        str7 = this.mContext.getString(2131429584);
        i3 = this.mContext.getResources().getColor(2131296308);
        if ((i4 > 0) && (i5 > 0))
        {
          String str13 = this.mContext.getString(2131429588);
          Object[] arrayOfObject4 = new Object[3];
          arrayOfObject4[0] = Integer.valueOf(i5);
          arrayOfObject4[1] = Integer.valueOf(i4);
          arrayOfObject4[2] = a.b(this.H);
          String str14 = String.format(str13, arrayOfObject4);
          int i11 = i1;
          localObject3 = str7;
          localObject4 = str14;
          i7 = i11;
        }
        else if ((i4 > 0) && (i5 <= 0))
        {
          String str11 = this.mContext.getString(2131429590);
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = Integer.valueOf(i4);
          arrayOfObject3[1] = a.b(this.H);
          String str12 = String.format(str11, arrayOfObject3);
          int i10 = i1;
          localObject3 = str7;
          localObject4 = str12;
          i7 = i10;
        }
        else if ((i4 <= 0) && (i5 > 0))
        {
          String str9 = this.mContext.getString(2131429589);
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(i5);
          arrayOfObject2[1] = a.b(this.H);
          String str10 = String.format(str9, arrayOfObject2);
          int i9 = i1;
          localObject3 = str7;
          localObject4 = str10;
          i7 = i9;
        }
      }
      else if ((System.currentTimeMillis() - l2) / 1000L < 1296000L)
      {
        localObject3 = this.mContext.getString(2131429595);
        localObject4 = this.mContext.getString(2131429596);
        i7 = 2130837907;
      }
      else
      {
        localObject3 = this.mContext.getString(2131429595);
        localObject4 = this.mContext.getString(2131429598);
        i7 = 2130837907;
        continue;
        String str3;
        if (i2 >= 30)
        {
          i3 = this.mContext.getResources().getColor(2131296309);
          i1 = 2130837907;
          if (l1 <= 0L)
            str3 = this.mContext.getString(2131429573);
        }
        while (true)
        {
          ft.a locala = new ft.a();
          ft.b(locala);
          long l3 = locala.a;
          ft.a(locala);
          long l4 = locala.a;
          String str4 = a.c(l3);
          String str5 = a.c(l4);
          String str6 = this.mContext.getString(2131429599) + str4 + "\n" + this.mContext.getString(2131429600) + str5;
          localObject1 = str3;
          localObject2 = str6;
          break;
          if ((System.currentTimeMillis() - l1) / 1000L > 604800L)
          {
            System.currentTimeMillis();
            str3 = this.mContext.getString(2131429577);
          }
          else if ((System.currentTimeMillis() - l1) / 1000L <= 604800L)
          {
            new Date().setTime(l1);
            str3 = this.mContext.getString(2131429575);
            continue;
            i3 = this.mContext.getResources().getColor(2131296308);
            String str2 = this.mContext.getString(2131429579);
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = Integer.valueOf(i2);
            str3 = String.format(str2, arrayOfObject1);
          }
          else
          {
            str3 = "";
          }
        }
        int i6 = i1;
        localObject3 = str7;
        localObject4 = str1;
        i7 = i6;
      }
    }
  }

  private void c()
  {
    List localList = this.e.getDataList();
    if (di.b().n())
    {
      ((TabModel)localList.get(0)).setContent(d());
      ((TabModel)localList.get(1)).setContent(e());
      ((TabModel)localList.get(2)).setContent(f());
      this.e.setDataList(localList);
      this.e.notifyDataSetChanged();
      return;
    }
    TabModel localTabModel = (TabModel)localList.get(0);
    String str;
    if ((this.F.a.getInt("update_app_count", 0) == 0) && (!a.h(this.mContext)))
      str = this.mContext.getString(2131429606);
    while (true)
    {
      localTabModel.setContent(Html.fromHtml(str));
      ((TabModel)localList.get(1)).setContent(d());
      ((TabModel)localList.get(2)).setContent(e());
      ((TabModel)localList.get(3)).setContent(f());
      break;
      if (this.F.a.getInt("update_app_count", 0) <= 0)
        str = this.mContext.getString(2131429603);
      else
        str = this.mContext.getString(2131429604) + "<font color=\"#fd5f5f\">" + this.F.a.getInt("update_app_count", 0) + "</font>" + this.mContext.getString(2131429605);
    }
  }

  private boolean c(kw paramkw)
  {
    int i1 = this.S.size();
    int i2 = 0;
    if (i2 < i1)
      if ((paramkw.getPackageName() == null) || (paramkw.getVersion() == null) || (!paramkw.getPackageName().equals(((kw)this.S.get(i2)).getPackageName())) || (!paramkw.getVersion().equals(((kw)this.S.get(i2)).getVersion())));
    for (boolean bool = true; ; bool = false)
    {
      if (!bool)
        this.S.add(paramkw);
      return bool;
      i2++;
      break;
    }
  }

  private String d()
  {
    String str2;
    if (this.F.a.getInt("low_useage_app_count", 0) > 5)
    {
      String str4 = this.mContext.getString(2131429610);
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(this.F.a.getInt("low_useage_app_count", 0));
      str2 = String.format(str4, arrayOfObject3);
    }
    while (true)
    {
      return str2;
      if (this.F.a.getInt("low_score_app_count", 0) > 0)
      {
        String str3 = this.mContext.getString(2131429609);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.F.a.getInt("low_score_app_count", 0));
        str2 = String.format(str3, arrayOfObject2);
      }
      else if ((this.F.a.getInt("system_app_count", 0) == 0) && (this.F.a.getInt("third_party_app_count", 0) == 0))
      {
        str2 = this.mContext.getString(2131429607);
      }
      else
      {
        String str1 = this.mContext.getString(2131429608);
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(this.F.a.getInt("third_party_app_count", 0));
        arrayOfObject1[1] = Integer.valueOf(this.F.a.getInt("system_app_count", 0));
        str2 = String.format(str1, arrayOfObject1);
      }
    }
  }

  private String e()
  {
    String str2;
    if (this.F.a.getInt("apk_low_version_count", 0) > 1)
    {
      String str3 = this.mContext.getString(2131429613);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.F.a.getInt("apk_low_version_count", 0));
      str2 = String.format(str3, arrayOfObject2);
    }
    while (true)
    {
      return str2;
      if (this.F.a.getInt("apk_count", 0) == 0)
      {
        str2 = this.mContext.getString(2131429611);
      }
      else
      {
        String str1 = this.mContext.getString(2131429612);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.F.a.getInt("apk_count", 0));
        str2 = String.format(str1, arrayOfObject1);
      }
    }
  }

  private String f()
  {
    String str2;
    Object[] arrayOfObject;
    if (this.F.a.getInt("software_move_to_sdcard_count", 0) > 0)
    {
      str2 = this.mContext.getString(2131429615);
      arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.F.a.getInt("software_move_to_sdcard_count", 0));
    }
    for (String str1 = String.format(str2, arrayOfObject); ; str1 = this.mContext.getString(2131429614))
      return str1;
  }

  private static int g()
  {
    ft.a locala = new ft.a();
    ft.b(locala);
    float f1 = (float)locala.b;
    return (int)(0.5F + 100.0F * ((float)locala.a / f1));
  }

  private void h()
  {
    this.mHandler.removeMessages(8);
    this.mHandler.removeMessages(9);
    this.mHandler.removeMessages(2);
    this.mHandler.removeMessages(1);
    this.mHandler.removeMessages(5);
    this.mHandler.removeMessages(3);
  }

  private void i()
  {
    this.f.setVisibility(0);
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, this.mContext.getResources().getDisplayMetrics().heightPixels - (this.j.getTop() + getNotificationHeight()));
    localTranslateAnimation.setDuration(800L);
    localTranslateAnimation.setAnimationListener(new bmq(this));
    this.a.startAnimation(localTranslateAnimation);
    this.S.clear();
  }

  private void j()
  {
    this.i.setEnabled(false);
    this.a.setVisibility(0);
    k();
    l();
    this.p.setProgress(0);
    this.p.stopAnimation();
    this.N.setVisibility(8);
    this.r.setText(this.mContext.getString(2131430171));
    this.C = 0;
    this.D = 0;
    this.E = 0;
    this.A = 0;
    this.B = 0;
    this.J = false;
    this.k.clear();
    this.h.setDataList(this.k);
    this.h.notifyDataSetChanged();
    this.v.clear();
    this.w.clear();
    this.u.c();
    this.u.setDataList(m());
    this.u.notifyDataSetChanged();
    this.t.setVisibility(8);
    System.currentTimeMillis();
    new hd();
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, this.mContext.getResources().getDisplayMetrics().heightPixels - (this.j.getTop() + getNotificationHeight()), 0.0F);
    localTranslateAnimation.setDuration(800L);
    localTranslateAnimation.setAnimationListener(new bmu(this));
    this.a.startAnimation(localTranslateAnimation);
  }

  private void k()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(400L);
    localAlphaAnimation.setAnimationListener(new bna(this));
    this.o.startAnimation(localAlphaAnimation);
  }

  private void l()
  {
    if (this.y)
    {
      this.i.setText(this.mContext.getString(2131428533));
      this.q.setVisibility(0);
      this.N.setVisibility(8);
    }
    while (true)
    {
      return;
      this.i.setText(this.mContext.getString(2131429532));
      this.i.setVisibility(0);
      this.q.setVisibility(8);
    }
  }

  private List<ListModel<kw>> m()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.w, this.mContext.getString(2131430169), 0));
    localArrayList.add(new ListModel(this.v, this.mContext.getString(2131430170), 0));
    return localArrayList;
  }

  private long n()
  {
    long l1 = 0L;
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = this.w.size();
      i3 = 0;
      if (i1 >= i2)
        break;
      if (!((kw)this.w.get(i1)).y())
        l1 += ((kw)this.w.get(i1)).getSize();
    }
    while (i3 < this.v.size())
    {
      if (!((kw)this.v.get(i3)).y())
        l1 += ((kw)this.v.get(i3)).getSize();
      i3++;
    }
    return l1;
  }

  public final ButtonView a()
  {
    return this.r;
  }

  public final boolean a(kw paramkw)
  {
    long l1 = ho.a().cC();
    boolean bool;
    if (this.Y.contains(paramkw.getPackageName(), SoftListType.WHITELIST_UNUSUAL))
      bool = false;
    while (true)
    {
      return bool;
      long l2 = (System.currentTimeMillis() - l1) / 1000L;
      if (l2 < 1296000L)
      {
        bool = false;
      }
      else
      {
        String str = this.mContext.getSharedPreferences("SoftwareManagerImpl", 0).getString(paramkw.getPackageName(), null);
        bor localbor = null;
        if (str != null)
          localbor = bor.a(str);
        new StringBuilder(" name: ").append(paramkw.getAppName()).append(" useageInfo: ").append(localbor).toString();
        if ((l2 >= 1296000L) && (l2 < 2592000L))
        {
          if (localbor == null)
          {
            paramkw.h(2);
            kw.u();
            bool = true;
          }
          else
          {
            long l5 = System.currentTimeMillis() - localbor.c.getTime();
            if ((l5 >= 1296000L) && (l5 < 2592000L))
            {
              paramkw.h(2);
              kw.u();
              bool = true;
            }
          }
        }
        else if ((l2 >= 2592000L) && (l2 < 5184000L))
        {
          if (localbor == null)
          {
            paramkw.h(1);
            kw.u();
            bool = true;
          }
          else
          {
            long l4 = (System.currentTimeMillis() - localbor.c.getTime()) / 1000L;
            if (l4 >= 2592000L)
            {
              paramkw.h(1);
              kw.u();
              bool = true;
            }
            else if ((l4 >= 1296000L) && (l4 < 2592000L))
            {
              paramkw.h(2);
              kw.u();
              bool = true;
            }
          }
        }
        else if (l2 >= 5184000L)
        {
          if (localbor == null)
          {
            paramkw.h(0);
            kw.u();
            bool = true;
          }
          else
          {
            long l3 = (System.currentTimeMillis() - localbor.c.getTime()) / 1000L;
            if (l3 >= 5184000L)
            {
              paramkw.h(0);
              kw.u();
              bool = true;
            }
            else if ((l3 >= 2592000L) && (l3 < 5184000L))
            {
              paramkw.h(1);
              kw.u();
              bool = true;
            }
            else if ((l3 >= 1296000L) && (l3 < 2592000L))
            {
              paramkw.h(2);
              kw.u();
              bool = true;
            }
          }
        }
        else
          bool = false;
      }
    }
  }

  public final void onBackClick()
  {
    if (this.y)
    {
      this.y = false;
      this.Q = false;
      this.R.a();
      h();
      j();
    }
    while (true)
    {
      super.onBackClick();
      return;
      Intent localIntent = getActivity().getIntent();
      boolean bool = false;
      if (localIntent != null)
        bool = localIntent.getBooleanExtra("extra_back_to_main", false);
      if (bool)
      {
        Context localContext = this.mContext;
        localContext.startActivity(new Intent(localContext, MainActivity.class));
      }
    }
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131231351:
    case 2131231353:
    default:
    case 2131231350:
    case 2131231355:
    case 2131231354:
    case 2131231352:
    }
    while (true)
    {
      return;
      if (!this.y)
      {
        if ((this.L == null) || (!this.L.isAlive()))
        {
          this.U = System.currentTimeMillis();
          this.y = true;
          this.T = false;
          h();
          i();
          nd.a().a(26042);
        }
        else
        {
          ha.b(this.mContext, 2131429620);
        }
      }
      else
      {
        this.y = false;
        j();
        continue;
        this.y = false;
        this.P.setVisibility(8);
        j();
        continue;
        List localList = this.u.b();
        if (localList.size() == 0)
        {
          Toast.makeText(this.mContext, 2131427791, 1).show();
        }
        else
        {
          ArrayList localArrayList1 = new ArrayList();
          ArrayList localArrayList2 = new ArrayList();
          ArrayList localArrayList3 = new ArrayList();
          Iterator localIterator = localList.iterator();
          while (localIterator.hasNext())
          {
            kw localkw = (kw)localIterator.next();
            if (localkw.isApk())
              localArrayList3.add(localkw);
            else if (localkw.isSystemApp())
              localArrayList1.add(localkw);
            else
              localArrayList2.add(localkw.getPackageName());
          }
          String str1 = this.mContext.getResources().getString(2131428434);
          String str2 = "";
          if (((localArrayList2.size() != 0) || (localArrayList1.size() != 0)) && (localArrayList3.size() != 0))
          {
            String str5 = this.mContext.getString(2131428501);
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = Integer.valueOf(localArrayList1.size() + localArrayList2.size());
            arrayOfObject3[1] = Integer.valueOf(localArrayList3.size());
            str2 = String.format(str5, arrayOfObject3);
          }
          while (true)
          {
            if (localArrayList1.size() > 0)
              str2 = str2 + this.mContext.getString(2131428504);
            Dialog localDialog = new Dialog(this.mContext);
            localDialog.setTitle(str1);
            localDialog.setMessage(str2);
            localDialog.setPositiveButton(2131427397, new bnb(this, localArrayList2, localArrayList1, localArrayList3, localDialog), 1);
            localDialog.setNegativeButton(2131427379, new bnc(localDialog), 2);
            localDialog.show();
            break;
            if ((localArrayList2.size() != 0) || (localArrayList1.size() != 0))
            {
              String str3 = this.mContext.getString(2131428502);
              Object[] arrayOfObject1 = new Object[1];
              arrayOfObject1[0] = Integer.valueOf(localArrayList1.size() + localArrayList2.size());
              str2 = String.format(str3, arrayOfObject1);
            }
            else if (localArrayList3.size() != 0)
            {
              String str4 = this.mContext.getString(2131428503);
              Object[] arrayOfObject2 = new Object[1];
              arrayOfObject2[0] = Integer.valueOf(localArrayList3.size());
              str2 = String.format(str4, arrayOfObject2);
            }
          }
          this.y = false;
          this.Q = false;
          this.R.a();
          h();
          j();
        }
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.j = ((FrameLayout)findViewById(2131231356));
    this.a = ((LinearLayout)findViewById(2131231360));
    this.b = ((LinearLayout)findViewById(2131231361));
    this.c = ((StorageTable)findViewById(2131231346));
    this.d = ((ListView)findViewById(2131230930));
    this.e = new TabAdapter(this.mContext, 0, 2);
    this.d.setAdapter(this.e);
    this.d.setOnItemClickListener(this);
    this.f = ((LinearLayout)findViewById(2131231357));
    this.g = ((ListView)findViewById(2131231358));
    this.h = new MainResultAdapter(this.mContext, this.g, this.k, null);
    this.g.setAdapter(this.h);
    this.t = ((PinnedHeaderListView)findViewById(2131231359));
    this.u = new alg(this, m());
    this.t.setAdapter(this.u);
    this.t.setOnItemClickListener(this);
    this.t.setPinnedHeaderView(LayoutInflater.from(this.mContext).inflate(2130903316, this.t, false));
    this.t.setOnScrollListener(this.u);
    this.i = ((ButtonView)findViewById(2131231350));
    this.i.setOnClickListener(this);
    this.i.setEnabled(false);
    this.q = ((LinearLayout)findViewById(2131231353));
    this.r = ((ButtonView)findViewById(2131231354));
    this.r.setOnClickListener(this);
    this.s = ((ButtonView)findViewById(2131231355));
    this.s.setOnClickListener(this);
    this.P = ((TextView)findViewById(2131231363));
    this.l = ((TextView)findViewById(2131231266));
    this.n = ((TextView)findViewById(2131231349));
    this.o = ((LinearLayout)findViewById(2131231163));
    this.m = ((ImageView)findViewById(2131231347));
    this.p = ((ProgressBarView)findViewById(2131231270));
    this.M = ((LinearLayout)findViewById(2131231348));
    this.N = ((FrameLayout)findViewById(2131231351));
    this.O = ((ButtonView)findViewById(2131231352));
    this.O.setOnClickListener(this);
    this.F = new kd();
    this.G = new abe();
    this.R = new od(this.mContext);
    this.mContext.registerReceiver(this.W, new IntentFilter("com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS"));
    this.mContext.registerReceiver(this.X, new IntentFilter("com.tencent.qqpimsecure.NOTIFY_UI_NULL"));
    this.K = ((PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class));
    this.K.addListener(this.V);
    this.mHandler.sendEmptyMessageDelayed(7, 1500L);
  }

  public final void onDestroy()
  {
    this.mContext.unregisterReceiver(this.W);
    this.mContext.unregisterReceiver(this.X);
    this.K.removeListener(this.V);
    this.mContext.sendBroadcast(new Intent("com.tencent.qqpimsecure.ACTION_STOP_LOADING"));
    TMSService.stopService(new aau());
    this.R.e();
    this.c.destroy();
    super.onDestroy();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    super.onHandlerMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 8:
    case 9:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 10:
    }
    while (true)
    {
      return;
      this.k.add(new ResultModel(0, 2130837907, paramMessage.arg1, 0L));
      this.h.setDataList(this.k);
      this.h.notifyDataSetChanged();
      continue;
      this.C = (1 + this.C);
      if (this.C > 10)
      {
        this.C = 10;
        this.p.setProgressWithAnim(this.C);
      }
      else
      {
        this.p.setProgressWithAnim(this.C);
        this.mHandler.sendEmptyMessageDelayed(8, 1000L);
        continue;
        this.C = (1 + this.C);
        if (this.C > 70)
        {
          this.C = 70;
          this.p.setProgressWithAnim(this.C);
        }
        else
        {
          this.p.setProgressWithAnim(this.C);
          this.mHandler.sendEmptyMessageDelayed(9, 2000L);
          continue;
          this.mHandler.removeMessages(8);
          if (this.D != 0)
          {
            if (this.C < 10)
              this.C = 10;
            this.A = (1 + this.A);
            this.C = (10 + (int)(this.A / this.D * this.z));
            if (this.C >= 10 + this.z)
              this.p.setProgressWithAnim(10 + this.z);
            while (true)
            {
              kw localkw4 = (kw)paramMessage.obj;
              this.k.add(new ResultModel(1, localkw4.getIcon(), localkw4.getAppName(), b(localkw4)));
              this.h.setDataList(this.k);
              this.h.notifyDataSetChanged();
              break;
              this.p.setProgressWithAnim(this.C);
            }
            this.mHandler.removeMessages(9);
            if (this.E == 0)
            {
              this.p.setProgressWithAnim(100);
              l();
            }
            else
            {
              if (this.C < 70)
                this.C = 70;
              this.B = (1 + this.B);
              this.C = (70 + (int)(30.0F * (this.B / this.E)));
              if (this.C >= 100)
              {
                this.p.setProgressWithAnim(100);
                l();
              }
              while (true)
              {
                kw localkw3 = (kw)paramMessage.obj;
                this.k.add(new ResultModel(1, localkw3.getIcon(), localkw3.getAppName(), b(localkw3)));
                this.h.setDataList(this.k);
                this.h.notifyDataSetChanged();
                this.x.add(localkw3);
                if (this.E != this.B)
                  break;
                this.mHandler.sendEmptyMessage(3);
                break;
                this.p.setProgressWithAnim(this.C);
              }
              this.mHandler.removeMessages(3);
              this.Q = false;
              this.J = true;
              if ((this.v.size() == 0) && (this.w.size() == 0))
              {
                this.r.setVisibility(8);
                this.P.setVisibility(0);
                label691: b();
                this.g.setVisibility(8);
                this.u.setDataList(m());
                this.u.notifyDataSetChanged();
                this.u.d();
                this.t.setVisibility(0);
                if (this.u.b().size() != 0)
                  break label1244;
                this.r.setButtonEnabled(false);
              }
              while (true)
              {
                l();
                break;
                ArrayList localArrayList1 = new ArrayList();
                ArrayList localArrayList2 = new ArrayList();
                ArrayList localArrayList3 = new ArrayList();
                ArrayList localArrayList4 = new ArrayList();
                ArrayList localArrayList5 = new ArrayList();
                Iterator localIterator1 = this.v.iterator();
                while (localIterator1.hasNext())
                {
                  kw localkw2 = (kw)localIterator1.next();
                  if (localkw2.v() == 2)
                    localArrayList1.add(localkw2);
                  else if (localkw2.v() == 1)
                    localArrayList2.add(localkw2);
                  else if (localkw2.v() == 0)
                    localArrayList3.add(localkw2);
                  else if (localkw2.v() == 3)
                    localArrayList4.add(localkw2);
                  else if (localkw2.v() == 4)
                    localArrayList5.add(localkw2);
                }
                this.v.clear();
                this.v.addAll(localArrayList5);
                this.v.addAll(localArrayList4);
                this.v.addAll(localArrayList3);
                this.v.addAll(localArrayList2);
                this.v.addAll(localArrayList1);
                ArrayList localArrayList6 = new ArrayList();
                ArrayList localArrayList7 = new ArrayList();
                ArrayList localArrayList8 = new ArrayList();
                ArrayList localArrayList9 = new ArrayList();
                Iterator localIterator2 = this.w.iterator();
                while (localIterator2.hasNext())
                {
                  kw localkw1 = (kw)localIterator2.next();
                  if (localkw1.n() == 6)
                    localArrayList6.add(localkw1);
                  else if (localkw1.n() == 11)
                    localArrayList8.add(localkw1);
                  else if (localkw1.n() == 12)
                    localArrayList7.add(localkw1);
                  else if (localkw1.n() == 9)
                    localArrayList9.add(localkw1);
                }
                this.w.clear();
                this.w.addAll(localArrayList9);
                this.w.addAll(localArrayList6);
                this.w.addAll(localArrayList7);
                this.w.addAll(localArrayList8);
                break label691;
                label1244: this.r.setButtonEnabled(true);
              }
              this.mHandler.removeMessages(4);
              this.u.setDataList(m());
              this.u.a();
              this.u.notifyDataSetChanged();
              if ((a(this.v) == 0) && (a(this.w) == 0))
              {
                this.s.setVisibility(0);
                this.r.setVisibility(8);
              }
              while (true)
              {
                this.c.updateStorage();
                break;
                this.r.setVisibility(0);
                this.s.setVisibility(0);
              }
              int i1 = this.F.a.getInt("third_party_app_count", 0);
              if (this.I)
                i1 += this.F.a.getInt("system_app_count", 0);
              if (i1 == 0)
              {
                this.i.setButtonEnabled(false);
                if (((Boolean)paramMessage.obj).booleanValue());
                for (int i2 = 2131429572; ; i2 = 2131429571)
                {
                  this.M.setVisibility(8);
                  this.m.setVisibility(0);
                  this.n.setVisibility(8);
                  this.m.setImageResource(2130837907);
                  this.l.setTextColor(this.mContext.getResources().getColor(2131296309));
                  this.l.setText(i2);
                  break;
                }
              }
              this.i.setButtonEnabled(true);
              b();
              continue;
              b();
              continue;
              new bmv(this).start();
              continue;
              if (!this.y)
              {
                if ((this.L == null) || (!this.L.isAlive()))
                {
                  this.y = true;
                  this.T = false;
                  h();
                  i();
                  nd.a().a(26042);
                }
                else
                {
                  ha.b(this.mContext, 2131429620);
                }
              }
              else
              {
                this.y = false;
                j();
              }
            }
          }
        }
      }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramAdapterView.getId() == 2131231359)
    {
      if (!((kw)this.u.getDataList().get(paramInt)).y())
      {
        CheckBoxView localCheckBoxView = (CheckBoxView)paramView.findViewById(2131231052);
        localCheckBoxView.onClick(localCheckBoxView);
      }
      return;
    }
    Intent localIntent;
    switch (((TabModel)this.e.getDataList().get(paramInt)).getID())
    {
    default:
      localIntent = null;
    case 10:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      getActivity().startActivity(localIntent);
      break;
      localIntent = new Intent(this.mContext, SoftwareUpdateActivity.class);
      continue;
      localIntent = new Intent(this.mContext, SoftwareUninstallActivity.class);
      continue;
      localIntent = new Intent(this.mContext, ApkManagerActivity.class);
      continue;
      localIntent = new Intent(this.mContext, SoftwareMoveActivity.class);
    }
  }

  public final void onResume()
  {
    super.onResume();
    b();
    c();
    Message localMessage = this.mHandler.obtainMessage();
    localMessage.what = 5;
    localMessage.obj = Boolean.valueOf(false);
    this.mHandler.sendMessage(localMessage);
    if (this.J)
    {
      if ((this.v.size() == 0) && (this.w.size() == 0))
        this.r.setVisibility(8);
      this.u.setDataList(m());
      this.u.notifyDataSetChanged();
    }
    Intent localIntent = getActivity().getIntent();
    if ((localIntent != null) && (localIntent.getBooleanExtra("start_analysis", false)))
      this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(10), 400L);
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427329);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setTitleTextData(2131427878);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmp
 * JD-Core Version:    0.6.2
 */