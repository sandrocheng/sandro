import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Message;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity;
import com.tencent.qqpimsecure.uilib.model.PreferenceAdapterModel;
import com.tencent.qqpimsecure.uilib.service.OnTabResumeListener;
import com.tencent.qqpimsecure.uilib.ui.adapter.PickproofPreferenceAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView;
import com.tencent.qqpimsecure.uilib.view.preference.ListPreferenceView.OnListPreferenceChangeListener;
import com.tencent.qqpimsecure.uilib.view.preference.PreferenceView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bfg extends BaseListView<PreferenceAdapterModel>
  implements OnTabResumeListener, ListPreferenceView.OnListPreferenceChangeListener
{
  private Context a;
  private ho b;
  private AntitheftManager c;
  private PreferenceAdapterModel d;
  private PreferenceAdapterModel e;
  private PreferenceAdapterModel f;
  private PreferenceAdapterModel g;
  private PreferenceAdapterModel h;
  private Dialog i;

  public bfg(Context paramContext)
  {
    super(paramContext);
    this.a = paramContext;
    this.b = ho.a();
    this.c = ((AntitheftManager)ManagerCreator.getManager(AntitheftManager.class));
  }

  private Dialog a()
  {
    View localView = LayoutInflater.from(this.a).inflate(2130903065, null);
    TextView localTextView = (TextView)localView.findViewById(2131230787);
    EditText localEditText = (EditText)localView.findViewById(2131230788);
    String str1 = this.c.getHelperNumber();
    if ((str1 != null) && (!"".equals(str1)))
      localEditText.setHint(k.a(str1, 3, 4));
    localEditText.addTextChangedListener(new bfi(localTextView));
    String str2 = this.a.getResources().getString(2131429391);
    Dialog localDialog = new Dialog(this.a);
    localDialog.setTitle(str2);
    localDialog.setView(localView);
    localDialog.setPositiveButton(2131427397, new bfj(this, localEditText, localTextView, localDialog), 2);
    localDialog.setNegativeButton(2131427379, new bfk(localDialog), 2);
    localDialog.show();
    ((ImageView)localView.findViewById(2131230789)).setOnClickListener(new bfl(this, localDialog));
    return localDialog;
  }

  private void a(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
    {
      String str1 = this.c.getHelperNumber();
      if ((str1 == null) || ("".equals(str1)))
        ha.b(this.a, 2131429324);
    }
    while (true)
    {
      return;
      this.b.E(true);
      this.e.setChecked(true);
      continue;
      String str2 = paramString.replace("+86", "").replace("-", "");
      if (!ft.b(str2))
      {
        ha.b(this.a, 2131429323);
      }
      else
      {
        this.i = new Dialog(this.a);
        this.i.addProgressDialog();
        this.i.setTitle(2131427567);
        this.i.setMessage(2131429443);
        this.i.show();
        new bfh(this, str2).start();
      }
    }
  }

  private void b(String paramString)
  {
    if ((this.i != null) && (this.i.isShowing()))
    {
      this.i.dismiss();
      this.i = null;
    }
    if (paramString != null)
    {
      this.b.o(paramString);
      this.c.setHelperNumber(paramString);
      this.f.setSummary(k.a(paramString, 3, 4));
      this.b.E(true);
      this.e.setChecked(true);
      getAdapter().notifyDataSetChanged();
    }
    while (true)
    {
      return;
      ha.a(this.a, this.a.getString(2131429444));
    }
  }

  public final BaseAdapter createAdapter()
  {
    return new PickproofPreferenceAdapter(this.a, this.mDataList, this);
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
        a(((String)localIterator.next()).split(";")[0]);
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.d = new PreferenceAdapterModel();
    this.d.setPreferenceViewType((byte)2);
    this.d.setKey("switch_sim_lock");
    this.mDataList.add(this.d);
    this.e = new PreferenceAdapterModel();
    this.e.setPreferenceViewType((byte)2);
    this.e.setKey("urgent_contact_sms");
    this.mDataList.add(this.e);
    this.f = new PreferenceAdapterModel();
    this.f.setPreferenceViewType((byte)3);
    this.f.setKey("urgent_contact_num");
    this.mDataList.add(this.f);
    this.g = new PreferenceAdapterModel();
    this.g.setPreferenceViewType((byte)3);
    this.g.setKey("modify_binding_qq");
    this.mDataList.add(this.g);
    this.h = new PreferenceAdapterModel();
    this.h.setPreferenceViewType((byte)12);
    this.h.setKey("shutdown_antitheft");
    this.h.setButtonText(getContext().getString(2131427446));
    this.mDataList.add(this.h);
    getListView().setPadding(0, 0, 0, 0);
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 100000:
    case 100001:
    }
    while (true)
    {
      return;
      b(String.valueOf(paramMessage.obj));
      continue;
      b(null);
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int j = 1;
    String str = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).getKey();
    if ((str == null) || (((paramView instanceof PreferenceView)) && (!((PreferenceView)paramView).isEnabled())))
      return;
    if (str.equals("shutdown_antitheft"))
    {
      Dialog localDialog1 = new Dialog(this.a);
      localDialog1.setTitle(2131429452);
      localDialog1.setMessage(2131429453);
      localDialog1.setPositiveButton(2131427397, new bfm(this, localDialog1), 2);
      localDialog1.setNeutralButton(2131427379, new bfn(localDialog1), j);
      localDialog1.show();
    }
    while (true)
    {
      getAdapter().notifyDataSetChanged();
      break;
      int k;
      if (str.equals("switch_sim_lock"))
      {
        if (!((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked());
        while (true)
        {
          ((PreferenceAdapterModel)this.mDataList.get(paramInt)).setChecked(j);
          this.b.D(j);
          break;
          k = 0;
        }
      }
      if (str.equals("urgent_contact_sms"))
      {
        boolean bool = ((PreferenceAdapterModel)this.mDataList.get(paramInt)).isChecked();
        int m = 0;
        if (!bool)
          m = k;
        PreferenceAdapterModel localPreferenceAdapterModel = (PreferenceAdapterModel)this.mDataList.get(paramInt);
        if (m == 0)
        {
          Dialog localDialog2 = new Dialog(this.a);
          localDialog2.setTitle(2131428434);
          localDialog2.setMessage(2131429460);
          localDialog2.setPositiveButton(2131427397, new bfo(this, localPreferenceAdapterModel, localDialog2), 2);
          localDialog2.setNeutralButton(2131427379, new bfp(localDialog2), k);
          localDialog2.show();
        }
        else
        {
          a();
        }
      }
      else if (str.equals("urgent_contact_num"))
      {
        a();
      }
      else if (str.equals("modify_binding_qq"))
      {
        Intent localIntent = new Intent(this.a, PickproofAccountLoginActivity.class);
        localIntent.putExtra("action", 2);
        ((Activity)this.a).startActivity(localIntent);
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
    boolean bool1 = this.b.bD();
    boolean bool2 = this.b.bH();
    if (!bool1)
      bool2 = false;
    this.d.setEnabled(bool1);
    this.d.setShowLine(true);
    this.d.setTitle(this.a.getString(2131429375));
    this.d.setChecked(bool2);
    boolean bool3 = this.b.bI();
    this.e.setChecked(bool3);
    this.e.setTitle(this.a.getString(2131429446));
    this.e.setShowLine(true);
    this.f.setTitle(this.a.getString(2131429391));
    String str1 = this.c.getHelperNumber();
    if (str1 == null)
    {
      str1 = this.b.bE();
      this.c.setHelperNumber(str1);
    }
    String str2 = k.a(str1, 3, 4);
    if ((str2 != null) && (!"".equals(str2)))
      this.f.setSummary(str2);
    while (true)
    {
      this.f.setShowLine(true);
      this.g.setTitle(this.a.getString(2131429447));
      String str3 = this.c.getBindQQNum();
      if ((str3 != null) && (!"".equals(str3)))
        this.g.setSummary(k.a(str3, 2, 0));
      this.g.setShowLine(false);
      this.h.setButtonText(getContext().getString(2131429452));
      this.h.setShowLine(false);
      getAdapter().notifyDataSetChanged();
      return;
      this.f.setSummary(this.a.getString(2131429469));
    }
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
 * Qualified Name:     bfg
 * JD-Core Version:    0.6.2
 */