import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.widget.TextView;
import com.tencent.lbsapi.model.QLBSPosition;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.SpinnerView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.RunableTaskManager;
import java.util.ArrayList;
import java.util.List;

public final class bam extends BaseView
{
  private boolean a = false;
  private boolean b = false;
  private boolean c;
  private int d;
  private ho e;
  private iu f;
  private wr g;
  private RunableTaskManager h;
  private TextView i;
  private SpinnerView j;
  private final List<String> k = new ArrayList();
  private final List<String> l = new ArrayList();
  private SpinnerView m;
  private final List<String> n = new ArrayList();
  private final List<String> o = new ArrayList();
  private SpinnerView p;
  private final List<String> q = new ArrayList();
  private final List<String> r = new ArrayList();
  private SpinnerView s;
  private final List<String> t = new ArrayList();
  private final List<String> u = new ArrayList();

  public bam(Context paramContext)
  {
    super(paramContext, 2130903155);
    this.mContext = paramContext;
    this.d = 3;
    this.e = ho.a();
    this.f = new iu(QQPimApplication.a());
    this.g = wr.a(this.mContext);
    this.h = ((RunableTaskManager)ManagerCreator.getManager(RunableTaskManager.class));
    Bundle localBundle = getActivity().getIntent().getExtras();
    if (localBundle != null)
    {
      this.c = localBundle.getBoolean("report_check", false);
      this.d = localBundle.getInt("guide_type", 3);
    }
  }

  private void a()
  {
    if (!this.a)
    {
      QLBSPosition localQLBSPosition = new iy(QQPimApplication.a()).a();
      if (localQLBSPosition != null)
        this.a = fs.a(this.k, this.l, localQLBSPosition.getProvince());
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.d == 1);
    for (OperatingModel localOperatingModel = (OperatingModel)getOperatingBarDataList().get(1); ; localOperatingModel = (OperatingModel)getOperatingBarDataList().get(0))
    {
      localOperatingModel.setEnable(paramBoolean);
      refreshOperatingBar(localOperatingModel);
      return;
    }
  }

  private void b()
  {
    if (!this.b)
    {
      QLBSPosition localQLBSPosition = new iy(QQPimApplication.a()).a();
      if (localQLBSPosition != null)
        this.b = fs.a(this.n, this.o, localQLBSPosition.getCity());
    }
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.c)
    {
      localArrayList.add(new OperatingModel(1, 2131429158, 0));
      localArrayList.add(new OperatingModel(2, 2131428286));
    }
    while (true)
    {
      return localArrayList;
      if (this.d == 1)
      {
        localArrayList.add(new OperatingModel(1, 2131429158, 0));
        localArrayList.add(new OperatingModel(2, 2131429159));
      }
      else
      {
        localArrayList.add(new OperatingModel(3, 2131427397));
        localArrayList.add(new OperatingModel(4, 2131427379, 0));
      }
    }
  }

  public final void onCreate()
  {
    int i1 = -1;
    int i2 = 0;
    super.onCreate();
    this.i = ((TextView)findViewById(2131231019));
    String str1;
    int i3;
    if (this.c)
    {
      this.i.setText(2131429146);
      wr.a(this.g.l(), this.k, this.l);
      a();
      this.j = ((SpinnerView)findViewById(2131231021));
      str1 = this.e.cr();
      if ((str1 != null) && (!"".equals(str1)))
        break label710;
      i3 = i1;
    }
    while (true)
    {
      this.j.init(2131429134, this.l, i3);
      String str8;
      int i4;
      if (i3 >= 0)
      {
        wr.a(this.g.a(str1), this.n, this.o);
        b();
        str8 = this.e.cs();
        if ((str8 == null) || ("".equals(str8)))
          i4 = i1;
      }
      label802: label830: label836: 
      while (true)
      {
        this.m = ((SpinnerView)findViewById(2131231022));
        this.m.init(2131429135, this.o, i4);
        label220: String str2;
        int i5;
        if (i4 < 0)
        {
          a(false);
          this.m.setOnSelectChangeListener(new bap(this));
          baq localbaq = new baq(this);
          this.m.setOnClickListener(localbaq);
          bar localbar = new bar(this);
          this.j.setOnClickListener(localbar);
          this.j.setOnSelectChangeListener(new bas(this));
          wr.a(this.g.m(), this.q, this.r);
          this.p = ((SpinnerView)findViewById(2131231023));
          str2 = this.e.ct();
          if ((str2 != null) && (!"".equals(str2)))
            break label915;
          i5 = ft.d();
          if (i5 != 0)
            break label802;
          str2 = "CMCC";
        }
        label364: for (String str3 = str2; ; str3 = str2)
        {
          int i6;
          if (str3 != null)
          {
            i6 = 0;
            label376: if (i6 < this.q.size())
            {
              if (!str3.equals(this.q.get(i6)))
                break label830;
              i1 = i6;
            }
          }
          this.p.init(2131429136, this.r, i1);
          String str6;
          String str7;
          if (i1 >= 0)
          {
            wr.a(this.g.b(str3), this.t, this.u);
            str6 = this.e.cu();
            if ((str6 != null) && (!"".equals(str6)))
              break label906;
            if (!((String)this.q.get(i1)).equals("CMCC"))
              break label836;
            str7 = "20000";
          }
          while (true)
          {
            if (i2 < this.t.size())
            {
              if (str7.equals(this.t.get(i2)))
                i1 = i2;
            }
            else
            {
              this.s = ((SpinnerView)findViewById(2131231024));
              this.s.init(2131429137, this.u, i1);
              ban localban = new ban(this);
              this.s.setOnClickListener(localban);
              this.p.setOnSelectChangeListener(new bao(this, localban));
              String str4 = this.e.cr();
              String str5 = this.e.cs();
              if ((new iy(QQPimApplication.a()).a() == null) && ((str4 == null) || ("".equals(str4)) || (str5 == null) || ("".equals(str5))))
                iv.a().c();
              return;
              if (this.d == 2)
              {
                this.i.setText(2131429145);
                break;
              }
              this.i.setText(2131429144);
              break;
              for (i3 = 0; ; i3++)
              {
                if (i3 >= this.k.size())
                  break label929;
                if (str1.equals(this.k.get(i3)))
                  break;
              }
              for (i4 = 0; ; i4++)
              {
                if (i4 >= this.n.size())
                  break label922;
                if (str8.equals(this.n.get(i4)))
                  break;
              }
              a(true);
              break label220;
              if (i5 == 1)
              {
                str2 = "UNICOM";
                break label364;
              }
              if (i5 != 2)
                break label364;
              str2 = "TELECOM";
              break label364;
              i6++;
              break label376;
              if (((String)this.q.get(i1)).equals("UNICOM"))
              {
                str7 = "70000";
                i2 = 0;
                continue;
              }
              if (!((String)this.q.get(i1)).equals("TELECOM"))
                break label906;
              str7 = "60000";
              i2 = 0;
              continue;
            }
            i2++;
            continue;
            str7 = str6;
            i2 = 0;
          }
        }
        label710: i4 = i3;
      }
      label906: label915: label922: label929: i3 = 0;
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    Bundle localBundle;
    if (paramOperatingModel.getID() == 1)
    {
      localBundle = new Bundle();
      if (this.c)
      {
        localBundle.putBoolean("intent_from", true);
        fs.a(getActivity(), fs.a, localBundle);
        getActivity().finish();
      }
    }
    while (true)
    {
      return;
      localBundle.putBoolean("intent_from", false);
      break;
      if ((paramOperatingModel.getID() == 2) || (paramOperatingModel.getID() == 3))
      {
        if ((this.j.getSelectedIndex() < 0) || (this.m.getSelectedIndex() < 0) || (this.p.getSelectedIndex() < 0) || (this.s.getSelectedIndex() < 0))
        {
          ha.b(this.mContext, 2131429150);
        }
        else
        {
          if (this.c)
          {
            wh.a().b();
            this.h.addTask(new bat(this), 0L);
            ha.b(this.mContext, 2131427979);
            new iy(QQPimApplication.a()).b.putBoolean("network_had_reported", true).commit();
          }
          while (true)
          {
            this.f.c(true);
            this.f.a(false);
            this.f.d(true);
            this.f.k();
            ((Activity)this.mContext).finish();
            break;
            this.h.addTask(new bau(this), 0L);
          }
        }
      }
      else if (paramOperatingModel.getID() == 4)
        ((Activity)this.mContext).finish();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    if (this.c)
      paramFrameworkTemplateUI.setTitleTextData(2131428285);
    while (true)
    {
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setOptionButtonStyle((byte)16);
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131429151);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bam
 * JD-Core Version:    0.6.2
 */