package com.tencent.qqpimsecure.uilib.view.software;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import ft;
import ft.a;

public class StorageTable extends LinearLayout
{
  private final float KCSRRingDipX = 28.5F;
  private final float KCSRRingDipY = 46.5F;
  private final float KPSRRingDipX = 42.0F;
  private final float KPSRRingDipY = 41.0F;
  private StorageRingView mCardStorageRing;
  private StorageRingView mPhoneStorageRing;

  public StorageTable(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
    updateStorage();
  }

  private void init(Context paramContext)
  {
    int i = (int)(0.5F + 42.0F * paramContext.getResources().getDisplayMetrics().density);
    int j = (int)(0.5F + 41.0F * paramContext.getResources().getDisplayMetrics().density);
    this.mPhoneStorageRing = new StorageRingView(paramContext);
    this.mPhoneStorageRing.setRes(2130838108, 2130838109, 2131427880, i, j, true);
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-2, -2);
    addView(this.mPhoneStorageRing, localLayoutParams1);
    int k = (int)(0.5F + 28.5F * paramContext.getResources().getDisplayMetrics().density);
    int m = (int)(0.5F + 46.5F * paramContext.getResources().getDisplayMetrics().density);
    this.mCardStorageRing = new StorageRingView(paramContext);
    this.mCardStorageRing.setRes(2130837579, 2130837580, 2131427881, k, m, false);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams(-2, -2);
    addView(this.mCardStorageRing, localLayoutParams2);
  }

  public void destroy()
  {
    this.mPhoneStorageRing.recycleBitmap();
    this.mCardStorageRing.recycleBitmap();
  }

  public void updateStorage()
  {
    ft.a locala1 = new ft.a();
    ft.b(locala1);
    if (locala1.b > 0L)
    {
      this.mPhoneStorageRing.setPercent((int)(100L * (locala1.b - locala1.a) / locala1.b), true);
      ft.a locala2 = new ft.a();
      ft.a(locala2);
      if (locala2.b <= 0L)
        break label109;
      this.mCardStorageRing.setPercent((int)(100L * (locala2.b - locala2.a) / locala2.b), true);
    }
    while (true)
    {
      return;
      this.mPhoneStorageRing.setPercent(0, false);
      break;
      label109: this.mCardStorageRing.setPercent(0, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.software.StorageTable
 * JD-Core Version:    0.6.2
 */