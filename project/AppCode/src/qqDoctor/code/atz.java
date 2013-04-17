import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.ui.activity.ContactSelectActivity;
import com.tencent.qqpimsecure.ui.activity.SyncMobileAccountLoginActivity;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.TabMenuView.MenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.dialog.ProgressDialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.tools.SingletonManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class atz extends BaseListView
{
  private String a = "InterceptContactView";
  private ho b;
  private hq c;
  private hq d;
  private hq e;
  private ki f;
  private bw g;
  private vk h;
  private ContextMenuDialog i;
  private rb j;
  private Dialog k;
  private Dialog l;
  private cf m;
  private boolean n = false;
  private int o;
  private int p = -1000;
  private int q = -1000;
  private aw r = null;
  private boolean s = false;
  private dv<lf> t = new aui(this);

  public atz(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.o = paramInt;
    this.r = new aw(this.mContext, this.mHandler);
  }

  private void a()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903079, null);
    EditText localEditText = (EditText)localView.findViewById(2131230820);
    TextView localTextView = (TextView)localView.findViewById(2131230821);
    String str = this.mContext.getResources().getString(2131427665);
    SpannableString localSpannableString = new SpannableString(str);
    localSpannableString.setSpan(new atz.a(), 0, str.length(), 33);
    localSpannableString.setSpan(new ForegroundColorSpan(this.mContext.getResources().getColor(2131296289)), 0, str.length(), 34);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    localTextView.setText(localSpannableString);
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.addProgressDialog();
    localDialog.setTitle(2131427567);
    localDialog.setView(localView);
    localDialog.setPositiveButton(2131427397, new aud(this, localEditText, localDialog), 2);
    localDialog.setNeutralButton(2131427379, new aue(localDialog), 2);
    localDialog.show();
  }

  private void b(int paramInt)
  {
    if (paramInt == 58)
      if (this.d.c() + this.e.c() <= 0)
        ha.a(this.mContext, 2131427598);
    while (true)
    {
      return;
      if (this.b.al() == 0L);
      for (int i1 = 1; ; i1 = 0)
      {
        if (i1 == 0)
          break label138;
        Dialog localDialog1 = new Dialog(this.mContext);
        localDialog1.setTitle(this.mContext.getResources().getString(2131427596));
        localDialog1.setMessage(this.mContext.getString(2131427602));
        localDialog1.setPositiveButton(2131427597, new aum(this, localDialog1), 2);
        localDialog1.setNeutralButton(2131427379, new aun(localDialog1), 2);
        localDialog1.show();
        break;
      }
      label138: if (this.b.am())
      {
        Dialog localDialog2 = new Dialog(this.mContext);
        View localView = LayoutInflater.from(this.mContext).inflate(2130903051, null);
        localDialog2.setTitle(this.mContext.getResources().getString(2131427567));
        localDialog2.setView(localView);
        ((TextView)localView.findViewById(2131230761)).setText(this.mContext.getString(2131427606));
        CheckBoxView localCheckBoxView = (CheckBoxView)localView.findViewById(2131230739);
        localCheckBoxView.setChecked(true);
        localDialog2.setPositiveButton(2131427597, new auo(this, localCheckBoxView, localDialog2), 2);
        localDialog2.setNeutralButton(2131427379, new aup(localDialog2), 2);
        localDialog2.show();
      }
      else
      {
        c(1005);
        continue;
        c(1006);
      }
    }
  }

  private void c(int paramInt)
  {
    this.m = new cl(this.mContext);
    cf localcf = this.m;
    Context localContext = this.mContext;
    ITccSyncDbAdapter.DbAdapterType localDbAdapterType = ITccSyncDbAdapter.DbAdapterType.BWLIST;
    localcf.a(localContext, localDbAdapterType, new kh());
    this.p = paramInt;
    this.r.a();
  }

  private void d(int paramInt)
  {
    this.p = -1000;
    this.n = true;
    this.k = new ProgressDialog(this.mContext, 1);
    this.k.addProgressDialog();
    this.k.setTitle(2131427567);
    if (1005 == paramInt)
      this.k.setMessage(2131427571);
    while (true)
    {
      this.k.setNeutralButton(2131427379, new auq(this, paramInt), 2);
      this.k.setCancelable(false);
      this.k.show();
      new aut(this, paramInt).start();
      new aub(this, paramInt).start();
      return;
      this.k.setMessage(2131427573);
    }
  }

  public final void a(int paramInt)
  {
    Intent localIntent = new Intent(this.mContext, ContactSelectActivity.class);
    localIntent.putExtra("from", paramInt);
    localIntent.putExtra("type", this.o);
    getActivity().startActivityForResult(localIntent, paramInt);
  }

  public final void a(boolean paramBoolean)
  {
    View localView = LayoutInflater.from(this.mContext).inflate(2130903046, null);
    EditText localEditText1 = (EditText)localView.findViewById(2131230741);
    EditText localEditText2 = (EditText)localView.findViewById(2131230743);
    LinearLayout localLinearLayout1 = (LinearLayout)localView.findViewById(2131230744);
    LinearLayout localLinearLayout2 = (LinearLayout)localView.findViewById(2131230746);
    CheckBoxView localCheckBoxView1 = (CheckBoxView)localView.findViewById(2131230745);
    CheckBoxView localCheckBoxView2 = (CheckBoxView)localView.findViewById(2131230747);
    localCheckBoxView1.setChecked(true);
    localCheckBoxView2.setChecked(true);
    localEditText1.addTextChangedListener(new adn(localEditText1));
    if (this.o != 0)
    {
      localCheckBoxView1.setVisibility(8);
      localCheckBoxView2.setVisibility(8);
      localLinearLayout1.setVisibility(8);
      localLinearLayout2.setVisibility(8);
    }
    TextView localTextView;
    ButtonView localButtonView;
    if (paramBoolean)
    {
      localTextView = (TextView)localView.findViewById(2131230749);
      localTextView.setVisibility(0);
      if (this.o == 0)
        localTextView.setText(2131427507);
    }
    else
    {
      ((TextView)localView.findViewById(2131230740)).setTextColor(this.mContext.getResources().getColor(2131296285));
      ((TextView)localView.findViewById(2131230742)).setTextColor(this.mContext.getResources().getColor(2131296285));
      Dialog localDialog = new Dialog(this.mContext);
      localDialog.setTitle(2131427338);
      localDialog.setView(localView);
      localDialog.setPositiveButton(2131427338, new aug(this, localEditText1, localCheckBoxView1, localCheckBoxView2, paramBoolean, localEditText2, localDialog), 2);
      localDialog.setNegativeButton(2131427379, new auh(localDialog), 2);
      localDialog.show();
      localButtonView = localDialog.getButton(-1);
      if (localButtonView != null)
        if (localEditText1.getText().toString().trim().length() <= 0)
          break label375;
    }
    label375: for (boolean bool = true; ; bool = false)
    {
      localButtonView.setEnabled(bool);
      localEditText1.addTextChangedListener(new adn(localEditText1, localButtonView));
      return;
      localTextView.setText(2131427508);
      break;
    }
  }

  public final BaseAdapter createAdapter()
  {
    Context localContext = this.mContext;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    return new aid(localContext, localArrayList);
  }

  public final View getFooterView()
  {
    return null;
  }

  public final View getHeaderView()
  {
    return null;
  }

  public final void loadDataList()
  {
    ((aid)this.mAdapter).a(this.t);
    this.mDataList.clear();
    if (this.o == 0)
    {
      lf locallf1 = new lf();
      locallf1.name = this.mContext.getString(2131427435);
      locallf1.b = 1003;
      this.mDataList.add(locallf1);
      this.mDataList.addAll(this.c.a());
    }
    while (true)
    {
      return;
      lf locallf2 = new lf();
      locallf2.name = this.mContext.getString(2131427436);
      locallf2.b = 1003;
      this.mDataList.add(locallf2);
      this.mDataList.addAll(this.c.a());
    }
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramIntent == null) || (paramInt2 == 0));
    while (true)
    {
      return;
      if (paramIntent.getIntExtra("JOB_KEY", -1000) == -1000)
      {
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        ArrayList localArrayList1 = paramIntent.getStringArrayListExtra("selecteddata");
        if (this.o == 0);
        ArrayList localArrayList2;
        for (boolean bool = true; ; bool = false)
        {
          localArrayList2 = new ArrayList();
          Iterator localIterator = localArrayList1.iterator();
          while (localIterator.hasNext())
          {
            String[] arrayOfString = ((String)localIterator.next()).split(";");
            lf locallf = new lf();
            locallf.phonenum = arrayOfString[0];
            locallf.name = arrayOfString[1];
            locallf.enableForCalling = bool;
            locallf.enableForSMS = bool;
            locallf.b = this.o;
            if (this.o == 0)
              locallf.a = new vk.a(locallf.phonenum, false, 4);
            localArrayList2.add(locallf);
          }
        }
        this.h.a(localArrayList2, this.o);
        nd localnd = nd.a();
        if (this.o == 0)
          localnd.a(26098);
        else
          localnd.a(26099);
      }
    }
  }

  public final boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public final void onCreate()
  {
    super.onCreate();
    getActivity().registerForContextMenu(getListView());
    this.b = ho.a();
    this.d = new hq(0);
    this.e = new hq(1);
    if (this.o == 0);
    for (this.c = this.d; ; this.c = this.e)
    {
      this.g = bw.a(this.mContext);
      this.m = new cl(this.mContext);
      cf localcf = this.m;
      Context localContext = this.mContext;
      ITccSyncDbAdapter.DbAdapterType localDbAdapterType = ITccSyncDbAdapter.DbAdapterType.BWLIST;
      localcf.a(localContext, localDbAdapterType, new kh());
      this.j = new rb(getActivity());
      this.f = ((ki)((SingletonManager)ManagerCreator.getManager(SingletonManager.class)).getSingleton(ki.class));
      this.h = new vk(getActivity(), new aua(this));
      return;
    }
  }

  public final void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i1 = -1;
    int i2;
    if ((paramContextMenuInfo instanceof AdapterView.AdapterContextMenuInfo))
    {
      AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
      i2 = localAdapterContextMenuInfo.position;
      localAdapterContextMenuInfo.position = -2;
      if (i2 != -2)
        break label387;
      if (this.mListView.getTag() == null);
    }
    label387: for (i1 = ((Integer)this.mListView.getTag()).intValue(); ; i1 = i2)
    {
      if ((i1 >= this.mAdapter.getCount()) || (i1 < 0));
      while (true)
      {
        return;
        if (this.mListView.getTag() != null)
        {
          i2 = ((Integer)this.mListView.getTag()).intValue();
          break;
        }
        i2 = i1;
        break;
        lf locallf = (lf)this.mAdapter.getItem(i1);
        if ((locallf != null) && ((locallf.b == 0) || (locallf.b == 1)))
        {
          this.i = new ContextMenuDialog(this.mContext);
          this.i.setContextItemPosition(i1);
          ArrayList localArrayList = new ArrayList();
          ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
          localContextMenuModel1.name = this.mContext.getString(2131427339);
          localContextMenuModel1.eventCode = 1;
          localArrayList.add(localContextMenuModel1);
          ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
          localContextMenuModel2.name = this.mContext.getString(2131427340);
          localContextMenuModel2.eventCode = 2;
          localArrayList.add(localContextMenuModel2);
          ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
          localContextMenuModel3.name = this.mContext.getString(2131427384);
          localContextMenuModel3.eventCode = 3;
          localArrayList.add(localContextMenuModel3);
          ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
          localContextMenuModel4.name = this.mContext.getString(2131427724);
          localContextMenuModel4.eventCode = 4;
          localArrayList.add(localContextMenuModel4);
          this.i.setDataAdapter(localArrayList);
          this.i.setOnItemClickListener(new auj(this));
          this.i.setTitle(this.mContext.getString(2131428414));
          this.i.show();
        }
      }
    }
  }

  public final boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 8217:
    case 8218:
    case 4002:
    case 4001:
    case 3000:
    case 3001:
    case 3002:
    case 3003:
    case 0:
    }
    while (true)
    {
      return;
      if ((this.k != null) && (this.k.isShowing()))
      {
        this.k.dismiss();
        this.k = null;
      }
      int i4 = paramMessage.arg1;
      int i5 = paramMessage.arg2;
      if (4097 != i4)
        if (i5 == 0)
        {
          if (this.p != -1000)
            d(this.p);
        }
        else if (5 == i5)
        {
          a();
        }
        else if (-1 == i5)
        {
          ha.b(this.mContext, 2131428852);
        }
        else
        {
          this.q = this.p;
          Intent localIntent = new Intent();
          int i6 = ho.a().bf();
          if (1 == i6)
          {
            localIntent.setClass(this.mContext, SyncQQAccountLoginActivity.class);
            localIntent.putExtra("FIRST_TIME", false);
          }
          while (true)
          {
            this.mContext.startActivity(localIntent);
            break;
            if (2 == i6)
            {
              localIntent.setClass(this.mContext, SyncMobileAccountLoginActivity.class);
            }
            else
            {
              localIntent.setClass(this.mContext, SyncQQAccountLoginActivity.class);
              localIntent.putExtra("FIRST_TIME", true);
            }
          }
          if ((this.k != null) && (this.k.isShowing()))
          {
            this.k.dismiss();
            this.k = null;
          }
          int i2 = paramMessage.arg1;
          int i3 = paramMessage.arg2;
          if (4097 != i2)
            if (8203 == i3)
            {
              if (this.p != -1000)
                d(this.p);
            }
            else if (8207 == i3)
            {
              a();
              ha.b(this.mContext, 2131427668);
            }
            else if (8208 == i3)
            {
              ha.b(this.mContext, 2131428852);
              continue;
              lf locallf2 = (lf)paramMessage.obj;
              if (locallf2 != null)
                this.j.a(locallf2, this.c, this.mHandler);
              while (true)
              {
                if (!this.s)
                  break label485;
                onResume();
                break;
              }
              label485: continue;
              lf locallf1 = (lf)paramMessage.obj;
              if (locallf1 != null)
                this.c.b(locallf1);
              while (true)
              {
                if (!this.s)
                  break label531;
                onResume();
                break;
              }
              label531: continue;
              d(((Integer)paramMessage.obj).intValue());
              continue;
              if (1005 == ((Integer)paramMessage.obj).intValue())
              {
                if ((this.k != null) && (this.k.isShowing()))
                {
                  ((ProgressDialog)this.k).setProgress(this.m.g());
                  this.k.setMessage(this.mContext.getString(2131427572));
                }
              }
              else if ((this.k != null) && (this.k.isShowing()))
              {
                ((ProgressDialog)this.k).setProgress(this.m.g());
                this.k.setMessage(this.mContext.getString(2131427574));
                continue;
                if ((this.k != null) && (this.k.isShowing()))
                {
                  this.k.dismiss();
                  this.k = null;
                }
                if ((this.l != null) && (this.l.isShowing()))
                {
                  this.l.dismiss();
                  this.l = null;
                }
                if (this.s)
                {
                  int i1 = ((Integer)paramMessage.obj).intValue();
                  this.k = new Dialog(this.mContext);
                  this.k.setTitle(2131427567);
                  StringBuffer localStringBuffer = new StringBuffer();
                  ArrayList localArrayList = new ArrayList();
                  localArrayList.add(Integer.valueOf(5));
                  List localList = this.g.a(null, localArrayList);
                  String str1;
                  if ((localList != null) && (localList.size() > 0))
                  {
                    cs localcs = (cs)localList.get(-1 + localList.size());
                    if (1005 == i1)
                    {
                      this.k.setTitle(2131427581);
                      str1 = this.mContext.getString(2131427432);
                      label885: StringBuilder localStringBuilder1 = new StringBuilder().append(str1);
                      String str2 = this.mContext.getString(2131427593);
                      Object[] arrayOfObject1 = new Object[1];
                      arrayOfObject1[0] = String.valueOf(localcs.e);
                      localStringBuffer.append(String.format(str2, arrayOfObject1));
                      localStringBuffer.append("\n");
                      StringBuilder localStringBuilder2 = new StringBuilder().append(str1);
                      String str3 = this.mContext.getString(2131427594);
                      Object[] arrayOfObject2 = new Object[1];
                      arrayOfObject2[0] = String.valueOf(localcs.g);
                      localStringBuffer.append(String.format(str3, arrayOfObject2));
                      localStringBuffer.append("\n");
                      StringBuilder localStringBuilder3 = new StringBuilder().append(str1);
                      String str4 = this.mContext.getString(2131427595);
                      Object[] arrayOfObject3 = new Object[1];
                      arrayOfObject3[0] = String.valueOf(localcs.f);
                      localStringBuffer.append(String.format(str4, arrayOfObject3));
                      localStringBuffer.append("\n");
                      StringBuilder localStringBuilder4 = new StringBuilder();
                      String str5 = this.mContext.getString(2131427579);
                      Object[] arrayOfObject4 = new Object[1];
                      arrayOfObject4[0] = Long.valueOf((localcs.d - localcs.c) / 1000L);
                      localStringBuffer.append(String.format(str5, arrayOfObject4) + "s");
                      localStringBuffer.append("\n");
                      String str6 = this.mContext.getString(2131427580);
                      Object[] arrayOfObject5 = new Object[1];
                      arrayOfObject5[0] = a.c(localcs.i + localcs.j);
                      localStringBuffer.append(String.format(str6, arrayOfObject5));
                    }
                  }
                  while (true)
                  {
                    this.k.setMessage(localStringBuffer.toString());
                    this.k.setPositiveButton(2131427397, new auc(this), 1);
                    this.k.show();
                    onResume();
                    break;
                    this.k.setTitle(2131427582);
                    str1 = this.mContext.getString(2131427431);
                    break label885;
                    if (i1 == 1005)
                      localStringBuffer.append(this.mContext.getString(2131427581));
                    else
                      localStringBuffer.append(this.mContext.getString(2131427582));
                  }
                  if ((this.k != null) && (this.k.isShowing()))
                  {
                    this.k.dismiss();
                    this.k = null;
                  }
                  if ((this.l != null) && (this.l.isShowing()))
                  {
                    this.l.dismiss();
                    this.l = null;
                  }
                  cf.a locala = (cf.a)paramMessage.obj;
                  if (locala == cf.a.c)
                    ha.a(this.mContext, 2131427629);
                  if (locala == cf.a.b)
                    ha.a(this.mContext, 2131427630);
                  if (locala == cf.a.d)
                  {
                    ha.a(this.mContext, 2131427631);
                    continue;
                    if (this.s)
                      onResume();
                  }
                }
              }
            }
        }
    }
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView.setTag(Integer.valueOf(paramInt));
    lf locallf = (lf)this.mDataList.get(paramInt);
    String[] arrayOfString;
    ArrayList localArrayList;
    if (locallf.b == 1003)
    {
      arrayOfString = this.mContext.getResources().getStringArray(2131165209);
      ContextMenuDialog localContextMenuDialog = new ContextMenuDialog(this.mContext);
      localArrayList = new ArrayList();
      if (this.o == 0)
      {
        ContextMenuModel localContextMenuModel1 = new ContextMenuModel();
        localContextMenuModel1.name = arrayOfString[3];
        localContextMenuModel1.eventCode = 3;
        localArrayList.add(localContextMenuModel1);
        ContextMenuModel localContextMenuModel2 = new ContextMenuModel();
        localContextMenuModel2.name = arrayOfString[4];
        localContextMenuModel2.eventCode = 4;
        localArrayList.add(localContextMenuModel2);
        ContextMenuModel localContextMenuModel3 = new ContextMenuModel();
        localContextMenuModel3.name = arrayOfString[1];
        localContextMenuModel3.eventCode = 5;
        localArrayList.add(localContextMenuModel3);
        ContextMenuModel localContextMenuModel4 = new ContextMenuModel();
        localContextMenuModel4.name = arrayOfString[5];
        localContextMenuModel4.eventCode = 0;
        localArrayList.add(localContextMenuModel4);
        ContextMenuModel localContextMenuModel5 = new ContextMenuModel();
        localContextMenuModel5.name = arrayOfString[6];
        localContextMenuModel5.eventCode = 6;
        localArrayList.add(localContextMenuModel5);
        localContextMenuDialog.setDataAdapter(localArrayList);
        localContextMenuDialog.setOnItemClickListener(new auf(this, localContextMenuDialog));
        localContextMenuDialog.setTitle(2131427392);
        localContextMenuDialog.show();
      }
    }
    while (true)
    {
      return;
      ContextMenuModel localContextMenuModel6 = new ContextMenuModel();
      localContextMenuModel6.name = arrayOfString[1];
      localContextMenuModel6.eventCode = 5;
      localArrayList.add(localContextMenuModel6);
      ContextMenuModel localContextMenuModel7 = new ContextMenuModel();
      localContextMenuModel7.name = arrayOfString[3];
      localContextMenuModel7.eventCode = 3;
      localArrayList.add(localContextMenuModel7);
      ContextMenuModel localContextMenuModel8 = new ContextMenuModel();
      localContextMenuModel8.name = arrayOfString[4];
      localContextMenuModel8.eventCode = 4;
      localArrayList.add(localContextMenuModel8);
      ContextMenuModel localContextMenuModel9 = new ContextMenuModel();
      localContextMenuModel9.name = arrayOfString[7];
      localContextMenuModel9.eventCode = 0;
      localArrayList.add(localContextMenuModel9);
      ContextMenuModel localContextMenuModel10 = new ContextMenuModel();
      localContextMenuModel10.name = arrayOfString[8];
      localContextMenuModel10.eventCode = 6;
      localArrayList.add(localContextMenuModel10);
      break;
      this.j.a(locallf, locallf.b, new aul(this));
    }
  }

  public final boolean onOptionsItemSelected(TabMenuView.MenuModel paramMenuModel)
  {
    switch (paramMenuModel.getId())
    {
    default:
    case 58:
    case 59:
    case 19:
    }
    while (true)
    {
      return true;
      b(58);
      continue;
      b(59);
      continue;
      if (this.mDataList.size() <= 1)
      {
        if (this.o == 0)
          ha.a(this.mContext, 2131427599);
        else
          ha.a(this.mContext, 2131427600);
      }
      else
        this.j.a(this.c, this.mHandler);
    }
  }

  public final void onPause()
  {
    this.s = false;
    super.onPause();
  }

  public final boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.mDataList != null);
    for (int i1 = this.mDataList.size(); ; i1 = 0)
    {
      paramMenu.add(0, 58, 0, QQPimApplication.a().getResources().getString(2131428659)).setIcon(2130838032);
      paramMenu.add(0, 59, 0, QQPimApplication.a().getResources().getString(2131428660)).setIcon(2130838033);
      if ((i1 != 0) && (paramMenu.findItem(19) == null))
        paramMenu.add(0, 19, 0, QQPimApplication.a().getResources().getString(2131428652)).setIcon(2130838009);
      return true;
    }
  }

  public final void onResume()
  {
    this.s = true;
    loadDataList();
    aid localaid = (aid)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaid.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
    String str1;
    if (this.o == 0)
    {
      str1 = this.mContext.getString(2131427801);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = String.valueOf(this.c.c());
      String str2 = String.format(str1, arrayOfObject);
      getFrameworkTemplateUI().updateInfoBarText(str2);
      if (this.mDataList.size() > 1)
        break label209;
      if (this.o != 0)
        break label199;
      setEmptyText(2131428747);
    }
    while (true)
    {
      if ((this.q != -1000) && (this.m.a()))
      {
        this.q = -1000;
        this.r.a();
      }
      return;
      str1 = this.mContext.getString(2131427800);
      break;
      label199: setEmptyText(2131428748);
      continue;
      label209: hideEmptyView();
    }
  }

  public final void refreshListData()
  {
    aid localaid = (aid)getAdapter();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new ListModel(this.mDataList, null, 1, false));
    localaid.setDataList(localArrayList);
    getAdapter().notifyDataSetChanged();
    setReloadData(false);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    if (this.o == 0)
      paramFrameworkTemplateUI.setTitleTextData(2131428005);
    while (true)
    {
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131428004);
    }
  }

  final class a extends ClickableSpan
  {
    private int a = 2131230821;

    public a()
    {
      TextPaint localTextPaint = new TextPaint();
      localTextPaint.linkColor = -1;
      updateDrawState(localTextPaint);
    }

    public final void onClick(View paramView)
    {
      switch (this.a)
      {
      default:
      case 2131230821:
      }
      while (true)
      {
        return;
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://aq.qq.com/cn2/ipwd/my_ipwd"));
        atz.c(atz.this).startActivity(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atz
 * JD-Core Version:    0.6.2
 */