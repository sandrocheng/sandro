package com.tencent.qqpimsecure.ui.activity.market;

import QQPIM.FeatureKey;
import agj;
import agl;
import agm;
import agn;
import ago;
import agp;
import agq;
import agr;
import ags;
import agt;
import agu;
import agv;
import agx;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.format.Formatter;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RatingBar;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.slide.SlideCallBackInterface;
import com.tencent.qqpimsecure.uilib.view.slide.SlideLayout;
import com.tencent.qqpimsecure.uilib.view.slide.SlidePoint;
import com.tencent.qqpimsecure.uilib.view.slide.SlideViewGroup;
import com.tencent.tmsecure.common.BaseServiceConnection;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.networkload.DownloadServiceBinder;
import com.tencent.tmsecure.module.software.SoftwareManager;
import is;
import java.util.ArrayList;
import java.util.List;
import jt;
import k;
import kv;
import kw;
import la;
import lv;
import mp;
import mv;
import of;
import sl;

public class WeekRecDialog extends Activity
  implements AdapterView.OnItemSelectedListener, SlideCallBackInterface
{
  private List<la> a;
  private List<kw> b;
  private ArrayList<LinearLayout> c;
  private jt d;
  private ArrayList<mv> e;
  private ArrayList<a> f;
  private la g;
  private sl h;
  private SoftwareManager i;
  private DownloadServiceBinder j;
  private BaseServiceConnection k = new BaseServiceConnection(WeekRecDialog.class);
  private FeatureKey l;
  private int[] m = new int[0];
  private LinearLayout n;
  private SlidePoint o;
  private SlideLayout p;
  private LayoutInflater q;
  private sl r;

  private LinearLayout a()
  {
    LinearLayout localLinearLayout1 = (LinearLayout)this.q.inflate(2130903172, null);
    LinearLayout localLinearLayout2 = (LinearLayout)localLinearLayout1.findViewById(2131231114);
    localLinearLayout2.setVisibility(4);
    LinearLayout localLinearLayout3 = (LinearLayout)localLinearLayout1.findViewById(2131231117);
    localLinearLayout3.setVisibility(4);
    LinearLayout localLinearLayout4 = (LinearLayout)localLinearLayout1.findViewById(2131231120);
    localLinearLayout4.setVisibility(4);
    LinearLayout localLinearLayout5 = (LinearLayout)localLinearLayout1.findViewById(2131231123);
    localLinearLayout5.setVisibility(4);
    LinearLayout localLinearLayout6 = (LinearLayout)localLinearLayout1.findViewById(2131231126);
    localLinearLayout6.setVisibility(4);
    int i2;
    for (int i1 = 0; ; i1 = i2)
    {
      if ((this.a.size() > 0) && (i1 < 5))
      {
        if (i1 != 0)
          break label218;
        localLinearLayout2.setVisibility(0);
        ((TextView)localLinearLayout1.findViewById(2131231115)).setText(((la)this.a.get(i1)).c());
        ((TextView)localLinearLayout1.findViewById(2131231116)).setText(((la)this.a.get(i1)).f());
        localLinearLayout2.setOnClickListener(new agq(this));
      }
      while (true)
      {
        i2 = i1 + 1;
        if (i2 < this.a.size())
          break;
        return localLinearLayout1;
        label218: if (i1 == 1)
        {
          localLinearLayout3.setVisibility(0);
          ((TextView)localLinearLayout1.findViewById(2131231118)).setText(((la)this.a.get(i1)).c());
          ((TextView)localLinearLayout1.findViewById(2131231119)).setText(((la)this.a.get(i1)).f());
          localLinearLayout3.setOnClickListener(new agr(this));
        }
        else if (i1 == 2)
        {
          localLinearLayout4.setVisibility(0);
          ((TextView)localLinearLayout1.findViewById(2131231121)).setText(((la)this.a.get(i1)).c());
          ((TextView)localLinearLayout1.findViewById(2131231122)).setText(((la)this.a.get(i1)).f());
          localLinearLayout4.setOnClickListener(new ags(this));
        }
        else if (i1 == 3)
        {
          localLinearLayout5.setVisibility(0);
          ((TextView)localLinearLayout1.findViewById(2131231124)).setText(((la)this.a.get(i1)).c());
          ((TextView)localLinearLayout1.findViewById(2131231125)).setText(((la)this.a.get(i1)).f());
          localLinearLayout5.setOnClickListener(new agt(this));
        }
        else if (i1 == 4)
        {
          localLinearLayout6.setVisibility(0);
          ((TextView)localLinearLayout1.findViewById(2131231127)).setText(((la)this.a.get(i1)).c());
          ((TextView)localLinearLayout1.findViewById(2131231128)).setText(((la)this.a.get(i1)).f());
          localLinearLayout6.setOnClickListener(new agu(this));
        }
      }
    }
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    LinearLayout localLinearLayout1 = (LinearLayout)this.n.findViewById(2131231131);
    LinearLayout localLinearLayout2 = (LinearLayout)this.n.findViewById(2131231132);
    this.p = new SlideLayout(this);
    this.g = ((la)this.a.get(paramInt));
    this.b = this.d.b(this.g.c());
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    int i1 = 0;
    kw localkw;
    int i4;
    if (i1 < this.b.size())
    {
      localkw = (kw)this.b.get(i1);
      i4 = 0;
      label128: if (i4 >= this.e.size())
        break label627;
      if (localkw.getPackageName().hashCode() != ((mv)this.e.get(i4)).b);
    }
    label185: label627: for (int i5 = 1; ; i5 = 0)
    {
      if (i5 == 0)
        localArrayList1.add(localkw);
      int i6 = 0;
      if (i6 < this.f.size())
        if (localkw.getPackageName().hashCode() != ((a)this.f.get(i6)).b);
      for (int i7 = 1; ; i7 = 0)
      {
        if (i7 == 0)
          localArrayList2.add(localkw);
        i1++;
        break;
        i4++;
        break label128;
        i6++;
        break label185;
        try
        {
          b(localArrayList1);
          a(localArrayList2);
          int i2 = this.b.size();
          if (i2 == 1)
            i2 = 0;
          this.o = new SlidePoint(this, i2 + 1, 2);
          this.o.setPointType(2);
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
          localLinearLayout2.addView(this.o, localLayoutParams);
          this.p.addSlideCallBackInterface(this);
          for (int i3 = 0; i3 < this.b.size(); i3++)
          {
            LinearLayout localLinearLayout4 = (LinearLayout)this.q.inflate(2130903174, null);
            a(localLinearLayout4, (kw)this.b.get(i3));
            this.c.add(localLinearLayout4);
            SlideViewGroup localSlideViewGroup2 = new SlideViewGroup(this);
            localSlideViewGroup2.addView(localLinearLayout4, new LinearLayout.LayoutParams(-1, -2));
            this.p.addView(localSlideViewGroup2, new LinearLayout.LayoutParams(-1, -2));
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
          LinearLayout localLinearLayout3 = a();
          SlideViewGroup localSlideViewGroup1 = new SlideViewGroup(this);
          localSlideViewGroup1.addView(localLinearLayout3, new LinearLayout.LayoutParams(-1, -2));
          this.p.addView(localSlideViewGroup1, new LinearLayout.LayoutParams(-1, -2));
          if (this.b.size() == 1)
            this.p.isAllowSlideView = false;
          localLinearLayout1.addView(this.p, new LinearLayout.LayoutParams(-1, -2));
          if (paramBoolean)
          {
            setContentView(this.n);
            this.n.findViewById(2131231129).setOnClickListener(new agj(this));
          }
          ((TextView)this.n.findViewById(2131231130)).setText(this.g.c());
          b();
          return;
        }
      }
    }
  }

  public static void a(Context paramContext)
  {
    is.a(QQPimApplication.a()).a(false);
    Intent localIntent = new Intent(paramContext, WeekRecDialog.class);
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  private void a(LinearLayout paramLinearLayout, kw paramkw)
  {
    int i1 = 0;
    if (i1 < this.e.size())
      if (paramkw.getPackageName().hashCode() != ((mv)this.e.get(i1)).b);
    while (true)
    {
      label91: int i2;
      if (i1 != -1)
      {
        ImageView localImageView = (ImageView)paramLinearLayout.findViewById(2131231133);
        localImageView.setVisibility(0);
        localImageView.setImageDrawable(((mv)this.e.get(i1)).a);
        paramLinearLayout.findViewById(2131231134).setVisibility(8);
        i2 = 0;
        label94: if (i2 >= this.f.size())
          break label667;
        if (paramkw.getPackageName().hashCode() != ((a)this.f.get(i2)).b)
          break label624;
      }
      while (true)
      {
        if (i2 != -1)
          ((ImageView)paramLinearLayout.findViewById(2131231135)).setImageDrawable(((a)this.f.get(i2)).a);
        label184: long l1;
        String str4;
        label418: StringBuilder localStringBuilder2;
        String str5;
        Object[] arrayOfObject4;
        StringBuilder localStringBuilder3;
        long l2;
        if (paramkw.L() == 1)
        {
          paramLinearLayout.findViewById(2131231137).setVisibility(0);
          ((RatingBar)paramLinearLayout.findViewById(2131231141)).setRating(paramkw.l());
          ((TextView)paramLinearLayout.findViewById(2131231140)).setText(k.a(this, paramkw.g()));
          new StringBuilder(" initMainView getDownLoadTimesText ").append(k.a(this, paramkw.g())).toString();
          TextView localTextView1 = (TextView)paramLinearLayout.findViewById(2131231142);
          String str1 = getString(2131429796);
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = paramkw.getVersion();
          localTextView1.setText(String.format(str1, arrayOfObject1));
          StringBuilder localStringBuilder1 = new StringBuilder(" initMainView soft_version_hit ");
          String str2 = getString(2131429796);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = paramkw.getVersion();
          localStringBuilder1.append(String.format(str2, arrayOfObject2)).toString();
          TextView localTextView2 = (TextView)paramLinearLayout.findViewById(2131231143);
          String str3 = getString(2131429797);
          Object[] arrayOfObject3 = new Object[1];
          l1 = paramkw.getSize();
          if (l1 != -1L)
            break label645;
          str4 = "0";
          arrayOfObject3[0] = str4;
          localTextView2.setText(String.format(str3, arrayOfObject3));
          localStringBuilder2 = new StringBuilder(" initMainView soft_size ");
          str5 = getString(2131429797);
          arrayOfObject4 = new Object[1];
          localStringBuilder3 = new StringBuilder().append(getString(2131428886));
          l2 = 1000L * paramkw.getSize();
          if (l2 != -1L)
            break label656;
        }
        label645: label656: for (String str6 = "0"; ; str6 = Formatter.formatFileSize(this, l2))
        {
          arrayOfObject4[0] = str6;
          localStringBuilder2.append(String.format(str5, arrayOfObject4)).toString();
          ((TextView)paramLinearLayout.findViewById(2131231144)).setText(paramkw.M());
          ((TextView)paramLinearLayout.findViewById(2131231136)).setText(paramkw.getAppName());
          new StringBuilder(" initMainView soft_info ").append(paramkw.M()).toString();
          return;
          i1++;
          break;
          paramLinearLayout.findViewById(2131231133).setVisibility(8);
          paramLinearLayout.findViewById(2131231134).setVisibility(0);
          break label91;
          label624: i2++;
          break label94;
          paramLinearLayout.findViewById(2131231137).setVisibility(8);
          break label184;
          str4 = Formatter.formatFileSize(this, l1);
          break label418;
        }
        label667: i2 = -1;
      }
      i1 = -1;
    }
  }

  private void a(List<kw> paramList)
  {
    int i1 = paramList.size();
    for (int i2 = 0; i2 < i1; i2++)
    {
      kw localkw = (kw)paramList.get(i2);
      lv locallv = new lv();
      locallv.b = 0;
      locallv.g = localkw.getPackageName().hashCode();
      locallv.d = localkw.h();
      locallv.a = 0;
      locallv.i = new agv(this, locallv.g);
      this.r.b(locallv);
    }
  }

  private void b()
  {
    int i1 = 0;
    kw localkw;
    kv localkv1;
    if (i1 < this.b.size())
    {
      localkw = (kw)this.b.get(i1);
      String str = localkw.getPackageName();
      if (str == null)
        str = "";
      this.l = new FeatureKey(str, localkw.getAppName(), localkw.d(), localkw.D(), localkw.getCertMD5(), (int)localkw.getSize());
      localkv1 = of.a(this.l.uniCode, this.j.getAllTasks());
      if (localkv1 == null)
        localkv1 = of.a(this.l.uniCode);
      if ((localkv1 == null) || (localkv1.d == null))
      {
        localkv1 = new kv(localkw);
        localkv1.b = this.g.b();
        localkv1.c = i1;
        of.a(localkv1);
      }
      if ((localkv1 != null) && (localkv1.d != null) && (this.l.cert != null) && (this.l.cert.equals(localkv1.d.getCertMD5())) && (localkv1.d.D() >= this.l.versionCode))
        break label859;
    }
    label859: for (kv localkv2 = new kv(); ; localkv2 = localkv1)
    {
      int i2 = this.i.getAppVersionStatus(this.l.getUniCode(), localkw.D());
      ButtonView localButtonView;
      switch (i2)
      {
      default:
        int[] arrayOfInt = this.m;
        LinearLayout localLinearLayout = (LinearLayout)this.c.get(i1);
        if (arrayOfInt != null)
        {
          localButtonView = (ButtonView)localLinearLayout.findViewById(2131231145);
          switch (arrayOfInt[0])
          {
          case 2:
          case 6:
          case 7:
          default:
          case 0:
          case 1:
          case 3:
          case 4:
          case 5:
          case 8:
          case 9:
          }
        }
        break;
      case -2:
      case -1:
      case 1:
      case 0:
      case 2:
      }
      while (true)
      {
        i1++;
        break;
        switch (localkv2.mState)
        {
        default:
          break;
        case -4:
        case -3:
        case -2:
          if (i2 == -1)
          {
            if (localkv2.mState == -2)
            {
              this.m = new int[] { 0 };
              break;
            }
            if (localkv2.mState != -3)
              break;
            localkv2.mState = 3;
            this.m = new int[] { 1 };
            break;
          }
          if ((i2 == 1) || (localkv2.mState == -4))
          {
            if (localkv2.d.isSystemApp())
            {
              this.m = new int[] { 3 };
              break;
            }
            this.m = new int[] { 3 };
            break;
          }
          if (localkv2.mState != -2)
            break;
          this.m = new int[] { 9 };
          break;
        case -1:
          this.m = new int[] { 8 };
          break;
        case 0:
          this.m = new int[] { 4 };
          break;
        case 1:
        case 2:
          this.m = new int[] { 5 };
          break;
        case 3:
          this.m = new int[] { 1 };
          break;
          localButtonView.setText(getString(2131428121));
          localButtonView.setOnClickListener(new agl(this, localkv2));
          localButtonView.setButtonEnabled(true);
          continue;
          localButtonView.setText(getString(2131427342));
          localButtonView.setOnClickListener(new agm(this, localkv2));
          localButtonView.setButtonEnabled(true);
          continue;
          localButtonView.setText(getString(2131428347));
          localButtonView.setOnClickListener(new agn(this, localkv2));
          localButtonView.setButtonEnabled(true);
          continue;
          localButtonView.setText(getString(2131428329));
          localButtonView.setOnClickListener(new ago(this, localkv2));
          localButtonView.setButtonEnabled(true);
          continue;
          localButtonView.setText(getString(2131427417));
          localButtonView.setOnClickListener(new agp(this, localkv2));
          localButtonView.setButtonEnabled(true);
          continue;
          localButtonView.setText(getString(2131429640));
          localButtonView.setButtonEnabled(false);
          continue;
          localButtonView.setText(getString(2131428591));
          localButtonView.setButtonEnabled(false);
        }
      }
      return;
    }
  }

  private void b(List<kw> paramList)
    throws Exception
  {
    for (int i1 = -1 + paramList.size(); i1 >= 0; i1--)
    {
      kw localkw = (kw)paramList.get(i1);
      lv locallv = new lv();
      locallv.b = 0;
      locallv.g = localkw.getPackageName().hashCode();
      locallv.d = localkw.O();
      locallv.a = 2;
      locallv.i = new agx(this, locallv.g);
      this.h.b(locallv);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.f = new ArrayList();
    this.e = new ArrayList();
    this.c = new ArrayList();
    this.d = new jt();
    this.h = new sl();
    this.r = new sl();
    this.i = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    TMSService.startService(new of());
    this.j = ((DownloadServiceBinder)TMSService.bindService(of.class, this.k));
    this.a = this.d.b();
    if ((this.a == null) || (this.a.size() <= 0))
      finish();
    while (true)
    {
      return;
      this.q = LayoutInflater.from(this);
      this.n = ((LinearLayout)this.q.inflate(2130903173, null));
      a(0, true);
    }
  }

  protected void onDestroy()
  {
    if (this.h != null)
      this.h.e();
    if (this.r != null)
      this.r.e();
    if (this.a != null)
    {
      this.a.clear();
      this.a = null;
    }
    if (this.b != null)
    {
      this.b.clear();
      this.b = null;
    }
    if (this.o != null)
      this.o = null;
    if (this.p != null)
      this.p = null;
    if (this.d != null)
      this.d = null;
    if (this.e != null)
    {
      this.e.clear();
      this.e = null;
    }
    if (this.f != null)
    {
      this.f.clear();
      this.f = null;
    }
    if (this.g != null)
      this.g = null;
    TMSService.unBindService(of.class, this.k);
    this.k = null;
    if (of.a())
      TMSService.stopService(of.class);
    super.onDestroy();
  }

  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.o.setCurrentFourceIndex(paramInt);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onNextCanvas(int paramInt)
  {
    this.o.setCurrentFourceIndex(paramInt);
    b();
    if (this.o.getCurrentFourceIndex() == this.c.size())
      ((TextView)this.n.findViewById(2131231130)).setText(getString(2131427519));
    while (true)
    {
      return;
      ((TextView)this.n.findViewById(2131231130)).setText(this.g.c());
    }
  }

  public void onNothingSelected(AdapterView<?> paramAdapterView)
  {
  }

  protected void onPause()
  {
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    b();
  }

  public void onSlideStart()
  {
  }

  public void onSlideStop()
  {
  }

  public final class a
  {
    public Drawable a;
    public int b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.market.WeekRecDialog
 * JD-Core Version:    0.6.2
 */