import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class brk extends BaseView
  implements View.OnClickListener
{
  private Context a;
  private LinearLayout b;
  private LinearLayout c;
  private TextView d;
  private TextView e;
  private List<ms> f;
  private List<ms> g;
  private mu h;

  public brk(Context paramContext)
  {
    super(paramContext, 2130903241);
    this.a = paramContext;
  }

  private View a(ms paramms)
  {
    Object localObject = null;
    if (paramms == null)
      return localObject;
    View localView = LayoutInflater.from(this.a).inflate(2130903338, null);
    localView.setTag(paramms);
    TextView localTextView1 = (TextView)localView.findViewById(2131231364);
    TextView localTextView2 = (TextView)localView.findViewById(2131231639);
    localTextView1.setText(paramms.e.softName);
    switch (paramms.e.type)
    {
    case 1:
    case 4:
    case 5:
    case 6:
    case 7:
    default:
    case 3:
    case 8:
    case 2:
    case 0:
    }
    while (true)
    {
      localObject = localView;
      break;
      String str2 = paramms.e.discription;
      if (str2 == null)
        str2 = "";
      localTextView2.setText(str2);
      continue;
      String str1 = paramms.e.discription;
      if (str1 == null)
        str1 = "";
      localTextView2.setText(str1);
      continue;
      localTextView2.setText(this.a.getResources().getString(2131428439));
    }
  }

  private void a()
  {
    List localList = this.h.i;
    this.f = new ArrayList();
    this.g = new ArrayList();
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext())
    {
      ms localms2 = (ms)localIterator1.next();
      if ((localms2.e.type == 3) || (localms2.e.type == 8))
        if (localms2.b == 1)
          this.g.add(localms2);
        else if (localms2.b == 0)
          this.f.add(localms2);
    }
    Iterator localIterator2 = localList.iterator();
    while (localIterator2.hasNext())
    {
      ms localms1 = (ms)localIterator2.next();
      if (localms1.e.type == 2)
        if (localms1.b == 1)
          this.g.add(localms1);
        else if (localms1.b == 0)
          this.f.add(localms1);
    }
  }

  private void b()
  {
    if (this.f.size() > 0)
    {
      this.b.removeAllViews();
      this.d.setVisibility(0);
      this.d.setText(this.a.getResources().getString(2131428524) + "(" + this.f.size() + ")");
      int k = this.f.size();
      for (int m = 0; m < k; m++)
        this.b.addView(a((ms)this.f.get(m)));
      this.b.setVisibility(0);
    }
    while (this.g.size() > 0)
    {
      this.c.removeAllViews();
      this.e.setVisibility(0);
      this.e.setText(this.a.getResources().getString(2131428522) + "(" + this.g.size() + ")");
      int i = this.g.size();
      int j = 0;
      while (true)
        if (j < i)
        {
          this.c.addView(a((ms)this.g.get(j)));
          j++;
          continue;
          this.d.setVisibility(8);
          this.b.setVisibility(8);
          break;
        }
      this.c.setVisibility(0);
    }
    while (true)
    {
      ((TextView)findViewById(2131231287)).setText(this.a.getResources().getString(2131428509) + this.h.d);
      ((TextView)findViewById(2131231288)).setText(this.a.getResources().getString(2131428510) + this.h.g);
      ((TextView)findViewById(2131231289)).setText(this.a.getResources().getString(2131428511) + this.h.e);
      ((TextView)findViewById(2131231290)).setText(this.a.getResources().getString(2131428513) + this.h.f);
      return;
      this.e.setVisibility(8);
      this.c.setVisibility(8);
    }
  }

  public final void onClick(View paramView)
  {
    b();
  }

  public final void onCreate()
  {
    super.onCreate();
    this.h = ((mu)((Activity)this.a).getIntent().getSerializableExtra("data"));
    if (this.h == null)
      this.h = new mu(-1L, 0, "", 0, 0, 0, 0, new ArrayList());
    this.b = ((LinearLayout)findViewById(2131231292));
    this.c = ((LinearLayout)findViewById(2131231294));
    this.d = ((TextView)findViewById(2131231291));
    this.e = ((TextView)findViewById(2131231293));
    ((TextView)findViewById(2131231286)).setText(this.a.getString(2131428506) + this.h.c);
    a();
  }

  public final void onResume()
  {
    super.onResume();
    b();
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    getFrameworkTemplateUI().setInfoBarStyle((byte)49);
    paramFrameworkTemplateUI.setTitleTextData(2131428007);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brk
 * JD-Core Version:    0.6.2
 */