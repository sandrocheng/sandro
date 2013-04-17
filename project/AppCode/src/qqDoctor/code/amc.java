import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import java.util.List;

public final class amc extends BaseListAdapter<kw>
{
  private final sl a;
  private ListView b;
  private final Drawable c;

  public amc(Context paramContext, BaseView paramBaseView, ListView paramListView, List<ListModel<kw>> paramList)
  {
    super(paramContext, paramList);
    this.b = paramListView;
    this.a = paramBaseView.getImageLoaderService();
    zo.a();
    this.c = this.mContext.getResources().getDrawable(2130837521);
  }

  public final int getItemViewType(int paramInt)
  {
    if (paramInt == 0);
    for (int i = 0; ; i = 1)
      return i;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= this.mDataList.size())
    {
      paramView = null;
      return paramView;
    }
    if (paramInt == 0)
    {
      amc.a locala4;
      if (paramView == null)
      {
        paramView = createItemView(paramInt, 2130903302);
        locala4 = new amc.a();
        locala4.a = ((ImageView)paramView.findViewById(2131231576));
        locala4.b = ((TextView)paramView.findViewById(2131231130));
        paramView.setTag(locala4);
      }
      for (amc.a locala3 = locala4; ; locala3 = (amc.a)paramView.getTag())
      {
        locala3.a.setVisibility(0);
        locala3.a.setImageResource(2130837871);
        locala3.b.setText(this.mContext.getString(2131429753));
        paramView.findViewById(2131231564).setVisibility(8);
        break;
      }
    }
    kw localkw = (kw)getItem(paramInt);
    amc.a locala1;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903327);
      amc.a locala2 = new amc.a();
      locala2.a = ((ImageView)paramView.findViewById(2131230869));
      locala2.b = ((TextView)paramView.findViewById(2131231620));
      locala2.c = ((Button)paramView.findViewById(2131231257));
      paramView.setTag(locala2);
      locala1 = locala2;
      label225: locala1.a.setTag(localkw.getPackageName());
      if (localkw.getPackageName() == null)
        break label444;
      if (((localkw.getIcon() != null) && (!localkw.getIcon().equals(this.c))) || (this.a == null))
        break label408;
      locala1.a.setImageDrawable(this.c);
      lv locallv = new lv();
      locallv.b = 2;
      locallv.g = localkw.getPackageName().hashCode();
      locallv.d = localkw.getPackageName();
      locallv.a = 0;
      locallv.h = localkw;
      locallv.i = new amd(this);
      this.a.b(locallv);
    }
    while (true)
    {
      locala1.b.setText(localkw.getAppName());
      locala1.c.setVisibility(0);
      locala1.c.setClickable(false);
      break;
      locala1 = (amc.a)paramView.getTag();
      break label225;
      label408: if (localkw.getIcon() == null)
      {
        localkw.setIcon(this.c);
      }
      else
      {
        locala1.a.setImageDrawable(localkw.getIcon());
        continue;
        label444: locala1.a.setImageDrawable(this.c);
      }
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  public final class a
  {
    public ImageView a;
    public TextView b;
    public Button c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amc
 * JD-Core Version:    0.6.2
 */