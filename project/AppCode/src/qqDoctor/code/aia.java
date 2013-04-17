import android.content.Context;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import java.util.List;
import java.util.Map;

public final class aia extends BaseListAdapter<Map<String, Object>>
{
  public aia(Context paramContext, List<ListModel<Map<String, Object>>> paramList)
  {
    super(paramContext, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aia.a locala2;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903299);
      locala2 = new aia.a();
      locala2.a = ((TextView)paramView.findViewById(2131231033));
      locala2.b = ((TextView)paramView.findViewById(2131231298));
      paramView.setTag(locala2);
    }
    for (aia.a locala1 = locala2; ; locala1 = (aia.a)paramView.getTag())
    {
      Map localMap = (Map)this.mDataList.get(paramInt);
      locala1.a.setText((CharSequence)localMap.get("TITLE"));
      locala1.b.setMovementMethod(LinkMovementMethod.getInstance());
      locala1.b.setText((CharSequence)localMap.get("CONTENT"));
      return paramView;
    }
  }

  public static final class a
  {
    public TextView a;
    public TextView b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aia
 * JD-Core Version:    0.6.2
 */