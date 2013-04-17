import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BasePinnedListView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.io.File;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public abstract class blt<T> extends BasePinnedListView<T>
{
  private BroadcastReceiver a = new blv(this);
  private BroadcastReceiver b = new blw(this);
  protected SoftwareManager c;
  private BroadcastReceiver d = new blx(this);

  public blt(Context paramContext)
  {
    super(paramContext);
  }

  public static List<kv> b(List<kv> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0))
      paramList = new ArrayList(0);
    while (true)
    {
      return paramList;
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        kv localkv = (kv)localIterator.next();
        if (localkv.mState == -3)
          localArrayList1.add(localkv);
        else
          localArrayList2.add(localkv);
      }
      paramList.clear();
      paramList.addAll(localArrayList2);
      paramList.addAll(localArrayList1);
    }
  }

  public final String a(long paramLong)
  {
    if (paramLong == -1L);
    for (String str = this.mContext.getResources().getString(2131428368); ; str = a.c(paramLong))
      return str;
  }

  public void a(Intent paramIntent)
  {
    this.mHandler.sendEmptyMessage(-2);
  }

  protected final void a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, int paramInt, String paramString1, boolean paramBoolean, String paramString2, View.OnClickListener paramOnClickListener)
  {
    if ((paramViewGroup == null) || (paramString1 == null));
    while (true)
    {
      return;
      View localView = paramLayoutInflater.inflate(2130903110, null);
      TextView localTextView1 = (TextView)localView.findViewById(2131230881);
      TextView localTextView2 = (TextView)localView.findViewById(2131230882);
      TextView localTextView3 = (TextView)localView.findViewById(2131230883);
      localTextView1.setText(paramInt);
      localTextView2.setText(paramString1);
      if (paramBoolean)
      {
        localTextView3.setVisibility(0);
        localTextView3.setMinimumWidth((int)(0.5F + 100.0F * this.mContext.getResources().getDisplayMetrics().density));
        localTextView3.setOnClickListener(paramOnClickListener);
        if (paramString2 != null)
          localTextView3.setText(paramString2);
      }
      paramViewGroup.addView(localView);
    }
  }

  public final void a(kw paramkw, int paramInt)
  {
    kw.a((Activity)this.mContext, paramkw, paramInt);
  }

  public int b()
  {
    return -1;
  }

  public void b(Intent paramIntent)
  {
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void b(kw paramkw)
  {
    try
    {
      this.c.uninstallApp(paramkw.getPackageName(), (Activity)this.mContext, -1);
      nd.a().a(32);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        ha.b(TMSApplication.getApplicaionContext(), 2131427510);
    }
  }

  protected final View c(kw paramkw)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
    ViewGroup localViewGroup = (ViewGroup)localLayoutInflater.inflate(2130903109, null);
    a(localLayoutInflater, localViewGroup, 2131429623, paramkw.getAppName(), false, null, null);
    a(localLayoutInflater, localViewGroup, 2131429624, paramkw.getVersion(), false, null, null);
    long l = paramkw.getSize();
    if (l == -1L);
    for (String str = this.mContext.getResources().getString(2131428368); ; str = a.c(l))
    {
      a(localLayoutInflater, localViewGroup, 2131429627, str, false, null, null);
      if (paramkw.n() != -1)
        a(localLayoutInflater, localViewGroup, 2131429628, kw.a[paramkw.n()], false, null, null);
      a(localLayoutInflater, localViewGroup, 2131429629, paramkw.getCompany(), false, null, null);
      File localFile = new File(paramkw.getApkPath());
      a(localLayoutInflater, localViewGroup, 2131429630, localFile.getParentFile().getAbsolutePath(), false, null, null);
      a(localLayoutInflater, localViewGroup, 2131429631, localFile.getName(), false, null, null);
      return localViewGroup;
    }
  }

  public final void c()
  {
    this.mHandler.sendEmptyMessage(-1);
  }

  public final void c(List<String> paramList)
  {
    BaseUIActivity localBaseUIActivity = (BaseUIActivity)this.mContext;
    setBatchNext(new blu(this, paramList, localBaseUIActivity));
    if (paramList.size() > 0);
    try
    {
      this.c.installApp((String)paramList.remove(0), localBaseUIActivity, 1);
      return;
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          ha.b(TMSApplication.getApplicaionContext(), 2131427509);
        }
        catch (Exception localException2)
        {
          ha.b(this.mContext, 2131429518);
        }
    }
  }

  public List<T> getDataList()
  {
    return super.getDataList();
  }

  public boolean isPinnedHeaderListView()
  {
    return false;
  }

  public void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    paramUIConfigModel.mCreateEmptyTemplateUI = true;
    paramUIConfigModel.mCreateImageLoaderService = true;
    paramUIConfigModel.mCreateLoadingTemplateUI = true;
  }

  public void onCreate()
  {
    super.onCreate();
    this.c = ((SoftwareManager)ManagerCreator.getManager(SoftwareManager.class));
    getActivity().registerForContextMenu(getListView());
    getActivity().registerReceiver(this.a, new IntentFilter("com.tencent.qqpimsecure.NOTIFY_UI_SUCCESS"));
    getActivity().registerReceiver(this.b, new IntentFilter("com.tencent.qqpimsecure.NOTIFY_UI_FAILURE"));
    getActivity().registerReceiver(this.d, new IntentFilter("com.tencent.qqpimsecure.NOTIFY_UI_NULL"));
  }

  public void onDestroy()
  {
    if (isCreated())
    {
      getActivity().unregisterReceiver(this.a);
      getActivity().unregisterReceiver(this.b);
      getActivity().unregisterReceiver(this.d);
    }
    super.onDestroy();
  }

  public void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if ((this.mContext != null) && (paramMessage != null) && (paramMessage.obj != null))
        a.a((Activity)this.mContext, ((Integer)paramMessage.obj).intValue(), this);
    }
  }

  final class a
    implements Comparator<kv>
  {
    private final Collator a = Collator.getInstance(Locale.CHINA);

    private int a(kv paramkv1, kv paramkv2)
    {
      try
      {
        String str3 = paramkv1.d.getAppName();
        str1 = str3;
      }
      catch (Exception localException1)
      {
        try
        {
          String str1;
          String str4 = paramkv2.d.getAppName();
          for (str2 = str4; ; str2 = null)
          {
            int i;
            if ((paramkv1 == null) || (str1 == null))
              i = -1;
            while (true)
            {
              return i;
              if ((paramkv2 == null) || (str2 == null))
                i = 1;
              else
                i = this.a.compare(str1, str2);
            }
            localException1 = localException1;
            str1 = null;
          }
        }
        catch (Exception localException2)
        {
          while (true)
            String str2 = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     blt
 * JD-Core Version:    0.6.2
 */