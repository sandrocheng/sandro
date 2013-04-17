import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import java.util.List;

public final class anl extends BaseListView<avg>
{
  private ho a;
  private View.OnClickListener b = new anm(this);
  private View.OnClickListener c = new ann(this);
  private View.OnClickListener d = new ano(this);

  public anl(Context paramContext)
  {
    super(paramContext);
  }

  public final void onCreate()
  {
    avg localavg1 = new avg();
    localavg1.a = this.mContext.getString(2131428415);
    localavg1.c = this.mContext.getResources().getStringArray(2131165220);
    localavg1.d = new int[] { 2130837800, 2130837817 };
    this.mDataList.add(localavg1);
    avg localavg2 = new avg();
    localavg2.a = this.mContext.getString(2131428416);
    localavg2.c = this.mContext.getResources().getStringArray(2131165222);
    localavg2.d = new int[] { 2130837801, 2130837817 };
    this.mDataList.add(localavg2);
    avg localavg3 = new avg();
    localavg3.a = this.mContext.getString(2131428417);
    localavg3.c = this.mContext.getResources().getStringArray(2131165219);
    localavg3.d = new int[] { 2130837800, 2130837801 };
    this.mDataList.add(localavg3);
    avg localavg4 = new avg();
    localavg4.a = this.mContext.getString(2131428418);
    localavg4.c = this.mContext.getResources().getStringArray(2131165219);
    localavg4.d = new int[] { 2130837800, 2130837801 };
    this.mDataList.add(localavg4);
    avg localavg5 = new avg();
    localavg5.a = this.mContext.getString(2131428419);
    localavg5.c = this.mContext.getResources().getStringArray(2131165219);
    localavg5.d = new int[] { 2130837800, 2130837801 };
    this.mDataList.add(localavg5);
    avg localavg6 = new avg();
    localavg6.a = this.mContext.getString(2131428424);
    localavg6.c = this.mContext.getResources().getStringArray(2131165223);
    localavg6.d = new int[] { 2130837800, 2130837801, 2130837809 };
    this.mDataList.add(localavg6);
    super.onCreate();
    this.a = ho.a();
    ((avf)getAdapter()).a(this.c, this.b, this.d);
    this.mListView.setPadding(0, 0, 0, 0);
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    avf localavf = (avf)getAdapter();
    if (localavf.a() != paramInt)
      localavf.a(paramInt);
    while (true)
    {
      localavf.notifyDataSetChanged();
      return;
      localavf.a(-1);
    }
  }

  public final void onPause()
  {
    super.onPause();
    op.a().d();
  }

  public final void onResume()
  {
    super.onResume();
    int i = this.a.R();
    avg localavg1 = (avg)this.mDataList.get(0);
    int j;
    int k;
    label63: int m;
    label94: int n;
    label126: int i1;
    label158: int i2;
    label175: avg localavg6;
    int i4;
    if ((i & 0x1) != 0)
    {
      j = 0;
      localavg1.b = j;
      avg localavg2 = (avg)this.mDataList.get(1);
      if ((i & 0x2) == 0)
        break label218;
      k = 0;
      localavg2.b = k;
      avg localavg3 = (avg)this.mDataList.get(2);
      if ((i & 0x4) == 0)
        break label224;
      m = 0;
      localavg3.b = m;
      avg localavg4 = (avg)this.mDataList.get(3);
      if ((i & 0x8) == 0)
        break label230;
      n = 0;
      localavg4.b = n;
      avg localavg5 = (avg)this.mDataList.get(4);
      if ((i & 0x10) == 0)
        break label236;
      i1 = 0;
      localavg5.b = i1;
      if ((i & 0x40) == 0)
        break label242;
      i2 = 0;
      if (i2 != 0)
        break label248;
      localavg6 = (avg)this.mDataList.get(5);
      i4 = 2;
    }
    while (true)
    {
      localavg6.b = i4;
      getAdapter().notifyDataSetChanged();
      return;
      j = 1;
      break;
      label218: k = 1;
      break label63;
      label224: m = 1;
      break label94;
      label230: n = 1;
      break label126;
      label236: i1 = 1;
      break label158;
      label242: i2 = 1;
      break label175;
      label248: localavg6 = (avg)this.mDataList.get(5);
      int i3 = i & 0x20;
      i4 = 0;
      if (i3 == 0)
        i4 = 1;
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleTextData(2131427967);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     anl
 * JD-Core Version:    0.6.2
 */