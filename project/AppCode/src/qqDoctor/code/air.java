import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.SecureSmsDialogueActivity;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import java.util.List;

public final class air extends BaseListAdapter<lf>
{
  private Context a;
  private dv<lf> b;

  public air(Context paramContext, List<ListModel<lf>> paramList)
  {
    super(paramContext, paramList);
    this.a = paramContext;
  }

  public final void a(dv<lf> paramdv)
  {
    this.b = paramdv;
  }

  public final int getItemViewType(int paramInt)
  {
    int i;
    if (paramInt >= this.mDataList.size())
      i = -1;
    while (true)
    {
      return i;
      lf locallf = (lf)getItem(paramInt);
      if ((locallf.b == 0) || (locallf.b == 1) || (locallf.b == 2))
        i = 0;
      else
        i = 1;
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= this.mDataList.size())
      paramView = null;
    lf locallf;
    int i;
    label506: 
    do
      while (true)
      {
        return paramView;
        locallf = (lf)getItem(paramInt);
        i = getItemViewType(paramInt);
        if (i != 0)
          break;
        air.a locala;
        if (paramView == null)
        {
          paramView = createItemView(paramInt, 2130903325);
          locala = new air.a((byte)0);
          locala.a = ((TextView)paramView.findViewById(2131231525));
          locala.b = ((TextView)paramView.findViewById(2131231527));
          locala.d = ((LinearLayout)paramView.findViewById(2131231619));
          locala.c = paramView.findViewById(2131231618);
          locala.e = ((LinearLayout)paramView.findViewById(2131231580));
          locala.f = ((LinearLayout)paramView.findViewById(2131231581));
          locala.g = ((LinearLayout)paramView.findViewById(2131231582));
          paramView.setTag(locala);
        }
        while (true)
        {
          String str = locallf.name;
          TextView localTextView = locala.a;
          if ((str == null) || ("".equals(str.trim())))
            str = this.a.getString(2131427333);
          localTextView.setText(str);
          locala.b.setText(locallf.phonenum);
          ((TextView)locala.e.findViewById(2131230748)).setText(2131427384);
          ((ImageView)locala.e.findViewById(2131230869)).setImageResource(2130837933);
          locala.e.setOnClickListener(new air.b(this.a, locala, locallf, this.b));
          ((TextView)locala.f.findViewById(2131230748)).setText(2131427721);
          ((ImageView)locala.f.findViewById(2131230869)).setImageResource(2130837939);
          locala.f.setOnClickListener(new air.b(this.a, locala, locallf, this.b));
          ((TextView)locala.g.findViewById(2131230748)).setText(2131427340);
          ((ImageView)locala.g.findViewById(2131230869)).setImageResource(2130837934);
          locala.g.setOnClickListener(new air.b(this.a, locala, locallf, this.b));
          if (!locallf.a())
            break label506;
          new StringBuilder("when getView showDetail, contact:").append(locallf.toString()).toString();
          locala.c.setVisibility(0);
          locala.d.setVisibility(0);
          locala.e.setVisibility(0);
          locala.f.setVisibility(0);
          locala.g.setVisibility(0);
          break;
          locala = (air.a)paramView.getTag();
        }
        new StringBuilder("when getView hideDetail, contact:").append(locallf.toString()).toString();
        locala.c.setVisibility(8);
        locala.d.setVisibility(8);
        locala.e.setVisibility(8);
        locala.f.setVisibility(8);
        locala.g.setVisibility(8);
      }
    while (i != 1);
    air.c localc2;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903326);
      localc2 = new air.c((byte)0);
      localc2.a = ((ImageView)paramView.findViewById(2131231576));
      localc2.b = ((TextView)paramView.findViewById(2131231130));
      localc2.c = ((ImageView)paramView.findViewById(2131231564));
      paramView.setTag(localc2);
    }
    for (air.c localc1 = localc2; ; localc1 = (air.c)paramView.getTag())
    {
      localc1.a.setVisibility(0);
      localc1.a.setImageResource(2130837871);
      localc1.b.setText(locallf.name);
      localc1.c.setVisibility(8);
      break;
    }
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  static final class a
  {
    TextView a;
    TextView b;
    View c;
    LinearLayout d;
    LinearLayout e;
    LinearLayout f;
    LinearLayout g;
  }

  final class b
    implements View.OnClickListener
  {
    private Context a;
    private air.a b;
    private lf c;
    private dv<lf> d;

    public b(air.a paramlf, lf paramdv, dv<lf> arg4)
    {
      this.a = paramlf;
      this.b = paramdv;
      Object localObject1;
      this.c = localObject1;
      Object localObject2;
      this.d = localObject2;
    }

    public final void onClick(View paramView)
    {
      if ((this.a == null) || (this.b == null) || (this.c == null));
      while (true)
      {
        return;
        nd localnd = nd.a();
        if (paramView == this.b.e)
        {
          localnd.a(26438);
          ft.a(this.c.phonenum);
        }
        else if (paramView == this.b.f)
        {
          localnd.a(26439);
          Intent localIntent = new Intent();
          localIntent.putExtra("smslogname", this.c.name);
          localIntent.putExtra("smslogphonenum", this.c.phonenum);
          localIntent.setClass(air.a(air.this), SecureSmsDialogueActivity.class);
          air.a(air.this).startActivity(localIntent);
        }
        else if (paramView == this.b.g)
        {
          localnd.a(26440);
          this.d.a(this.c);
        }
      }
    }
  }

  static final class c
  {
    ImageView a;
    TextView b;
    ImageView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     air
 * JD-Core Version:    0.6.2
 */