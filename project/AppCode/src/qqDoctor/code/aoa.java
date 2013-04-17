import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Menu;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.ScoreRollBoxView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.PackageChangedManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class aoa extends BaseView
{
  private boolean A;
  private boolean B;
  private boolean C;
  private boolean D;
  private long E;
  private View.OnClickListener F = new aoe(this);
  private Handler G = new aof(this);
  private Handler H = new aog(this);
  private um a;
  private PackageChangedManager b;
  private xb c;
  private boolean d;
  private qc e;
  private FrameLayout f;
  private LinearLayout g;
  private LinearLayout h;
  private TextView i;
  private TextView j;
  private ImageView k;
  private ButtonView l;
  private ButtonView m;
  private ButtonView n;
  private ButtonView o;
  private ButtonView p;
  private ButtonView q;
  private ScoreRollBoxView r;
  private ProgressBarView s;
  private ListView t;
  private aip u;
  private int v;
  private int w;
  private jc x;
  private boolean y;
  private Dialog z;

  public aoa(Context paramContext)
  {
    super(paramContext, 2130903200);
  }

  private void a()
  {
    this.r.startAnimation();
    this.s.startAnimation();
    this.B = true;
    nd.a().a(31);
    if ((this.c != null) && (this.mContext != null))
    {
      this.c.a(false);
      this.c.a();
      this.c.c();
      this.c.d();
      this.c.e();
      this.c.b();
      a(this.mContext.getString(2131427890));
      new Thread(new aoh(this)).start();
    }
  }

  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.A);
    while (true)
    {
      return;
      this.z = new Dialog(this.mContext);
      this.z.setTitle(paramInt1);
      this.z.setMessage(paramInt2);
      int i1 = 2131428788;
      int i2 = 2131428789;
      if ((paramInt3 == 2) || (paramInt3 == 1))
      {
        i1 = 2131428790;
        i2 = 2131428791;
      }
      this.z.setPositiveButton(i1, new aom(this, paramInt3), 2);
      this.z.setNegativeButton(i2, new aoc(this), 1);
      this.z.setOnCancelListener(new aod(this));
      this.z.show();
      this.A = true;
    }
  }

  private void a(String paramString)
  {
    this.g.setVisibility(0);
    this.h.setVisibility(0);
    if (paramString != null)
    {
      if (this.B)
      {
        this.k.setVisibility(8);
        this.j.setText(this.mContext.getString(2131427891));
        this.j.setTextColor(this.mContext.getResources().getColor(2131296412));
      }
      this.i.setText(paramString);
      return;
    }
    if (this.a.c.size() > 0)
    {
      if (this.B)
      {
        this.k.setVisibility(8);
        this.j.setText(this.mContext.getString(2131427891));
        this.j.setTextColor(this.mContext.getResources().getColor(2131296412));
      }
      while (true)
      {
        String str3 = this.mContext.getString(2131428242);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.a.c.size());
        String str4 = String.format(str3, arrayOfObject2);
        this.i.setText(str4);
        break;
        this.k.setVisibility(0);
        this.k.setImageResource(2130837904);
        this.j.setText(this.mContext.getString(2131428241));
        this.j.setTextColor(this.mContext.getResources().getColor(2131296402));
      }
    }
    if (this.a.d.size() > 0)
    {
      if (this.B)
      {
        this.k.setVisibility(8);
        this.j.setText(this.mContext.getString(2131427891));
        this.j.setTextColor(this.mContext.getResources().getColor(2131296412));
      }
      while (true)
      {
        String str1 = this.mContext.getString(2131428244);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(this.a.d.size());
        String str2 = String.format(str1, arrayOfObject1);
        this.i.setText(str2);
        break;
        this.k.setVisibility(0);
        this.k.setImageResource(2130837904);
        this.j.setText(this.mContext.getString(2131428243));
        this.j.setTextColor(this.mContext.getResources().getColor(2131296402));
      }
    }
    if (this.B)
    {
      this.k.setVisibility(8);
      this.j.setText(this.mContext.getString(2131427891));
      this.j.setTextColor(this.mContext.getResources().getColor(2131296412));
    }
    while (true)
    {
      this.i.setText(this.mContext.getString(2131428247));
      break;
      this.k.setVisibility(0);
      this.k.setImageResource(2130837907);
      this.j.setText(this.mContext.getString(2131428246));
      this.j.setTextColor(this.mContext.getResources().getColor(2131296309));
    }
  }

  private void a(boolean paramBoolean)
  {
    int i1 = 0;
    um localum = this.a;
    if (paramBoolean)
      localum.a.removeAll(localum.a);
    int i2 = localum.c.size();
    if (i2 > 0)
    {
      lc locallc1 = new lc();
      locallc1.b = 1001;
      locallc1.c = Integer.valueOf(i2);
      localum.a.add(locallc1);
      for (int i3 = 0; i3 < i2; i3++)
        localum.a.add(localum.c.get(i3));
    }
    int i4 = localum.d.size();
    if (i4 > 0)
    {
      lc locallc2 = new lc();
      locallc2.b = 2001;
      locallc2.c = Integer.valueOf(i4);
      localum.a.add(locallc2);
      for (int i5 = 0; i5 < i4; i5++)
        localum.a.add(localum.d.get(i5));
    }
    int i6 = localum.f.size();
    if (i6 > 0)
    {
      lc locallc3 = new lc();
      locallc3.b = 3001;
      locallc3.c = Integer.valueOf(i6);
      localum.a.add(locallc3);
      for (int i7 = 0; i7 < i6; i7++)
        localum.a.add(localum.f.get(i7));
    }
    int i8 = localum.e.size();
    if (i8 > 0)
    {
      lc locallc4 = new lc();
      locallc4.b = 4001;
      locallc4.c = Integer.valueOf(i8);
      localum.a.add(locallc4);
      while (i1 < i8)
      {
        localum.a.add(localum.e.get(i1));
        i1++;
      }
    }
    this.u.notifyDataSetChanged();
  }

  private void b()
  {
    um localum = this.a;
    localum.c.removeAll(localum.c);
    localum.d.removeAll(localum.d);
    localum.e.removeAll(localum.e);
    localum.a.removeAll(localum.a);
    Iterator localIterator = localum.b.iterator();
    while (localIterator.hasNext())
    {
      lc locallc = (lc)localIterator.next();
      switch (locallc.a)
      {
      default:
        break;
      case 0:
        List localList4 = (List)locallc.c;
        xb.c = localList4.size();
        if (localList4.size() > 0)
        {
          locallc.c = localList4;
          locallc.b = 1002;
          localum.c.add(locallc);
        }
        else
        {
          locallc.b = 4002;
          localum.e.add(locallc);
        }
        break;
      case 12:
        List localList3 = (List)locallc.c;
        xb.d = localList3.size();
        if (localList3.size() > 0)
        {
          locallc.c = localList3;
          locallc.b = 1007;
          localum.c.add(locallc);
        }
        else
        {
          locallc.b = 4014;
          localum.e.add(locallc);
        }
        break;
      case 1:
        if (!((Boolean)locallc.c).booleanValue())
        {
          locallc.b = 2005;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4003;
          localum.e.add(locallc);
        }
        break;
      case 2:
        if (((Integer)locallc.c).intValue() > 0)
        {
          locallc.b = 2002;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4005;
          localum.e.add(locallc);
        }
        break;
      case 3:
        List localList1 = (List)locallc.c;
        List localList2 = (List)locallc.c;
        for (int i1 = 0; i1 < localList2.size(); i1++)
          ((kw)localList2.get(i1)).I();
        if (localList1.size() > 0)
        {
          locallc.b = 2003;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4006;
          localum.e.add(locallc);
        }
        break;
      case 4:
        if (!((Boolean)locallc.c).booleanValue())
        {
          locallc.b = 1003;
          localum.c.add(locallc);
        }
        else
        {
          locallc.b = 4004;
          localum.e.add(locallc);
        }
        break;
      case 8:
        if (!((Boolean)locallc.c).booleanValue())
        {
          locallc.b = 1005;
          localum.c.add(locallc);
        }
        else
        {
          locallc.b = 4010;
          localum.e.add(locallc);
        }
        break;
      case 9:
        if (!((Boolean)locallc.c).booleanValue())
        {
          locallc.b = 2007;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4011;
          localum.e.add(locallc);
        }
        break;
      case 11:
        if (!((Boolean)locallc.c).booleanValue())
        {
          locallc.b = 2013;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4013;
          localum.e.add(locallc);
        }
        break;
      case 5:
        if (((Long)locallc.c).longValue() > 7L)
        {
          locallc.b = 1004;
          localum.c.add(locallc);
        }
        else
        {
          locallc.b = 4007;
          localum.e.add(locallc);
        }
        break;
      case 6:
        if (((Long)locallc.c).longValue() > 15L)
        {
          locallc.b = 2006;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4008;
          localum.e.add(locallc);
        }
        break;
      case 7:
        if (((Long)locallc.c).longValue() > 15L)
        {
          locallc.b = 2004;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4009;
          localum.e.add(locallc);
        }
        break;
      case 10:
        if (((List)locallc.c).size() > 0)
        {
          locallc.b = 2012;
          localum.d.add(locallc);
        }
        else
        {
          locallc.b = 4012;
          localum.e.add(locallc);
        }
        break;
      }
    }
    a(false);
  }

  private void c()
  {
    if ((this.a.b == null) || (this.r == null) || (this.mContext == null));
    while (true)
    {
      return;
      if ((this.a.d.size() != 0) || (this.a.c.size() != 0))
        break;
      i1 = 100;
      this.w = i1;
    }
    Iterator localIterator = this.a.b.iterator();
    int i1 = 100;
    lc locallc;
    int i3;
    label227: int i2;
    while (localIterator.hasNext())
    {
      locallc = (lc)localIterator.next();
      switch (locallc.a)
      {
      default:
        i3 = i1;
        i1 = i3;
        break;
      case 0:
      case 12:
        if (((List)locallc.c).size() > 0);
        for (int i14 = 41; ; i14 = 0)
        {
          i1 -= i14;
          break;
        }
      case 1:
        if (((Boolean)locallc.c).booleanValue());
        for (int i13 = 0; ; i13 = 6)
        {
          i1 -= i13;
          break;
        }
      case 2:
        int i11 = ((Integer)locallc.d).intValue();
        int i12;
        if (i11 > 30)
          if ((i11 > 30) && (i11 <= 55))
            i12 = 4;
        while (true)
        {
          i1 -= i12;
          break;
          if ((i11 > 55) && (i11 <= 70))
            i12 = 7;
          else if ((i11 > 70) && (i11 <= 85))
            i12 = 9;
          else if (i11 > 85)
            i12 = 11;
          else
            i12 = 0;
        }
      case 3:
        List localList2 = (List)locallc.c;
        float f1 = 0.0F;
        int i9 = 0;
        while (i9 < localList2.size())
        {
          float f3 = f1 + (float)((kw)localList2.get(i9)).I();
          i9++;
          f1 = f3;
        }
        float f2 = f1 / 1024.0F / 1024.0F;
        int i10;
        if (f2 != 0.0F)
          if ((f2 > 0.0F) && (f2 <= 0.4D))
            i10 = 1;
        while (true)
        {
          i1 -= i10;
          break;
          if ((f2 > 0.4D) && (f2 <= 0.8D))
            i10 = 2;
          else if ((f2 > 0.8D) && (f2 <= 2.0D))
            i10 = 3;
          else if ((f2 > 2.0D) && (f2 <= 4.0D))
            i10 = 4;
          else if ((f2 > 4.0D) && (f2 <= 8.0D))
            i10 = 5;
          else if ((f2 > 8.0D) && (f2 <= 12.0D))
            i10 = 6;
          else if ((f2 > 12.0D) && (f2 <= 18.0D))
            i10 = 7;
          else if ((f2 > 18.0D) && (f2 <= 30.0D))
            i10 = 8;
          else if (f2 > 30.0D)
            i10 = 9;
          else
            i10 = 0;
        }
      case 4:
        if (((Boolean)locallc.c).booleanValue());
        for (int i8 = 0; ; i8 = 21)
        {
          i1 -= i8;
          break;
        }
      case 8:
        if (((Boolean)locallc.c).booleanValue());
        for (int i7 = 0; ; i7 = 9)
        {
          i1 -= i7;
          break;
        }
      case 9:
        if (((Boolean)locallc.c).booleanValue());
        for (int i6 = 0; ; i6 = 6)
        {
          i1 -= i6;
          break;
        }
      case 11:
        if (((Boolean)locallc.c).booleanValue());
        for (int i5 = 0; ; i5 = 11)
        {
          i1 -= i5;
          break;
        }
      case 5:
        if (((Long)locallc.c).longValue() <= 7L)
          break label1082;
        i2 = 17;
      case 6:
      case 7:
      case 10:
      case 2008:
      }
    }
    while (true)
    {
      i3 = i1 - i2;
      break label227;
      if (((Long)locallc.c).longValue() >= 15L)
      {
        i2 = 11;
        continue;
        long l1;
        if ((locallc.c instanceof Integer))
        {
          l1 = ((Integer)locallc.c).intValue();
          if (l1 < 15L)
            break label953;
        }
        for (int i4 = 16; ; i4 = 0)
        {
          i1 -= i4;
          break;
          l1 = ((Long)locallc.c).longValue();
          break label917;
        }
        List localList1 = (List)locallc.c;
        if (localList1.size() > 7)
        {
          i2 = 11;
          continue;
        }
        if ((localList1.size() >= 3) && (localList1.size() <= 6))
        {
          i2 = 9;
          continue;
        }
        if ((localList1.size() > 0) && (localList1.size() <= 2))
        {
          i2 = 7;
          continue;
          if (((List)locallc.c).size() > 0)
          {
            i2 = 41;
            continue;
          }
          i2 = 0;
          continue;
          if (i1 >= 0)
            break;
          i1 = 0;
          break;
        }
      }
      label917: label953: label1082: i2 = 0;
    }
  }

  private void d()
  {
    jc localjc1 = this.x;
    int i1 = this.w;
    localjc1.a.putInt("last_score_of_check_new", i1).commit();
    jc localjc2 = this.x;
    int i2 = this.a.c.size();
    localjc2.a.putInt("last_danger_of_check_new", i2).commit();
  }

  private void e()
  {
    this.s.setProgressTextVisible(8);
    this.s.setSummaryText(this.mContext.getString(2131427891));
    this.s.setProgressWithAnim(100);
    this.l.setId(2);
  }

  public final void onBackClick()
  {
    int i1;
    if (qc.h)
    {
      a(2131427829, 2131427831, 0);
      i1 = 1;
    }
    while (true)
    {
      if (i1 == 0)
        super.onBackClick();
      return;
      if (this.B)
      {
        this.C = true;
        this.D = true;
        this.B = false;
        this.s.stopAnimation();
        ((Activity)this.mContext).runOnUiThread(new aoi(this));
        this.c.a(true);
        ((Activity)this.mContext).runOnUiThread(new aol(this));
        i1 = 1;
      }
      else
      {
        boolean bool = this.y;
        i1 = 0;
        if (bool)
          if (this.a.c.size() >= 0)
          {
            int i2 = this.a.d.size();
            i1 = 0;
            if (i2 <= 0);
          }
          else
          {
            a(2131427567, 2131428792, 2);
            i1 = 1;
          }
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.E = System.currentTimeMillis();
    this.a = new um();
    this.i = ((TextView)findViewById(2131231214));
    this.j = ((TextView)findViewById(2131231213));
    this.k = ((ImageView)findViewById(2131231212));
    this.s = ((ProgressBarView)findViewById(2131231216));
    this.r = ((ScoreRollBoxView)findViewById(2131231211));
    this.t = ((ListView)findViewById(2131231059));
    this.f = ((FrameLayout)findViewById(2131231215));
    this.g = ((LinearLayout)findViewById(2131231218));
    this.h = ((LinearLayout)findViewById(2131231210));
    this.l = ((ButtonView)findViewById(2131231217));
    this.m = ((ButtonView)findViewById(2131231219));
    this.n = ((ButtonView)findViewById(2131231221));
    this.o = ((ButtonView)findViewById(2131231220));
    this.p = ((ButtonView)findViewById(2131231222));
    this.q = ((ButtonView)findViewById(2131231223));
    this.u = new aip(this.mContext, this.a.a);
    this.t.setAdapter(this.u);
    this.t.setFocusable(false);
    this.t.setFocusableInTouchMode(false);
    this.x = f.f();
    this.e = new qc(this.mContext, this.G);
    this.b = ((PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class));
    this.c = new xb(this.mContext, this.H);
    this.b.addListener(this.c);
    this.c.b(this.a.c);
    this.c.e(this.a.f);
    this.c.c(this.a.d);
    this.c.a(this.a.b);
    this.c.d(this.a.e);
    this.l.setOnClickListener(this.F);
    this.l.setClickable(false);
    this.m.setOnClickListener(this.F);
    this.n.setOnClickListener(this.F);
    this.o.setOnClickListener(this.F);
    this.p.setOnClickListener(this.F);
    this.q.setOnClickListener(this.F);
    this.s.setProgressTextVisible(0);
    this.s.setSummaryText(null);
    this.l.setId(1);
    this.w = 100;
    this.r.setScore(this.w);
    this.v = 0;
    this.s.setProgressWithAnim(this.v);
    new Handler().postDelayed(new aob(this), 1000L);
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return super.onCreateOptionsMenu(paramMenu);
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.r.detroy();
    this.e.i = true;
    if (this.c != null)
      this.b.removeListener(this.c);
    qc.g = false;
    System.gc();
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return true;
  }

  public final void onPause()
  {
    super.onPause();
    this.d = false;
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return super.onPrepareOptionsMenu(paramMenu);
  }

  public final void onResume()
  {
    super.onResume();
    this.d = true;
    if (getFrameworkTemplateUI() != null)
    {
      getFrameworkTemplateUI().setInfoBarStyle((byte)49);
      getFrameworkTemplateUI().setBackButtonStyle((byte)1);
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427885);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)0);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)50);
    paramFrameworkTemplateUI.setInfoBarWithoutShadow();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aoa
 * JD-Core Version:    0.6.2
 */