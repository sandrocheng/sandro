import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.GridView;
import android.widget.TabHost.OnTabChangeListener;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.tab.FileSafeTabView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class atb extends arz
{
  private FileSafeTabView k;
  private GridView l;
  private boolean m = false;
  private boolean n = false;
  private Dialog o;
  private Dialog p;
  private boolean q;
  private boolean r;
  private TabHost.OnTabChangeListener s = new atj(this);

  public atb(Context paramContext)
  {
    super(paramContext, 0);
  }

  protected final void a()
  {
    super.a();
    this.l = ((GridView)findViewById(2131231011));
    this.k = ((FileSafeTabView)findViewById(2131231010));
    getActivity().registerForContextMenu(this.l);
    this.l.setOnItemClickListener(this.j);
    this.k.setOnTabChangeListener(this.s);
    this.l.setNumColumns(3);
    this.l.setColumnWidth(lm.e.a);
    this.l.setHorizontalSpacing(lm.e.c);
    this.l.setVerticalSpacing(lm.e.d);
    this.m = false;
    this.n = false;
    this.q = false;
    if (this.e == null)
      this.e = new rv();
  }

  protected final void b()
  {
    super.b();
    FileSafeTabView localFileSafeTabView = this.k;
    if (this.f);
    for (int i = 8; ; i = 0)
    {
      localFileSafeTabView.setVisibility(i);
      return;
    }
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    return super.createOperatingBarDataList();
  }

  public final void loadDataList()
  {
    super.loadDataList();
    if (ho.a().w())
    {
      this.m = true;
      Iterator localIterator = this.d.a(1).iterator();
      while (localIterator.hasNext())
      {
        lj locallj = (lj)localIterator.next();
        String str1 = locallj.b() + locallj.d();
        if (new File(str1).exists())
        {
          int i = new kq().a(str1, locallj.b(), 1);
          new StringBuilder("restoreVideo ").append(str1).append(" ").append(i).toString();
        }
      }
    }
    if (!this.n)
    {
      this.n = true;
      String str2 = new jj().a("privacy_secret_info", "Module=?", new String[] { "module_file_safe" }, "Module ASC").b();
      if ((str2 == null) || (str2.equals("")))
        break label242;
    }
    label242: for (boolean bool = true; ; bool = false)
    {
      this.r = bool;
      this.m = fi.d();
      if (!this.m)
        break;
      a.g("module_file_safe");
      break;
    }
    Object localObject;
    if (this.m)
    {
      localObject = new ArrayList();
      if (this.h != 0)
        break label310;
      localObject = this.d.a(0);
    }
    while (true)
    {
      this.g.clear();
      this.g.addAll((Collection)localObject);
      this.mHandler.sendEmptyMessage(-2);
      return;
      label310: if (this.h == 1)
        localObject = this.d.a(1);
    }
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 != -1) || (paramIntent == null));
    while (true)
    {
      return;
      if (paramInt1 == 102)
      {
        if (paramIntent.getBooleanExtra("VerifyResult", false))
        {
          this.o.dismiss();
          this.b.show();
          this.b.setMessage(this.mContext.getString(2131429875));
          this.q = true;
          this.mHandler.obtainMessage(1000, 1, 0).sendToTarget();
        }
      }
      else if (paramInt1 == 1)
      {
        ArrayList localArrayList = paramIntent.getBundleExtra("fileInfos").getStringArrayList("filePaths");
        if ((localArrayList != null) && (localArrayList.size() != 0))
          a(localArrayList);
      }
    }
  }

  public final void onBackClick()
  {
    super.onBackClick();
  }

  protected final void onConfigModelCreate(UIConfigModel paramUIConfigModel)
  {
    super.onConfigModelCreate(paramUIConfigModel);
  }

  public final void onCreate()
  {
    super.onCreate();
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public final void onDestroy()
  {
    super.onDestroy();
    if (this.e != null)
      this.e.e();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    super.onHandlerMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 1000:
      while (true)
      {
        return;
        this.m = true;
        new Thread(new atc(this, paramMessage.arg1)).start();
      }
    case 1001:
    }
    if (paramMessage.arg1 == 2)
      ha.a(this.mContext, 2131429878);
    while (true)
    {
      this.b.dismiss();
      this.mHandler.sendEmptyMessage(-1);
      break;
      ha.a(this.mContext, 2131429876);
    }
  }

  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    super.onOperatingBarClick(paramOperatingModel);
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
  }

  public final void onPause()
  {
    super.onPause();
  }

  public final void onResume()
  {
    this.k.setTabBackground(this.h);
    if (!this.q)
      super.onResume();
  }

  public final void refreshListData()
  {
    int i = 1;
    if (this.m)
    {
      Context localContext = this.mContext;
      Boolean localBoolean = Boolean.valueOf(this.f);
      List localList1 = this.g;
      if (this.h == i)
      {
        this.i = new aji(localContext, this, localBoolean, localList1, i);
        this.l.setAdapter(this.i);
        this.i.notifyDataSetChanged();
        List localList2 = this.g;
        int i1 = 0;
        if (localList2 != null)
          i1 = this.g.size();
        if (i1 > 0)
          this.l.setSelection(i1 - 1);
        if (i1 != 0)
          break label136;
        setEmptyImage(2130837705);
      }
    }
    while (true)
    {
      super.refreshListData();
      return;
      int j = 0;
      break;
      label136: hideEmptyView();
      continue;
      if (this.o == null)
      {
        Dialog localDialog = new Dialog(this.mContext);
        localDialog.setTitle(2131429813);
        localDialog.setMessage(2131429872);
        localDialog.setPositiveButton(2131429874, new atd(this), j);
        localDialog.setNegativeButton(2131429853, new ate(this, localDialog), 2);
        localDialog.setOnCancelListener(new atf(this, localDialog));
        localDialog.show();
        this.o = localDialog;
      }
      else if (!this.o.isShowing())
      {
        this.o.show();
      }
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atb
 * JD-Core Version:    0.6.2
 */