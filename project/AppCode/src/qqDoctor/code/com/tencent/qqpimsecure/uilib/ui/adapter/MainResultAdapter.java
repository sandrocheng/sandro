package com.tencent.qqpimsecure.uilib.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ResultModel;
import com.tencent.qqpimsecure.uilib.model.SoftResultModel;
import java.util.ArrayList;
import java.util.List;
import lv;
import sl;

public class MainResultAdapter extends BaseAdapter
{
  private Context mContext;
  private List<ResultModel> mDataList = new ArrayList();
  private Drawable mDefaultDrawable;
  private int mDefaultDrawableRes;
  private sl mImageLoaderService;
  private LayoutInflater mLayoutInflater;
  private ListView mListView;
  private TextUtils.TruncateAt mTitleEllipsize = null;

  public MainResultAdapter(Context paramContext, ListView paramListView, List<ResultModel> paramList, sl paramsl)
  {
    this.mLayoutInflater = LayoutInflater.from(paramContext);
    this.mDataList = paramList;
    this.mContext = paramContext;
    this.mDefaultDrawableRes = 17301651;
    this.mDefaultDrawable = this.mContext.getResources().getDrawable(this.mDefaultDrawableRes);
    this.mListView = paramListView;
    paramListView.setTranscriptMode(2);
    this.mImageLoaderService = paramsl;
  }

  private void setImage(ResultHolder paramResultHolder, SoftResultModel paramSoftResultModel, int paramInt)
  {
    switch (paramSoftResultModel.getDrawableType())
    {
    default:
      paramResultHolder.mIconImage.setImageDrawable(this.mDefaultDrawable);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      try
      {
        int i = Integer.valueOf(paramSoftResultModel.getDrawableValue()).intValue();
        paramResultHolder.mIconImage.setImageDrawable(this.mContext.getResources().getDrawable(i));
      }
      catch (NumberFormatException localNumberFormatException)
      {
        localNumberFormatException.printStackTrace();
      }
      break;
      if (this.mImageLoaderService != null)
      {
        paramResultHolder.mIconImage.setImageDrawable(this.mDefaultDrawable);
        startLoader(2, paramInt, paramResultHolder, paramSoftResultModel);
      }
      else
      {
        paramResultHolder.mIconImage.setImageDrawable(this.mDefaultDrawable);
        continue;
        if (this.mImageLoaderService != null)
        {
          paramResultHolder.mIconImage.setImageDrawable(this.mDefaultDrawable);
          startLoader(1, paramInt, paramResultHolder, paramSoftResultModel);
        }
        else
        {
          paramResultHolder.mIconImage.setImageDrawable(this.mDefaultDrawable);
        }
      }
    }
  }

  private void startLoader(int paramInt1, int paramInt2, ResultHolder paramResultHolder, SoftResultModel paramSoftResultModel)
  {
    String str = paramSoftResultModel.getDrawableValue();
    paramResultHolder.mIconImage.setTag(str);
    lv locallv = new lv();
    locallv.b = paramInt1;
    locallv.g = str.hashCode();
    locallv.d = str;
    locallv.a = 0;
    locallv.i = new MainResultAdapter.1(this, paramInt2);
    this.mImageLoaderService.b(locallv);
  }

  public int getCount()
  {
    return this.mDataList.size();
  }

  public Object getItem(int paramInt)
  {
    return this.mDataList.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    if (((ResultModel)this.mDataList.get(paramInt)).getResultType() == 0);
    for (int i = 0; ; i = 1)
      return i;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject2;
    Object localObject3;
    Object localObject1;
    label85: ResultModel localResultModel;
    if (paramView == null)
      if (getItemViewType(paramInt) == 0)
      {
        View localView2 = this.mLayoutInflater.inflate(2130903318, null);
        ResultHolder localResultHolder2 = new ResultHolder();
        localResultHolder2.mTitleText = ((TextView)localView2.findViewById(2131231033));
        localResultHolder2.mCountText = ((TextView)localView2.findViewById(2131231607));
        localObject2 = localResultHolder2;
        localObject3 = localView2;
        ((View)localObject3).setTag(localObject2);
        localObject1 = localObject2;
        paramView = (View)localObject3;
        localResultModel = (ResultModel)this.mDataList.get(paramInt);
        ((ResultHolder)localObject1).mTitleText.setText(localResultModel.getTitle());
        if (this.mTitleEllipsize != null)
          ((ResultHolder)localObject1).mTitleText.setEllipsize(this.mTitleEllipsize);
        if (localResultModel.getResultType() != 0)
          break label544;
        switch (localResultModel.getTitleColor())
        {
        default:
          ((ResultHolder)localObject1).mTitleText.setTextColor(this.mContext.getResources().getColor(2131296260));
          ((ResultHolder)localObject1).mCountText.setTextColor(this.mContext.getResources().getColor(2131296260));
          label224: if (localResultModel.getCount() != 0L)
          {
            ((ResultHolder)localObject1).mCountText.setVisibility(0);
            ((ResultHolder)localObject1).mCountText.setText("(" + localResultModel.getCount() + ")");
          }
          break;
        case 3:
        case 2:
        case 1:
        }
      }
    while (true)
    {
      return paramView;
      View localView1 = this.mLayoutInflater.inflate(2130903319, null);
      ResultHolder localResultHolder1 = new ResultHolder();
      localResultHolder1.mTitleText = ((TextView)localView1.findViewById(2131231033));
      localResultHolder1.mCountText = ((TextView)localView1.findViewById(2131231607));
      localResultHolder1.mIconImage = ((ImageView)localView1.findViewById(2131230869));
      localResultHolder1.mMessageText = ((TextView)localView1.findViewById(2131230871));
      localResultHolder1.mStateImage = ((ImageView)localView1.findViewById(2131231570));
      localObject2 = localResultHolder1;
      localObject3 = localView1;
      break;
      localObject1 = (ResultHolder)paramView.getTag();
      break label85;
      ((ResultHolder)localObject1).mTitleText.setTextColor(this.mContext.getResources().getColor(2131296260));
      ((ResultHolder)localObject1).mCountText.setTextColor(this.mContext.getResources().getColor(2131296260));
      break label224;
      ((ResultHolder)localObject1).mTitleText.setTextColor(this.mContext.getResources().getColor(2131296307));
      ((ResultHolder)localObject1).mCountText.setTextColor(this.mContext.getResources().getColor(2131296307));
      break label224;
      ((ResultHolder)localObject1).mTitleText.setTextColor(this.mContext.getResources().getColor(2131296308));
      ((ResultHolder)localObject1).mCountText.setTextColor(this.mContext.getResources().getColor(2131296308));
      break label224;
      ((ResultHolder)localObject1).mCountText.setVisibility(8);
    }
    label544: Drawable localDrawable = localResultModel.getIcon();
    if ((localDrawable != null) && ((localDrawable instanceof BitmapDrawable)));
    for (Bitmap localBitmap = ((BitmapDrawable)localDrawable).getBitmap(); ; localBitmap = null)
    {
      if (((localBitmap == null) || (localBitmap.isRecycled())) && (this.mImageLoaderService != null))
      {
        ((ResultHolder)localObject1).mIconImage.setImageDrawable(this.mDefaultDrawable);
        if ((localResultModel instanceof SoftResultModel))
          setImage((ResultHolder)localObject1, (SoftResultModel)localResultModel, paramInt);
      }
      while (true)
      {
        if (localResultModel.getState() == -1)
          break label702;
        ((ResultHolder)localObject1).mStateImage.setVisibility(0);
        ((ResultHolder)localObject1).mStateImage.setImageResource(localResultModel.getState());
        break;
        ((ResultHolder)localObject1).mIconImage.setVisibility(4);
        continue;
        if (localDrawable == null)
          localResultModel.setIcon(this.mDefaultDrawable);
        else
          ((ResultHolder)localObject1).mIconImage.setImageDrawable(localDrawable);
      }
      label702: ((ResultHolder)localObject1).mStateImage.setVisibility(8);
      ((ResultHolder)localObject1).mMessageText.setText(localResultModel.getMessage());
      break;
    }
  }

  public int getViewTypeCount()
  {
    return 2;
  }

  public void setDataList(List<ResultModel> paramList)
  {
    this.mDataList = paramList;
  }

  public void setmTitleEllipsize(TextUtils.TruncateAt paramTruncateAt)
  {
    this.mTitleEllipsize = paramTruncateAt;
  }

  static class ResultHolder
  {
    TextView mCountText;
    ImageView mIconImage;
    TextView mMessageText;
    ImageView mStateImage;
    TextView mTitleText;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.MainResultAdapter
 * JD-Core Version:    0.6.2
 */