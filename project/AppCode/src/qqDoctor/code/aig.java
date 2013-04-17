import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import java.util.List;

public final class aig extends BaseListAdapter<lw>
{
  private Handler a;

  public aig(Context paramContext, List<ListModel<lw>> paramList, Handler paramHandler)
  {
    super(paramContext, paramList);
    this.a = paramHandler;
  }

  public final int getItemViewType(int paramInt)
  {
    int i;
    if (paramInt >= this.mDataList.size())
      i = -1;
    while (true)
    {
      return i;
      lw locallw = (lw)getItem(paramInt);
      if (locallw.a == 1)
        i = 1;
      else if (locallw.a == 0)
        i = 0;
      else
        i = -1;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= this.mDataList.size());
    int i;
    for (paramView = null; ; paramView = null)
    {
      return paramView;
      i = getItemViewType(paramInt);
      if (i != -1)
        break;
    }
    if (i == 0)
    {
      aig.a locala;
      if (paramView == null)
      {
        paramView = createItemView(paramInt, 2130903305);
        locala = new aig.a((byte)0);
        locala.a = ((TextView)paramView.findViewById(2131231587));
        locala.b = ((ButtonView)paramView.findViewById(2131231588));
      }
      while (true)
      {
        lw locallw = (lw)getItem(paramInt);
        locala.a.setText(locallw.b);
        locala.b.setOnClickListener(new aig.c(paramInt, (byte)0));
        paramView.setTag(locala);
        break;
        locala = (aig.a)paramView.getTag();
      }
    }
    aig.b localb2;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903306);
      localb2 = new aig.b((byte)0);
      localb2.a = ((ImageView)paramView.findViewById(2131231576));
      localb2.b = ((TextView)paramView.findViewById(2131231130));
      localb2.c = ((ImageView)paramView.findViewById(2131231564));
      paramView.setTag(localb2);
    }
    for (aig.b localb1 = localb2; ; localb1 = (aig.b)paramView.getTag())
    {
      localb1.a.setVisibility(0);
      localb1.a.setImageResource(2130837871);
      localb1.b.setText(2131427416);
      localb1.c.setVisibility(8);
      break;
    }
  }

  static final class a
  {
    TextView a;
    ButtonView b;
  }

  static final class b
  {
    ImageView a;
    TextView b;
    ImageView c;
  }

  final class c
    implements View.OnClickListener
  {
    private int a;

    private c(int arg2)
    {
      int i;
      this.a = i;
    }

    public final void onClick(View paramView)
    {
      Message localMessage = aig.a(aig.this).obtainMessage();
      localMessage.what = 0;
      localMessage.obj = Integer.valueOf(this.a);
      aig.a(aig.this).sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aig
 * JD-Core Version:    0.6.2
 */