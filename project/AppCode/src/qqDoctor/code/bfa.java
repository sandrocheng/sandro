import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.service.OnTabResumeListener;
import com.tencent.qqpimsecure.uilib.ui.adapter.PickproofPreferenceAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bfa extends BaseListView<PreferenceAdapterModel>
  implements OnTabResumeListener, ListPreferenceView.OnListPreferenceChangeListener
{
  private ho a;
  private Context b;
  private AntitheftManager c;
  private PreferenceAdapterModel d;
  private PreferenceAdapterModel e;
  private PreferenceAdapterModel f;
  private PreferenceAdapterModel g;

  public bfa(Context paramContext)
  {
    super(paramContext);
    this.b = paramContext;
    this.a = ho.a();
    this.c = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
  }

  public final boolean a(String paramString1, String paramString2)
  {
    boolean bool = false;
    String str1 = paramString1.replace("+86", "").replace("-", "");
    if (paramString2 != null);
    for (String str2 = paramString2.replace("+86", ""); ; str2 = paramString2)
    {
      if ((str2 != null) && (str2.replace("-", "").equals(str1)))
        str2 = null;
      if ((str1 == null) || (str1.equals("")))
        ha.b(this.b, 2131429324);
      while (true)
      {
        return bool;
        if (!ft.b(str1))
        {
          ha.b(this.b, 2131429323);
          bool = false;
        }
        else
        {
          String str3 = str1.replace("+86", "");
          this.a.o(str3);
          this.c.setHelperNumber(str3);
          this.a.u(str2);
          if (str2 != null)
            str3 = str3 + "(" + str2 + ")";
          this.f.setSummary(str3);
          getAdapter().notifyDataSetChanged();
          bool = true;
        }
      }
    }
  }

  public final BaseAdapter createAdapter()
  {
    return new PickproofPreferenceAdapter(this.b, this.mDataList, this);
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramIntent == null) || (paramInt2 == 0));
    while (true)
    {
      return;
      Iterator localIterator = paramIntent.getStringArrayListExtra("selecteddata").iterator();
      while (localIterator.hasNext())
      {
        String[] arrayOfString = ((String)localIterator.next()).split(";");
        a(arrayOfString[0], arrayOfString[1]);
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = new PreferenceAdapterModel();
    this.d.setPreferenceViewType((byte)2);
    this.d.setKey("setting_sim_lock");
    this.mDataList.add(this.d);
    this.e = new PreferenceAdapterModel();
    this.e.setPreferenceViewType((byte)3);
    this.e.setKey("pwd_modify");
    this.mDataList.add(this.e);
    this.f = new PreferenceAdapterModel();
    this.f.setPreferenceViewType((byte)3);
    this.f.setKey("safe_phonenum");
    this.mDataList.add(this.f);
    this.g = new PreferenceAdapterModel();
    this.g.setPreferenceViewType((byte)12);
    this.g.setKey("setting_on_off");
    this.g.setButtonText(getContext().getString(2131427446));
    this.mDataList.add(this.g);
    getListView().setPadding(0, 0, 0, 0);
    if (getFrameworkTemplateUI() != null)
      getFrameworkTemplateUI().setInfoBarStyle((byte)49);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = 1;
    String str1 = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
    if ((str1 == null) || (((paramView instanceof PreferenceView)) && (!((PreferenceView)paramView).isEnabled())))
      return;
    if (str1.equals("setting_on_off"))
    {
      Dialog localDialog1 = new Dialog(this.b);
      localDialog1.setTitle(2131429452);
      localDialog1.setMessage(2131429454);
      localDialog1.setPositiveButton(2131427397, new bfe(this, localDialog1), 2);
      localDialog1.setNeutralButton(2131427379, new bff(localDialog1), i);
      localDialog1.show();
    }
    while (true)
    {
      getAdapter().notifyDataSetChanged();
      break;
      if (str1.equals("setting_sim_lock"))
      {
        label163: CheckBoxPreferenceView localCheckBoxPreferenceView;
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked())
        {
          ((PreferenceAdapterModel)this.mDataList.get(paramInt)).setChecked(i);
          localCheckBoxPreferenceView = (CheckBoxPreferenceView)paramView;
          if (i == 0)
            break label223;
        }
        label223: for (int k = 2131429376; ; k = 2131429377)
        {
          localCheckBoxPreferenceView.doClickEventNoAnimation(-1, k);
          this.a.D(i);
          break;
          int j = 0;
          break label163;
        }
      }
      if (str1.equals("pwd_modify"))
      {
        new xn(this.b).b();
      }
      else if (str1.equals("safe_phonenum"))
      {
        View localView = LayoutInflater.from(this.b).inflate(2130903065, null);
        EditText localEditText = (EditText)localView.findViewById(2131230788);
        String str2 = this.c.getHelperNumber();
        if (str2 == null)
        {
          str2 = this.a.bE();
          this.c.setHelperNumber(str2);
        }
        localEditText.setText(str2);
        String str3 = this.b.getResources().getString(2131429391);
        Dialog localDialog2 = new Dialog(this.b);
        localDialog2.setTitle(str3);
        localDialog2.setView(localView);
        localDialog2.setPositiveButton(2131427397, new bfb(this, localEditText, localDialog2), 2);
        localDialog2.setNegativeButton(2131427379, new bfc(localDialog2), 2);
        localDialog2.show();
        ((ImageView)localView.findViewById(2131230789)).setOnClickListener(new bfd(this, localDialog2));
      }
    }
  }

  public final boolean onListPreferenceChange(ListPreferenceView paramListPreferenceView, Object paramObject)
  {
    return false;
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    boolean bool1 = this.a.bD();
    boolean bool2 = this.a.bH();
    if (!bool1)
      bool2 = false;
    this.d.setEnabled(bool1);
    this.d.setShowLine(true);
    this.d.setTitle(this.b.getString(2131429375));
    this.d.setChecked(bool2);
    this.e.setTitle(this.b.getString(2131429392));
    this.e.setShowLine(true);
    this.f.setTitle(this.b.getString(2131429391));
    if (this.c.getPassword() == null)
      this.c.setPassword(this.a.bF());
    String str1 = this.c.getHelperNumber();
    if (str1 == null)
    {
      str1 = this.a.bE();
      this.c.setHelperNumber(str1);
    }
    String str2 = this.a.bU();
    if (str2 != null)
      str1 = str1 + "(" + str2 + ")";
    this.f.setSummary(str1);
    this.f.setShowLine(true);
    this.g.setButtonText(getContext().getString(2131429452));
    this.g.setShowLine(true);
    getAdapter().notifyDataSetChanged();
  }

  public final void onTabResume()
  {
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131429378);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bfa
 * JD-Core Version:    0.6.2
 */