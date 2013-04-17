import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import java.util.List;

public final class aiz extends BaseAdapter
{
  private List<PreferenceAdapterModel> a;
  private LayoutInflater b;
  private Context c;
  private final String d = QQPimApplication.a().getResources().getString(2131428362);
  private final String e = QQPimApplication.a().getResources().getString(2131428363);

  public aiz(Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    this.c = paramContext;
  }

  public final void a(List<PreferenceAdapterModel> paramList)
  {
    if (paramList != null)
      this.a = paramList;
  }

  public final int getCount()
  {
    if (this.a != null);
    for (int i = this.a.size(); ; i = 0)
      return i;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      View localView2;
      if ((this.a != null) && (this.a.size() > paramInt))
      {
        localView2 = this.b.inflate(2130903162, null);
        CheckBoxView localCheckBoxView = (CheckBoxView)localView2.findViewById(2131231052);
        localCheckBoxView.setClickable(false);
        localCheckBoxView.setEnabled(false);
        localCheckBoxView.setFocusable(false);
        if (((IpDialManager)ManagerCreator.getManager(IpDialManager.class)).getIpDialSetting().getIpDialMode() == 2)
          break label357;
      }
      label315: label327: label354: label357: for (boolean bool = true; ; bool = false)
      {
        TextView localTextView1;
        TextView localTextView2;
        if (paramInt == 0)
        {
          localView2.findViewById(2131231051).setVisibility(8);
          localView2.findViewById(2131231052).setVisibility(0);
          ((CheckBoxView)localView2.findViewById(2131231052)).setChecked(bool);
          localTextView1 = (TextView)localView2.findViewById(2131230754);
          localTextView2 = (TextView)localView2.findViewById(2131231050);
          if ((paramInt == 0) || (paramInt != 1))
            break label327;
          if (ii.a().a.getInt("auto_cache", 1) != 0)
            break label315;
          localTextView2.setText(this.d);
        }
        while (true)
        {
          localTextView1.setText(((PreferenceAdapterModel)this.a.get(paramInt)).getTitle());
          localView1 = localView2;
          break label354;
          localView2.findViewById(2131231052).setVisibility(8);
          localView2.findViewById(2131231051).setVisibility(0);
          LinearLayout localLinearLayout1 = (LinearLayout)localView2.findViewById(2131231048);
          LinearLayout localLinearLayout2 = (LinearLayout)localView2.findViewById(2131231047);
          if (!bool)
          {
            localLinearLayout1.setAnimation(AnimationUtils.loadAnimation(this.c, 2130968576));
            localLinearLayout2.setBackgroundResource(2130837921);
            break;
          }
          localLinearLayout1.setAnimation(AnimationUtils.loadAnimation(this.c, 2130968581));
          localLinearLayout2.setBackgroundResource(2130837920);
          break;
          localTextView2.setText(this.e);
          continue;
          localTextView2.setText(((PreferenceAdapterModel)this.a.get(paramInt)).getSummary());
        }
        localView1 = null;
        return localView1;
      }
    }
    catch (Exception localException)
    {
      while (true)
        View localView1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aiz
 * JD-Core Version:    0.6.2
 */