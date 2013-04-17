import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.tencent.powermanager.uilib.view.BaseListItemView;
import com.tencent.powermanager.uilib.view.CheckBoxListItemView;
import com.tencent.powermanager.uilib.view.GroupListItemView;
import com.tencent.powermanager.uilib.view.SubTitleListItemView;
import com.tencent.powermanager.uilib.view.TextListItemView;
import java.util.List;

public final class b extends BaseAdapter
{
  private Context a = null;
  private List<bg> b = null;

  public b(Context paramContext, List<bg> paramList)
  {
    this.a = paramContext;
    this.b = paramList;
  }

  public final int getCount()
  {
    if (this.b != null);
    for (int i = this.b.size(); ; i = 0)
      return i;
  }

  public final Object getItem(int paramInt)
  {
    if (this.b != null);
    for (Object localObject = this.b.get(paramInt); ; localObject = null)
      return localObject;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    int i;
    switch (((bg)this.b.get(paramInt)).a)
    {
    default:
      i = 0;
    case 2:
    case 3:
    case 1:
    case 4:
    }
    while (true)
    {
      return i;
      i = 0;
      continue;
      i = 1;
      continue;
      i = 2;
      continue;
      i = 3;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    bg localbg = (bg)this.b.get(paramInt);
    Object localObject2;
    if (paramView == null)
      switch (localbg.a)
      {
      default:
        localObject2 = null;
      case 2:
      case 3:
      case 1:
      case 4:
      }
    for (Object localObject1 = localObject2; ; localObject1 = paramView)
    {
      ((BaseListItemView)localObject1).setTitleText(localbg.b);
      ((BaseListItemView)localObject1).setEnable(localbg.d);
      switch (localbg.a)
      {
      default:
      case 2:
      case 3:
      }
      while (true)
      {
        return localObject1;
        localObject2 = new CheckBoxListItemView(this.a);
        break;
        localObject2 = new SubTitleListItemView(this.a);
        break;
        localObject2 = new TextListItemView(this.a);
        break;
        localObject2 = new GroupListItemView(this.a);
        break;
        ((CheckBoxListItemView)localObject1).setCheckBoxOn(localbg.e);
        continue;
        ((SubTitleListItemView)localObject1).setSubTitleText(localbg.c);
      }
    }
  }

  public final int getViewTypeCount()
  {
    return 4;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     b
 * JD-Core Version:    0.6.2
 */