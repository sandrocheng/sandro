import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.view.Menu;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofBindQQGuideActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofFarControlActivity;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofSettingActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import java.util.List;

public final class bfq extends BaseView
  implements AdapterView.OnItemClickListener
{
  private ho a;
  private AntitheftManager b;
  private TabAdapter c;
  private ImageView d;
  private Animation e = AnimationUtils.loadAnimation(this.mContext, 2130968588);
  private Animation f = AnimationUtils.loadAnimation(this.mContext, 2130968589);
  private boolean g = true;
  private Animation.AnimationListener h = new bfr(this);

  public bfq(Context paramContext)
  {
    super(paramContext, 2130903208);
  }

  public final void onCreate()
  {
    super.onCreate();
    this.a = ho.a();
    this.b = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
    ListView localListView = (ListView)findViewById(2131230930);
    this.d = ((ImageView)findViewById(2131231247));
    this.c = new TabAdapter(this.mContext, 7, 2);
    localListView.setAdapter(this.c);
    localListView.setOnItemClickListener(this);
    int i = this.a.bV();
    if ((i == 0) || (i == 1))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this.mContext, PickproofBindQQGuideActivity.class);
      localIntent.setFlags(67108864);
      this.mContext.startActivity(localIntent);
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return super.onCreateOptionsMenu(paramMenu);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    switch (((TabModel)this.c.getDataList().get(paramInt)).getID())
    {
    default:
    case 18:
    case 19:
    case 20:
    case 21:
    }
    while (true)
    {
      return;
      Intent localIntent4 = new Intent();
      localIntent4.putExtra("cmd_type", 0);
      localIntent4.setClass(this.mContext, PickproofFarControlActivity.class);
      this.mContext.startActivity(localIntent4);
      continue;
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("cmd_type", 1);
      localIntent3.setClass(this.mContext, PickproofFarControlActivity.class);
      this.mContext.startActivity(localIntent3);
      continue;
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("cmd_type", 2);
      localIntent2.setClass(this.mContext, PickproofFarControlActivity.class);
      this.mContext.startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("cmd_type", 3);
      localIntent1.setClass(this.mContext, PickproofFarControlActivity.class);
      this.mContext.startActivity(localIntent1);
    }
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.mContext, PickproofSettingActivity.class);
    this.mContext.startActivity(localIntent);
  }

  public final void onResume()
  {
    super.onResume();
    TextView localTextView = (TextView)findViewById(2131231130);
    ButtonView localButtonView = (ButtonView)findViewById(2131231249);
    String str = this.b.getPassword();
    if ((str != null) && (!"".equals(str)))
      if (this.a.bD())
      {
        ((ImageView)findViewById(2131231212)).setImageResource(2130837907);
        localTextView.setText(2131429346);
        localTextView.setTextColor(this.mContext.getResources().getColor(2131296309));
        ((TextView)findViewById(2131231248)).setText(2131429343);
        localButtonView.setVisibility(8);
        this.d.startAnimation(this.e);
        this.e.setAnimationListener(this.h);
        this.f.setAnimationListener(this.h);
        this.g = true;
      }
    while (true)
    {
      this.c.notifyDataSetChanged();
      return;
      ((ImageView)findViewById(2131231212)).setImageResource(2130837906);
      localTextView.setText(2131429345);
      localTextView.setTextColor(this.mContext.getResources().getColor(2131296307));
      ((TextView)findViewById(2131231248)).setText(2131429344);
      break;
      ((ImageView)findViewById(2131231212)).setImageResource(2130837906);
      localTextView.setText(2131429345);
      localTextView.setTextColor(this.mContext.getResources().getColor(2131296307));
      ((TextView)findViewById(2131231248)).setText(2131429342);
      localButtonView.setVisibility(0);
      localButtonView.setOnClickListener(new bfs(this));
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setTitleTextData(2131429289);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfq
 * JD-Core Version:    0.6.2
 */