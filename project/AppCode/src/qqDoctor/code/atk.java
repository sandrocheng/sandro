import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.model.UIConfigModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.ArrayList;
import java.util.List;

public final class atk extends arz
{
  private PinnedHeaderListView k;

  public atk(Context paramContext)
  {
    super(paramContext, a);
  }

  protected final void a()
  {
    super.a();
    this.k = ((PinnedHeaderListView)findViewById(2131231012));
    this.k.setOnItemClickListener(this.j);
    getActivity().registerForContextMenu(this.k);
  }

  protected final void b()
  {
    super.b();
  }

  public final List<OperatingModel> createOperatingBarDataList()
  {
    return super.createOperatingBarDataList();
  }

  public final void loadDataList()
  {
    super.loadDataList();
    ArrayList localArrayList = new ArrayList();
    List localList1 = this.d.a(2);
    List localList2 = this.d.a(100);
    localArrayList.addAll(localList1);
    localArrayList.addAll(localList2);
    this.g.clear();
    this.g = localArrayList;
    this.mHandler.sendEmptyMessage(-2);
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 != -1) || (paramIntent == null));
    while (true)
    {
      return;
      if (paramInt1 == 2)
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
    super.onResume();
  }

  public final void refreshListData()
  {
    this.i = new ajl(this.mContext, this, Boolean.valueOf(this.f), this.g);
    this.k.setAdapter(this.i);
    this.i.notifyDataSetChanged();
    int i;
    if (this.g != null)
    {
      i = this.g.size();
      if (i != 0)
        break label91;
      this.k.setVisibility(8);
      setEmptyImage(2130837705);
    }
    while (true)
    {
      super.refreshListData();
      return;
      i = 0;
      break;
      label91: if (this.k.getVisibility() != 0)
        this.k.setVisibility(0);
      hideEmptyView();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    super.subviewTemplateUIConfig(paramFrameworkTemplateUI);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atk
 * JD-Core Version:    0.6.2
 */