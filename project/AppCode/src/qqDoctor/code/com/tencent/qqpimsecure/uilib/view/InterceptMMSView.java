package com.tencent.qqpimsecure.uilib.view;

import adg;
import adh;
import adl;
import adm;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import gz;
import java.io.File;
import java.util.ArrayList;

public class InterceptMMSView extends LinearLayout
{
  public static final String SMILCOMPONENT = "SMILComponent";
  private Context mContext;
  private ArrayList<adg> mSMILComponentlist;
  private ArrayList<View> mViewlist;

  public InterceptMMSView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    setOrientation(1);
  }

  public InterceptMMSView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    setOrientation(1);
  }

  private Bitmap CreateThumbnail(adg paramadg)
  {
    Bitmap localBitmap;
    if (paramadg.b() == 1)
    {
      BitmapThumbnailWH localBitmapThumbnailWH = getThumbnailWH(((adh)paramadg).e());
      if (new File(((adh)paramadg).e()).exists())
        localBitmap = gz.a(((adh)paramadg).e(), localBitmapThumbnailWH.width, localBitmapThumbnailWH.height);
    }
    while (true)
    {
      return localBitmap;
      localBitmap = BitmapFactory.decodeResource(this.mContext.getResources(), 2130838070);
      continue;
      if (paramadg.b() == 3)
      {
        if (new File(((adm)paramadg).e()).exists())
          localBitmap = gz.b(((adm)paramadg).e(), 310, 230);
        else
          localBitmap = BitmapFactory.decodeResource(this.mContext.getResources(), 2130838070);
      }
      else
      {
        int i = paramadg.b();
        localBitmap = null;
        if (i == 2)
          localBitmap = null;
      }
    }
  }

  private void createViewData()
  {
    if (this.mSMILComponentlist == null)
      return;
    this.mViewlist = new ArrayList();
    int i = this.mSMILComponentlist.size();
    int j = 0;
    label29: if (j < i)
    {
      if (((adg)this.mSMILComponentlist.get(j)).b() != 0)
        break label120;
      TextView localTextView = new TextView(this.mContext);
      localTextView.setTextColor(-16777216);
      localTextView.setTextSize(17.0F);
      localTextView.setTag(this.mSMILComponentlist.get(j));
      localTextView.setText(((adl)this.mSMILComponentlist.get(j)).g());
      this.mViewlist.add(localTextView);
    }
    while (true)
    {
      j++;
      break label29;
      break;
      label120: if ((((adg)this.mSMILComponentlist.get(j)).b() == 1) || (((adg)this.mSMILComponentlist.get(j)).b() == 3) || (((adg)this.mSMILComponentlist.get(j)).b() == 2))
      {
        MMSThumbnailDefaultView localMMSThumbnailDefaultView = new MMSThumbnailDefaultView(this.mContext, ((adg)this.mSMILComponentlist.get(j)).b());
        localMMSThumbnailDefaultView.setTag(this.mSMILComponentlist.get(j));
        this.mViewlist.add(localMMSThumbnailDefaultView);
      }
    }
  }

  private void setChildClickEvent()
  {
    if (this.mViewlist != null)
    {
      int i = this.mViewlist.size();
      for (int j = 0; j < i; j++)
      {
        adg localadg = (adg)((View)this.mViewlist.get(j)).getTag();
        ((View)this.mViewlist.get(j)).setOnClickListener(new InterceptMMSView.1(this, localadg));
      }
    }
  }

  public ArrayList<View> addChildView()
  {
    int i;
    if (this.mViewlist != null)
    {
      i = this.mViewlist.size();
      if (i != 0)
        break label26;
    }
    for (ArrayList localArrayList = this.mViewlist; ; localArrayList = this.mViewlist)
    {
      return localArrayList;
      label26: for (int j = 0; j < i; j++)
      {
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
        localLayoutParams.gravity = 17;
        addView((View)this.mViewlist.get(j), localLayoutParams);
      }
      setChildClickEvent();
    }
  }

  public void createChidView()
  {
    removeAllViews();
    createViewData();
  }

  public ArrayList<Bitmap> getBitmap(ArrayList<adg> paramArrayList, ArrayList<View> paramArrayList1)
  {
    Object localObject;
    if ((paramArrayList == null) || (paramArrayList.size() == 0))
    {
      localObject = null;
      return localObject;
    }
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayList.size();
    int j = 0;
    label33: Bitmap localBitmap1;
    Bitmap localBitmap2;
    if (j < i)
      if ((((adg)paramArrayList.get(j)).b() != 0) && (((adg)paramArrayList.get(j)).b() != 4) && (((adg)paramArrayList.get(j)).b() != 5))
      {
        localBitmap1 = CreateThumbnail((adg)paramArrayList.get(j));
        if (localBitmap1 != null)
          break label188;
        if (((adg)paramArrayList.get(j)).b() != 2)
          break label150;
        localBitmap2 = BitmapFactory.decodeResource(QQPimApplication.a().getResources(), 2130838042);
      }
    while (true)
    {
      localArrayList.add(localBitmap2);
      j++;
      break label33;
      label150: if (((adg)paramArrayList.get(j)).b() == 3)
      {
        localBitmap2 = BitmapFactory.decodeResource(QQPimApplication.a().getResources(), 2130838355);
        continue;
        localObject = localArrayList;
        break;
      }
      label188: localBitmap2 = localBitmap1;
    }
  }

  public ArrayList<View> getChildView()
  {
    return this.mViewlist;
  }

  public BitmapThumbnailWH getThumbnailWH(String paramString)
  {
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString);
    Object localObject;
    if (localBitmap == null)
    {
      localObject = new BitmapThumbnailWH();
      return localObject;
    }
    int i = localBitmap.getWidth();
    int j = localBitmap.getHeight();
    localBitmap.recycle();
    BitmapThumbnailWH localBitmapThumbnailWH = new BitmapThumbnailWH();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((Activity)this.mContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int k = localDisplayMetrics.widthPixels;
    if (i >= j)
      localBitmapThumbnailWH.width = (k * 3 / 5);
    for (localBitmapThumbnailWH.height = (3 * (k * j) / (i * 5)); ; localBitmapThumbnailWH.height = (k * j / (i * 3)))
    {
      localObject = localBitmapThumbnailWH;
      break;
      localBitmapThumbnailWH.width = (k / 3);
    }
  }

  public void setData(ArrayList<adg> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.size() == 0));
    while (true)
    {
      return;
      this.mSMILComponentlist = paramArrayList;
    }
  }

  public class BitmapThumbnailWH
  {
    public int height = 200;
    public int width = 100;

    public BitmapThumbnailWH()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.InterceptMMSView
 * JD-Core Version:    0.6.2
 */