import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.view.Menu;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.PrivacySafeSuspensionWindow;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.SecureSpaceActivity;
import com.tencent.qqpimsecure.ui.activity.filesafe.FileSafeGridActivity;
import com.tencent.qqpimsecure.ui.activity.permission.PermissionMonitorTabActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPswCenterListActivity;
import com.tencent.qqpimsecure.ui.activity.privacylock.PrivacyLockTabActivity;
import com.tencent.qqpimsecure.uilib.model.TabModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.ui.adapter.TabAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import java.util.List;

public final class bcu extends BaseView
  implements AdapterView.OnItemClickListener
{
  private ListView a;
  private TabAdapter b;
  private TextView c;
  private TextView d;
  private ImageView e;
  private ImageView f;
  private ImageView g;
  private int h = -1;
  private ho i;
  private yj j;
  private Dialog k;
  private PermissionManager l;
  private Handler m = new bcx(this);

  public bcu(Context paramContext)
  {
    super(paramContext, 2130903197);
  }

  public static void a()
  {
    if (PrivacySafeSuspensionWindow.a == null)
      PrivacySafeSuspensionWindow.a = new PrivacySafeSuspensionWindow();
    if (PrivacySafeSuspensionWindow.a.f)
    {
      if (PrivacySafeSuspensionWindow.a == null)
        PrivacySafeSuspensionWindow.a = new PrivacySafeSuspensionWindow();
      PrivacySafeSuspensionWindow.a.g.sendEmptyMessage(2);
    }
  }

  private void b()
  {
    this.b.getItemByModelID(33).setContent(this.mContext.getString(2131429817));
    this.b.getItemByModelID(8).setContent(this.mContext.getString(2131429551));
    this.b.getItemByModelID(8).setTitle(this.mContext.getString(2131427988));
    this.b.getItemByModelID(8).setIcon(this.mContext.getResources().getDrawable(2130837980));
    if (this.h == 0)
      this.b.getItemByModelID(7).setContent(this.mContext.getString(2131429549));
    while (true)
    {
      this.b.notifyDataSetChanged();
      return;
      this.b.getItemByModelID(7).setContent(this.mContext.getString(2131429550));
    }
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public final void onBackClick()
  {
    Intent localIntent = getActivity().getIntent();
    boolean bool = false;
    if (localIntent != null)
      bool = localIntent.getBooleanExtra("extra_back_to_main", false);
    if (bool)
    {
      Context localContext = this.mContext;
      localContext.startActivity(new Intent(localContext, MainActivity.class));
    }
    super.onBackClick();
  }

  public final void onCreate()
  {
    super.onCreate();
    if (this.l == null)
      this.l = ((PermissionManager)ManagerCreator.getManager(PermissionManager.class));
    this.i = ho.a();
    new aaj(this.mContext);
    this.j = new yj(this.mContext);
    this.c = ((TextView)findViewById(2131231201));
    this.d = ((TextView)findViewById(2131231200));
    this.e = ((ImageView)findViewById(2131230990));
    this.f = ((ImageView)findViewById(2131231198));
    this.g = ((ImageView)findViewById(2131231199));
    this.a = ((ListView)findViewById(2131230930));
    this.b = new TabAdapter(this.mContext, 2, 2);
    this.a.setAdapter(this.b);
    this.a.setOnItemClickListener(this);
    this.m.sendEmptyMessageDelayed(2, 200L);
    this.k = new Dialog(this.mContext);
    this.k.setCancelable(true);
    this.k.addProgressDialog();
    this.k.setMessage(2131429011);
    if (getActivity().getIntent().getBooleanExtra("SHORTCUT_TO_SECURE_SPACE", false))
    {
      this.j.a(3, null);
      getActivity().finish();
      nd.a().a(26329);
    }
    if (this.i.cg())
    {
      String str = this.i.ci();
      if ((str == null) || (str.equals("")))
        break label360;
    }
    label360: for (int n = 1; ; n = 0)
    {
      if (n == 0)
      {
        this.i.ch();
        if (PrivacySafeSuspensionWindow.a == null)
          PrivacySafeSuspensionWindow.a = new PrivacySafeSuspensionWindow();
        PrivacySafeSuspensionWindow localPrivacySafeSuspensionWindow = PrivacySafeSuspensionWindow.a;
        Message localMessage = localPrivacySafeSuspensionWindow.g.obtainMessage(1, 2130837821, 2131430089);
        localPrivacySafeSuspensionWindow.g.sendMessage(localMessage);
      }
      return;
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.g.clearAnimation();
    this.f.clearAnimation();
    ary.a().b();
    if (getActivity().getIntent().getBooleanExtra("SHORTCUT_TO_SECURE_SPACE", false))
      rj.a().b();
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    nd localnd = nd.a();
    Intent localIntent;
    switch (((TabModel)this.b.getDataList().get(paramInt)).getID())
    {
    default:
      localIntent = null;
    case 8:
    case 7:
    case 33:
    case 48:
    }
    while (true)
    {
      if (localIntent != null)
        getActivity().startActivity(localIntent);
      do
      {
        return;
        localnd.a(26108);
        localIntent = new Intent(this.mContext, SecureSpaceActivity.class);
        aai.a().b();
        break;
      }
      while (this.h == -1);
      localnd.a(26184);
      localIntent = new Intent(this.mContext, PermissionMonitorTabActivity.class);
      localIntent.putExtra("root_state", this.h);
      continue;
      int n;
      if (!Environment.getExternalStorageState().equals("mounted"))
        n = 1;
      while (true)
      {
        if (n != 1)
          break label229;
        ha.b(this.mContext, this.mContext.getString(2131429514));
        localIntent = null;
        break;
        if (!a.b())
          n = 2;
        else
          n = 0;
      }
      label229: if (n == 2)
      {
        ha.b(this.mContext, this.mContext.getString(2131429517));
        localIntent = null;
      }
      else if (!fi.c())
      {
        ha.b(this.mContext, this.mContext.getString(2131429515));
        localIntent = null;
      }
      else
      {
        localnd.a(26185);
        localIntent = new Intent(this.mContext, FileSafeGridActivity.class);
        continue;
        localnd.a(26186);
        localIntent = new Intent(this.mContext, PrivacyLockTabActivity.class);
      }
    }
  }

  public final void onNewIntent(Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("SHORTCUT_TO_SECURE_SPACE", false))
    {
      this.j.a(3, null);
      getActivity().finish();
    }
  }

  public final void onOptionClick(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, PrivacyPswCenterListActivity.class);
    this.mContext.startActivity(localIntent);
    nd.a().a(26396);
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    return false;
  }

  public final void onPause()
  {
    super.onPause();
    this.f.clearAnimation();
    this.g.clearAnimation();
    if (PrivacySafeSuspensionWindow.a == null)
      PrivacySafeSuspensionWindow.a = new PrivacySafeSuspensionWindow();
    PrivacySafeSuspensionWindow.a.g.sendEmptyMessage(2);
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onResume()
  {
    super.onResume();
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, 360.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setDuration(2000L);
    localRotateAnimation.setFillAfter(false);
    localRotateAnimation.setFillBefore(true);
    localRotateAnimation.setRepeatCount(-1);
    localRotateAnimation.setRepeatMode(1);
    localRotateAnimation.setInterpolator(new LinearInterpolator());
    this.f.setAnimation(localRotateAnimation);
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setDuration(2000L);
    localAlphaAnimation.setFillAfter(false);
    localAlphaAnimation.setFillBefore(true);
    localRotateAnimation.setRepeatCount(-1);
    localAlphaAnimation.setRepeatMode(1);
    localAlphaAnimation.setInterpolator(new LinearInterpolator());
    this.g.setAnimation(localAlphaAnimation);
    this.f.startAnimation(localRotateAnimation);
    localRotateAnimation.setAnimationListener(new bcv(this, localAlphaAnimation));
    b();
    this.e.setImageResource(2130837907);
    this.d.setText(2131429544);
    this.d.setTextColor(this.mContext.getResources().getColor(2131296394));
    this.c.setText(this.mContext.getString(2131429547));
    if (!this.i.w())
      new Thread(new bcw(this)).start();
  }

  public final void onStart()
  {
    super.onStart();
    a.a(this, 2131427329);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427993);
    paramFrameworkTemplateUI.setBackButtonStyle((byte)1);
    paramFrameworkTemplateUI.setOptionButtonStyle((byte)18);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcu
 * JD-Core Version:    0.6.2
 */