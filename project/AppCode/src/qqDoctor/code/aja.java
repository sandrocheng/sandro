import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumber;
import java.util.List;

public final class aja extends BaseListAdapter<IpDialPhoneNumber>
{
  private aqu a;

  public aja(Context paramContext, List<ListModel<IpDialPhoneNumber>> paramList, aqu paramaqu)
  {
    super(paramContext, paramList);
    this.a = paramaqu;
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    View localView1;
    try
    {
      View localView3 = createItemView(paramInt, 2130903284);
      aja.a locala2 = new aja.a();
      locala2.a = ((TextView)localView3.findViewById(2131231531));
      locala2.b = ((TextView)localView3.findViewById(2131231532));
      locala2.c = ((ButtonView)localView3.findViewById(2131231533));
      locala2.c.setText(this.mContext.getString(2131427340));
      localView3.setTag(locala2);
      aja.a locala1 = locala2;
      View localView2 = localView3;
      if (((IpDialPhoneNumber)this.mDataList.get(paramInt)).getName().equals(""))
        locala1.a.setText(this.mContext.getResources().getString(2131428361));
      while (true)
      {
        locala1.b.setText(((IpDialPhoneNumber)this.mDataList.get(paramInt)).getPhoneNumber());
        locala1.c.setOnClickListener(new ajb(this, paramInt));
        localView1 = localView2;
        break label238;
        locala1 = (aja.a)paramView.getTag();
        localView2 = paramView;
        break;
        locala1.a.setText(((IpDialPhoneNumber)this.mDataList.get(paramInt)).getName());
      }
    }
    catch (Exception localException)
    {
      localView1 = null;
    }
    label238: return localView1;
  }

  static final class a
  {
    TextView a;
    TextView b;
    ButtonView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aja
 * JD-Core Version:    0.6.2
 */