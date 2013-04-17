import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.model.OperatingModel;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;
import java.util.ArrayList;
import java.util.List;

public final class bav extends BaseView
{
  private NetworkManager a;
  private iu b;
  private EditText c;
  private EditText d;
  private ScrollView e;
  private boolean f = false;
  private TextWatcher g;

  public bav(Context paramContext)
  {
    super(paramContext, 2130903157);
    this.mContext = paramContext;
    this.b = new iu(QQPimApplication.a());
    this.a = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
    Intent localIntent = getActivity().getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
        this.f = localBundle.getBoolean("intent_from", false);
    }
    this.g = new baw(this);
  }

  protected final List<OperatingModel> createOperatingBarDataList()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.f)
      localArrayList.add(new OperatingModel(0, 2131429157));
    while (true)
    {
      return localArrayList;
      if ((this.b.j()) || (this.b.i()))
      {
        localArrayList.add(new OperatingModel(1, 2131427397));
        localArrayList.add(new OperatingModel(2, 2131427379));
      }
      else
      {
        localArrayList.add(new OperatingModel(0, 2131429157));
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    this.e = ((ScrollView)findViewById(2131231027));
    this.c = ((EditText)findViewById(2131231030));
    this.c.setText(this.b.getClosingDayForMonth());
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(2);
    this.c.setFilters(arrayOfInputFilter);
    this.c.addTextChangedListener(this.g);
    if (this.f)
    {
      ((TextView)findViewById(2131231028)).setText(2131430287);
      this.d = ((EditText)findViewById(2131231029));
      this.d.addTextChangedListener(this.g);
      if (this.b.getTotalForMonth() != 0L)
        break label242;
      this.d.setText("");
    }
    while (true)
    {
      ho localho = ho.a();
      String str1 = localho.cr();
      String str2 = localho.cs();
      if ((new iy(QQPimApplication.a()).a() == null) && ((str1 == null) || ("".equals(str1)) || (str2 == null) || ("".equals(str2))))
        iv.a().c();
      return;
      ((TextView)findViewById(2131231028)).setText(2131429153);
      break;
      label242: this.d.setText(this.b.getTotalForMonth() / 1048576L);
    }
  }

  // ERROR //
  public final void onOperatingBarClick(OperatingModel paramOperatingModel)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 277	com/tencent/qqpimsecure/uilib/model/OperatingModel:getID	()I
    //   4: iconst_2
    //   5: if_icmpne +10 -> 15
    //   8: aload_0
    //   9: invokevirtual 54	bav:getActivity	()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;
    //   12: invokevirtual 280	com/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity:finish	()V
    //   15: aload_0
    //   16: getfield 85	bav:d	Landroid/widget/EditText;
    //   19: invokevirtual 91	android/widget/EditText:getText	()Landroid/text/Editable;
    //   22: invokevirtual 97	java/lang/Object:toString	()Ljava/lang/String;
    //   25: invokevirtual 102	java/lang/String:trim	()Ljava/lang/String;
    //   28: astore_2
    //   29: aload_2
    //   30: invokevirtual 108	java/lang/String:length	()I
    //   33: ifle +234 -> 267
    //   36: aload_2
    //   37: invokestatic 114	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   40: lstore 4
    //   42: ldc2_w 269
    //   45: lload 4
    //   47: lmul
    //   48: lstore 6
    //   50: lload 6
    //   52: ldc2_w 281
    //   55: lcmp
    //   56: iflt +26 -> 82
    //   59: aload_0
    //   60: getfield 29	bav:mContext	Landroid/content/Context;
    //   63: aload_0
    //   64: getfield 29	bav:mContext	Landroid/content/Context;
    //   67: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   70: ldc_w 283
    //   73: invokevirtual 157	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   76: invokestatic 162	ha:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   79: goto +293 -> 372
    //   82: lload 4
    //   84: lconst_0
    //   85: lcmp
    //   86: iflt +135 -> 221
    //   89: aload_0
    //   90: getfield 40	bav:b	Liu;
    //   93: lload 6
    //   95: invokevirtual 287	iu:setTotalForMonth	(J)V
    //   98: aload_0
    //   99: getfield 104	bav:c	Landroid/widget/EditText;
    //   102: invokevirtual 91	android/widget/EditText:getText	()Landroid/text/Editable;
    //   105: invokevirtual 97	java/lang/Object:toString	()Ljava/lang/String;
    //   108: invokevirtual 102	java/lang/String:trim	()Ljava/lang/String;
    //   111: invokevirtual 108	java/lang/String:length	()I
    //   114: ifle +223 -> 337
    //   117: aload_0
    //   118: getfield 104	bav:c	Landroid/widget/EditText;
    //   121: invokevirtual 91	android/widget/EditText:getText	()Landroid/text/Editable;
    //   124: invokevirtual 97	java/lang/Object:toString	()Ljava/lang/String;
    //   127: invokevirtual 102	java/lang/String:trim	()Ljava/lang/String;
    //   130: invokestatic 120	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   133: istore 9
    //   135: iload 9
    //   137: bipush 31
    //   139: if_icmpgt +151 -> 290
    //   142: iload 9
    //   144: ifle +146 -> 290
    //   147: aload_0
    //   148: getfield 40	bav:b	Liu;
    //   151: iload 9
    //   153: invokevirtual 124	iu:setClosingDayForMonth	(I)V
    //   156: iconst_1
    //   157: putstatic 291	we:a	Z
    //   160: aload_0
    //   161: getfield 50	bav:a	Lcom/tencent/tmsecure/module/network/NetworkManager;
    //   164: invokevirtual 294	com/tencent/tmsecure/module/network/NetworkManager:notifyConfigChange	()V
    //   167: aload_1
    //   168: invokevirtual 277	com/tencent/qqpimsecure/uilib/model/OperatingModel:getID	()I
    //   171: ifne +40 -> 211
    //   174: new 70	android/os/Bundle
    //   177: dup
    //   178: invokespecial 295	android/os/Bundle:<init>	()V
    //   181: astore 10
    //   183: aload_0
    //   184: getfield 25	bav:f	Z
    //   187: ifeq +173 -> 360
    //   190: aload 10
    //   192: ldc_w 297
    //   195: iconst_1
    //   196: invokevirtual 301	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   199: aload_0
    //   200: invokevirtual 54	bav:getActivity	()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;
    //   203: getstatic 306	fs:b	I
    //   206: aload 10
    //   208: invokestatic 309	fs:a	(Landroid/app/Activity;ILandroid/os/Bundle;)V
    //   211: aload_0
    //   212: invokevirtual 54	bav:getActivity	()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;
    //   215: invokevirtual 280	com/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity:finish	()V
    //   218: goto +154 -> 372
    //   221: aload_0
    //   222: getfield 29	bav:mContext	Landroid/content/Context;
    //   225: aload_0
    //   226: getfield 29	bav:mContext	Landroid/content/Context;
    //   229: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   232: ldc_w 310
    //   235: invokevirtual 157	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   238: invokestatic 162	ha:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   241: goto +131 -> 372
    //   244: astore_3
    //   245: aload_0
    //   246: getfield 29	bav:mContext	Landroid/content/Context;
    //   249: aload_0
    //   250: getfield 29	bav:mContext	Landroid/content/Context;
    //   253: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   256: ldc 151
    //   258: invokevirtual 157	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   261: invokestatic 162	ha:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   264: goto +108 -> 372
    //   267: aload_0
    //   268: getfield 29	bav:mContext	Landroid/content/Context;
    //   271: aload_0
    //   272: getfield 29	bav:mContext	Landroid/content/Context;
    //   275: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   278: ldc_w 311
    //   281: invokevirtual 157	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   284: invokestatic 162	ha:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   287: goto +85 -> 372
    //   290: aload_0
    //   291: getfield 29	bav:mContext	Landroid/content/Context;
    //   294: aload_0
    //   295: getfield 29	bav:mContext	Landroid/content/Context;
    //   298: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   301: ldc_w 312
    //   304: invokevirtual 157	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   307: invokestatic 162	ha:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   310: goto +62 -> 372
    //   313: astore 8
    //   315: aload_0
    //   316: getfield 29	bav:mContext	Landroid/content/Context;
    //   319: aload_0
    //   320: getfield 29	bav:mContext	Landroid/content/Context;
    //   323: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   326: ldc 151
    //   328: invokevirtual 157	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   331: invokestatic 162	ha:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   334: goto +38 -> 372
    //   337: aload_0
    //   338: getfield 29	bav:mContext	Landroid/content/Context;
    //   341: aload_0
    //   342: getfield 29	bav:mContext	Landroid/content/Context;
    //   345: invokevirtual 150	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   348: ldc_w 313
    //   351: invokevirtual 157	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   354: invokestatic 162	ha:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   357: goto +15 -> 372
    //   360: aload 10
    //   362: ldc_w 315
    //   365: iconst_1
    //   366: invokevirtual 319	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   369: goto -170 -> 199
    //   372: return
    //
    // Exception table:
    //   from	to	target	type
    //   36	98	244	java/lang/NumberFormatException
    //   221	241	244	java/lang/NumberFormatException
    //   117	156	313	java/lang/NumberFormatException
    //   290	310	313	java/lang/NumberFormatException
  }

  public final void onOptionClick(int paramInt)
  {
    super.onOptionClick(paramInt);
    fs.c();
  }

  public final void onResume()
  {
    super.onResume();
    int i = this.e.getMeasuredHeight();
    this.e.scrollTo(0, i);
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setBackButtonStyle((byte)2);
    if (this.f)
      paramFrameworkTemplateUI.setTitleTextData(2131428285);
    while (true)
    {
      paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
      paramFrameworkTemplateUI.setOptionButtonWithImageResource(2130837802);
      return;
      paramFrameworkTemplateUI.setTitleTextData(2131427485);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bav
 * JD-Core Version:    0.6.2
 */