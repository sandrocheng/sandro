import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public final class aix extends BaseListAdapter<cs>
{
  private static final SimpleDateFormat a = new SimpleDateFormat("yyyy年MM月dd日  HH:mm:ss");

  public aix(Context paramContext, List<ListModel<cs>> paramList)
  {
    super(paramContext, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aix.a locala;
    cs localcs;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903331);
      locala = new aix.a();
      paramView.findViewById(2131230869);
      locala.a = ((TextView)paramView.findViewById(2131231513));
      locala.b = ((TextView)paramView.findViewById(2131231632));
      locala.c = ((TextView)paramView.findViewById(2131231633));
      locala.d = ((TextView)paramView.findViewById(2131231634));
      paramView.setTag(locala);
      localcs = (cs)this.mDataList.get(paramInt);
      locala.a.setText(a.format(new Date(localcs.d)));
      if (localcs.h != 0)
        break label514;
      if ((localcs.k != 0) && (localcs.k != 2))
        break label471;
      locala.b.setText(this.mContext.getResources().getString(2131427583));
      locala.b.setTextColor(this.mContext.getResources().getColor(2131296268));
    }
    while (true)
    {
      locala.c.setText(a.c(localcs.i + localcs.j));
      StringBuffer localStringBuffer = new StringBuffer();
      if (localcs.e != 0)
      {
        String str3 = this.mContext.getResources().getString(2131427585);
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(localcs.e);
        localStringBuffer.append(String.format(str3, arrayOfObject3));
      }
      if (localcs.g != 0)
      {
        if (localStringBuffer.length() > 0)
          localStringBuffer.append(", ");
        String str2 = this.mContext.getResources().getString(2131427586);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(localcs.g);
        localStringBuffer.append(String.format(str2, arrayOfObject2));
      }
      if (localcs.f != 0)
      {
        if (localStringBuffer.length() > 0)
          localStringBuffer.append(", ");
        String str1 = this.mContext.getResources().getString(2131427587);
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(localcs.f);
        localStringBuffer.append(String.format(str1, arrayOfObject1));
      }
      if (localStringBuffer.length() == 0)
        localStringBuffer.append(this.mContext.getResources().getString(2131427588));
      locala.d.setText(localStringBuffer.toString());
      return paramView;
      locala = (aix.a)paramView.getTag();
      break;
      label471: locala.b.setText(this.mContext.getResources().getString(2131427581));
      locala.b.setTextColor(this.mContext.getResources().getColor(2131296269));
    }
    label514: if ((localcs.k == 0) || (localcs.k == 2))
    {
      locala.b.setText(this.mContext.getResources().getString(2131427584));
      locala.b.setTextColor(this.mContext.getResources().getColor(2131296268));
    }
    while (true)
    {
      locala.c.setText(a.c(localcs.i + localcs.j));
      break;
      locala.b.setText(this.mContext.getResources().getString(2131427582));
      locala.b.setTextColor(this.mContext.getResources().getColor(2131296269));
    }
  }

  public static final class a
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public TextView d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aix
 * JD-Core Version:    0.6.2
 */