package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Handler;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.permission.PermissionManager;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import ho;
import java.util.Timer;
import java.util.TimerTask;
import jf;
import kx;
import ru;
import ru.a;
import xf;
import xi;

public class PermissionTipDialogView extends LinearLayout
{
  public static String PERMISSION_DIALOG_ADD = "permission_diaolg_add";
  public static String PERMISSION_DIALOG_DELETE = "permission_diaolg_detele";
  public static byte[] mLock = new byte[0];
  private Handler handler = new PermissionTipDialogView.1(this);
  private kx mAppPerm;
  private CheckBoxView mCheckBoxView;
  private ho mConfigDao;
  private Context mContext;
  private ButtonView mForbidButton;
  private String[] mForbidOrPermit;
  private ImageView mImageView;
  private PermissionRequestInfo mInfo;
  private LinearLayout mLean;
  private TextView mMessageView;
  private TextView mPermissionView;
  private ButtonView mPermitButton;
  private int mSeconds;
  private TextView mTimeView;
  private int mTimeoverOpt;
  private Timer mTimer;
  private int[] mTimes;

  public PermissionTipDialogView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mLean = ((LinearLayout)((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903199, null));
    this.mForbidOrPermit = new String[2];
    this.mForbidOrPermit[0] = getResources().getString(2131429016);
    this.mForbidOrPermit[1] = getResources().getString(2131429017);
    this.mTimes = new int[] { 10, 20, 30 };
    this.mConfigDao = ho.a();
    this.mImageView = ((ImageView)this.mLean.findViewById(2131231204));
    this.mMessageView = ((TextView)this.mLean.findViewById(2131230900));
    this.mPermissionView = ((TextView)this.mLean.findViewById(2131231205));
    this.mTimeView = ((TextView)this.mLean.findViewById(2131231206));
    this.mCheckBoxView = ((CheckBoxView)this.mLean.findViewById(2131231207));
    this.mPermitButton = ((ButtonView)this.mLean.findViewById(2131231208));
    this.mPermitButton.setOnClickListener(new ClickEvent());
    this.mForbidButton = ((ButtonView)this.mLean.findViewById(2131231209));
    this.mForbidButton.setOnClickListener(new ClickEvent());
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    addView(this.mLean, localLayoutParams);
  }

  public void RememberState(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = this.mAppPerm.e;
    arrayOfByte[paramInt1] = ((byte)paramInt2);
    new jf().a(this.mAppPerm.a, arrayOfByte);
    ManagerCreator.getManager(PermissionManager.class);
    xi.a(xf.a(this.mAppPerm.a, arrayOfByte, this.mAppPerm.b));
  }

  public void getIntentInfo(Intent paramIntent)
  {
    this.mInfo = ((PermissionRequestInfo)paramIntent.getParcelableExtra("Require_Info"));
    this.mAppPerm = new jf().b(this.mInfo.mUid);
    String str = xf.a(this.mInfo.mRid);
    this.mSeconds = this.mTimes[this.mConfigDao.bA()];
    this.mTimeoverOpt = this.mConfigDao.bB();
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    if (this.mAppPerm.c == null)
      this.mAppPerm.c = localSoftwareManager.getAppInfo(this.mAppPerm.b, 1).getAppName();
    this.mImageView.setImageDrawable(localSoftwareManager.getAppInfo(this.mAppPerm.b, 4).getIcon());
    this.mMessageView.setText(this.mAppPerm.c + getResources().getString(2131429029));
    this.mPermissionView.setText(Html.fromHtml("<font color='red'>" + str + "</font>"));
    this.mTimeView.setText(this.mSeconds + getResources().getString(2131429030) + this.mForbidOrPermit[this.mTimeoverOpt]);
    if (this.mTimer == null)
      this.mTimer = new Timer();
    this.mTimer.schedule(new TimerArrived(), 0L, 1000L);
  }

  public void onBackPressed()
  {
  }

  public class ClickEvent
    implements View.OnClickListener
  {
    public ClickEvent()
    {
    }

    public void onClick(View paramView)
    {
      ru.a locala1 = ru.a;
      int i;
      if (paramView == PermissionTipDialogView.this.mPermitButton)
        i = 0;
      while (true)
      {
        locala1.a = i;
        int j;
        if (PermissionTipDialogView.this.mCheckBoxView.getChecked())
        {
          ButtonView localButtonView = PermissionTipDialogView.this.mPermitButton;
          j = 0;
          if (paramView == localButtonView)
            PermissionTipDialogView.this.RememberState(PermissionTipDialogView.this.mInfo.mRid, j);
        }
        else
        {
          if (PermissionTipDialogView.this.mTimer != null)
          {
            PermissionTipDialogView.this.mTimer.cancel();
            PermissionTipDialogView.this.mTimer.purge();
            PermissionTipDialogView.access$502(PermissionTipDialogView.this, null);
          }
          Intent localIntent = new Intent(PermissionTipDialogView.PERMISSION_DIALOG_DELETE);
          localIntent.setClass(PermissionTipDialogView.this.mContext, SecureService.class);
          PermissionTipDialogView.this.mContext.startService(localIntent);
        }
        synchronized (ru.a)
        {
          ru.a.notifyAll();
          return;
          i = 1;
          continue;
          j = 1;
        }
      }
    }
  }

  public class TimerArrived extends TimerTask
  {
    public TimerArrived()
    {
    }

    public void run()
    {
      int i = 1;
      if (PermissionTipDialogView.access$006(PermissionTipDialogView.this) > 0)
      {
        PermissionTipDialogView.this.handler.sendEmptyMessage(0);
        return;
      }
      ru.a locala1 = ru.a;
      int j;
      if (PermissionTipDialogView.this.mTimeoverOpt == 0)
      {
        j = i;
        locala1.a = j;
        if (PermissionTipDialogView.this.mCheckBoxView.getChecked())
          if (PermissionTipDialogView.this.mTimeoverOpt != 0)
            break label206;
      }
      while (true)
      {
        while (true)
        {
          PermissionTipDialogView.this.RememberState(PermissionTipDialogView.this.mInfo.mRid, i);
          if (PermissionTipDialogView.this.mTimer != null)
          {
            PermissionTipDialogView.this.mTimer.cancel();
            PermissionTipDialogView.this.mTimer.purge();
            PermissionTipDialogView.access$502(PermissionTipDialogView.this, null);
          }
          Intent localIntent = new Intent();
          localIntent.setClass(PermissionTipDialogView.this.mContext, SecureService.class);
          localIntent.setAction(PermissionTipDialogView.PERMISSION_DIALOG_DELETE);
          PermissionTipDialogView.this.mContext.startService(localIntent);
          synchronized (ru.a)
          {
            ru.a.notifyAll();
          }
        }
        j = 0;
        break;
        label206: i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.PermissionTipDialogView
 * JD-Core Version:    0.6.2
 */