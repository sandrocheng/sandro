import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ItemModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BasePinnedListAdapter;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import java.util.List;

public final class amh extends BasePinnedListAdapter<ms>
{
  private Context a;
  private brp b;
  private je c = new je();
  private int d = 0;

  public amh(Context paramContext, brp parambrp, List<ListModel<ms>> paramList)
  {
    super(paramContext, paramList);
    this.b = parambrp;
    this.a = paramContext;
  }

  private void a(LinearLayout paramLinearLayout, int paramInt, ms paramms)
  {
    int i = 1;
    switch (paramInt)
    {
    case 3:
    case 5:
    default:
    case 4:
    case 6:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      String str = paramms.e.packageName;
      PackageInfo localPackageInfo = gx.a(TMSApplication.getApplicaionContext(), str);
      int j;
      if (localPackageInfo != null)
        if ((0x1 & localPackageInfo.applicationInfo.flags) != 0)
        {
          j = i;
          label91: if (j == 0)
            break label123;
        }
      while (true)
      {
        if (i == 0)
          break label129;
        paramLinearLayout.setOnClickListener(new amj(this, paramms));
        break;
        j = 0;
        break label91;
        label123: i = 0;
      }
      label129: Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramms.e.url));
      this.a.startActivity(localIntent);
      continue;
      paramLinearLayout.setOnClickListener(new amk(this));
      continue;
      paramLinearLayout.setOnClickListener(new aml(this, paramms));
      continue;
      paramLinearLayout.setOnClickListener(new amm(this, paramms));
    }
  }

  public final long getItemId(int paramInt)
  {
    return 0L;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ms localms = (ms)getItem(paramInt);
    amh.a locala1;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903339);
      amh.a locala2 = new amh.a();
      locala2.a = ((TextView)paramView.findViewById(2131231364));
      locala2.c = ((TextView)paramView.findViewById(2131231642));
      locala2.b = ((TextView)paramView.findViewById(2131231639));
      paramView.findViewById(2131231641);
      locala2.d = ((TextView)paramView.findViewById(2131231646));
      locala2.e = ((TextView)paramView.findViewById(2131231648));
      locala2.f = ((LinearLayout)paramView.findViewById(2131231645));
      locala2.g = ((LinearLayout)paramView.findViewById(2131231647));
      locala2.h = ((LinearLayout)paramView.findViewById(2131231644));
      locala2.i = ((LinearLayout)paramView.findViewById(2131231643));
      locala2.j = ((LinearLayout)paramView.findViewById(2131231640));
      paramView.setTag(locala2);
      paramView.setOnClickListener(null);
      locala1 = locala2;
      if (localms.b == 1)
        break label380;
      if (paramInt != this.d)
        break label360;
      paramView.setBackgroundResource(2131296257);
      locala1.i.setVisibility(0);
      label237: locala1.a.setText(localms.e.softName);
      String str = localms.e.discription;
      if (str == null)
        str = "";
      locala1.b.setText(str);
      if (localms.b != 1)
        break label390;
      locala1.h.setVisibility(8);
      locala1.c.setVisibility(0);
    }
    while (true)
    {
      setLabel(paramView, (ItemModel)this.mItemModelList.get(paramInt));
      locala1.j.setOnClickListener(new ami(this, paramInt));
      return paramView;
      locala1 = (amh.a)paramView.getTag();
      break;
      label360: paramView.setBackgroundResource(2131296282);
      locala1.i.setVisibility(8);
      break label237;
      label380: paramView.setBackgroundResource(2131296282);
      break label237;
      label390: locala1.c.setVisibility(8);
      locala1.h.setVisibility(0);
      switch (localms.e.type)
      {
      default:
        locala1.d.setText(this.a.getString(2131427401));
        locala1.f.setVisibility(0);
        a(locala1.f, 1, localms);
        locala1.g.setVisibility(8);
        break;
      case 3:
      case 8:
        locala1.f.setVisibility(0);
        locala1.g.setVisibility(8);
        switch (localms.e.advice)
        {
        case 2:
        case 3:
        case 5:
        default:
          locala1.d.setText(this.a.getString(2131427401));
          a(locala1.f, 1, localms);
          break;
        case 4:
          locala1.d.setText(this.a.getString(2131428054));
          a(locala1.f, 4, localms);
          break;
        case 6:
          locala1.d.setText(this.a.getString(2131428054));
          a(locala1.f, 6, localms);
          break;
        case 1:
          locala1.d.setText(this.a.getString(2131427401));
          a(locala1.f, 1, localms);
        }
        break;
      case 2:
        switch (localms.e.advice)
        {
        default:
          locala1.f.setVisibility(0);
          locala1.d.setText(this.a.getString(2131427402));
          a(locala1.f, 1, localms);
          locala1.g.setVisibility(8);
          break;
        case 1:
          locala1.f.setVisibility(0);
          locala1.d.setText(this.a.getString(2131427402));
          a(locala1.f, 1, localms);
          locala1.g.setVisibility(8);
          break;
        case 2:
          locala1.f.setVisibility(8);
          locala1.g.setVisibility(0);
          locala1.e.setText(this.a.getString(2131428347));
          a(locala1.g, 2, localms);
          break;
        case 3:
          locala1.f.setVisibility(0);
          locala1.d.setText(this.a.getString(2131427402));
          a(locala1.f, 1, localms);
          locala1.g.setVisibility(0);
          locala1.e.setText(this.a.getString(2131428347));
          a(locala1.g, 2, localms);
          break;
        case 4:
          locala1.f.setVisibility(0);
          locala1.d.setText(this.a.getString(2131428053));
          a(locala1.g, 4, localms);
          locala1.g.setVisibility(8);
          break;
        case 5:
          locala1.f.setVisibility(0);
          locala1.d.setText(this.a.getString(2131428053));
          a(locala1.f, 4, localms);
          locala1.g.setVisibility(0);
          locala1.e.setText(this.a.getString(2131427403));
          a(locala1.g, 2, localms);
        }
        break;
      }
    }
  }

  public static final class a
  {
    public TextView a;
    public TextView b;
    public TextView c;
    public TextView d;
    public TextView e;
    public LinearLayout f;
    public LinearLayout g;
    public LinearLayout h;
    public LinearLayout i;
    public LinearLayout j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     amh
 * JD-Core Version:    0.6.2
 */