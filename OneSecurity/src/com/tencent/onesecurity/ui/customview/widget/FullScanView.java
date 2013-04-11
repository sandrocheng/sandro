package com.tencent.onesecurity.ui.customview.widget;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Random;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Region;
import android.util.AttributeSet;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;
import com.tencent.onesecurity.util.DeviceUtil;

/**
 * 全盘杀毒动效自定义View. 数字阵列横向移动, 同时放大镜以 斜向椭圆轨迹移动.
 * 
 * @version 1.0
 * @author LionLiu
 */
public class FullScanView extends ImageView implements CartonCallBackLisener {

	/** 公用属性Begin */
	/** View宽度 */
	private int viewWidth;

	/** View高度 */
	private int viewHeight;

	/** onDraw()方法 Clip圆形区域的半径 */
	private int clipReginRadius;

	/** View中心的X,Y坐标 */
	private int center;

	/** 用于Clip圆型区域的Path */
	private Path mPath;

	private Context mContext;

	private boolean pause = false;

	// /** 放大镜相关属性Begin */
	// /** 斜椭圆移动路径 Path */
	// private Path pathMoveAlong;
	//
	// /** 路径移动的步数 */
	// private int step = 100;
	//
	// /** 当前移动到第几步 */
	// private int iCurStep = 0;
	//
	// /** 每一步移动的长度 = (路径周长 / 步数 ) */
	// private float fSegmentLen;

	/** 放大镜图片 (需要压缩尺寸) */
//	private Bitmap mScanBitmap;

	/** Scan图片压缩的尺寸 (如果View的高度改变，这个参数需要做相应修改) */
	private int SCAN_SCALE_WIDTH = 214;

	/** Matrix 存放每一步要移动的X,Y */
	// private Matrix mxTransform;

	// private PathMeasure pm;

	/**
	 * 放大镜图片中心 的坐标 X,Y, 用于将放大镜中心放置在椭圆路径上
	 */
//	private int scanCenter;

	/** 数字阵列属性 Begin */
	/** 默认/扫描的数字移动步长 */
	private static final int NORMAL_STEP = 1;

	/** 数字阵列初始化Y位置 */
	private static final int NUM_MATRIX_DY = 3;

	private int moveStep = NORMAL_STEP;

	private Random random;

	/**
	 * 0:浅色数字0 1:浅色数字1
	 */
	private Bitmap[] numBipmaps;

	/** 数字阵列存储List */
	private ArrayList<ArrayList<NumberMoudle>> numberMatrix;

	public FullScanView(Context context) {
		super(context);
		init(context);
	}

	public FullScanView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}

	public FullScanView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}

	/**
	 * 初始化公共属性
	 * 
	 * @Description
	 * @version 1.0
	 * @author LionLiu
	 */
	private void init(Context context) {
		mContext = context;

		mPath = new Path();

		/** 初始化0,1 图片数组 */
		numBipmaps = new Bitmap[2];
		numBipmaps[0] = initBitmap(R.drawable.number_fullscan_0, context);
		numBipmaps[1] = initBitmap(R.drawable.number_fullscan_1, context);

		random = new Random();

		numberMatrix = new ArrayList<ArrayList<NumberMoudle>>();

		/** 初始化放大镜图片 */
		initScanBitmap();
	}

	/**
	 * 初始化 放大镜图片
	 * 
	 * @Description
	 * @version 1.0
	 * @author LionLiu
	 */
	private void initScanBitmap() {
		Bitmap tempBitmap = initBitmap(R.drawable.mask_zoom, mContext);

		/** 压缩图片尺寸 */
		float scale = (float) (SCAN_SCALE_WIDTH * DeviceUtil.getDeviceDensity())
				/ tempBitmap.getWidth();
		Matrix matrix = new Matrix();
		matrix.postScale(scale, scale);
//		mScanBitmap = Bitmap.createBitmap(tempBitmap, 0, 0,
//				tempBitmap.getWidth(), tempBitmap.getHeight(), matrix, true);
//		scanCenter = mScanBitmap.getWidth() >> 1;
	}

	Paint mPaint = new Paint();
	@Override
	protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);
		/** 如果View的高宽还未取到 */
		if (0 == viewWidth) {
			initViewAfterDraw();
			mPath.addCircle(center, center, clipReginRadius, Path.Direction.CW);
			mPaint.setAlpha(255);
		}
		canvas.clipPath(mPath, Region.Op.REPLACE);
		/** 获取椭圆路径下个点的 坐标 */
		// pm.getMatrix(fSegmentLen * iCurStep, mxTransform,
		// PathMeasure.POSITION_MATRIX_FLAG);
		// float[] values = new float[9];
		// mxTransform.getValues(values);
		/** Draw */
		drawScene(canvas);
	}

	/**
	 * 画图操作
	 * 
	 * @Description 1. 画数字阵列. 2.指定位置画放大镜
	 * @version 1.0
	 * @author LionLiu
	 */
	private void drawScene(Canvas canvas) {
		// 数字阵列
		for (ArrayList<NumberMoudle> numberList : this.numberMatrix) {
			for (NumberMoudle nm : numberList) {
				canvas.drawBitmap(nm.getNumBitmap(), nm.numX, nm.numY, mPaint);
			}
		}
	}

	/**
	 * 初始化View参数
	 * 
	 * @Description 由于getWidth方法在onCreate()中为0， 所以部分初始化移在onDraw()中
	 * @version 1.0
	 * @author LionLiu
	 */
	private void initViewAfterDraw() {
		final float density = DeviceUtil.getDeviceDensity();

		viewWidth = this.getWidth();
		viewHeight = this.getHeight();
		center = (viewHeight >> 1);
		clipReginRadius = (int) ((viewHeight >> 1) - density);

		// pathMoveAlong = new Path();
		// // 添加椭圆轨迹
		// pathMoveAlong.addOval(new RectF(23 * density, 30 * density, 63 *
		// density, 56 * density),
		// Direction.CW);
		// // 将轨迹旋转45度
		// Matrix mMatrix = new Matrix();
		// mMatrix.postRotate(-45l, center, center);
		// pathMoveAlong.transform(mMatrix);

		// mxTransform = new Matrix();
		// pm = new PathMeasure(pathMoveAlong, false);
		// fSegmentLen = pm.getLength() / step;

		// 初始化数字矩阵
		initNumMatrix();
	}

	/**
	 * 初始化数字矩阵
	 * 
	 * @Description
	 * @version 1.0
	 * @author LionLiu
	 */
	private void initNumMatrix() {

		int yOffset = 5;

		int countRow = (viewWidth / (numBipmaps[0].getHeight() + yOffset)) + 2;
		ArrayList<NumberMoudle> numberList;

		int y = (int) (NUM_MATRIX_DY * DeviceUtil.getDeviceDensity());
		for (int i = 0; i < countRow; i++) {
			int x = -numBipmaps[0].getWidth();
			int count = (viewWidth / numBipmaps[0].getWidth()) + 2;
			numberList = new ArrayList<NumberMoudle>();
			for (int j = 0; j < count; j++) {
				NumberMoudle numMoudle = new NumberMoudle(random.nextInt(2), x,
						y);
				numberList.add(numMoudle);
				x += numMoudle.getNumBitmap().getWidth();
			}
			numberMatrix.add(numberList);
			y += numBipmaps[0].getHeight() + yOffset;
		}
	}

	@Override
	public void onTime() {
		// if (iCurStep <= step) {
		// iCurStep++;
		// } else {
		// restoreToFirst();
		// }

		for (ArrayList<NumberMoudle> numberList : this.numberMatrix) {
			if (numberList.get(0).numX > 0) {
				int y = numberList.get(0).numY;
				numberList.remove(numberList.size() - 1);
				numberList.add(0, new NumberMoudle(random.nextInt(2),
						-numBipmaps[0].getWidth(), y));
			}
			for (NumberMoudle nm : numberList) {
				nm.move(moveStep);
			}
		}
		invalidate();
	}

	// /**
	// * 返回初始化状态
	// *
	// * @Description
	// * @version 1.0
	// * @author LionLiu
	// */
	// public void restoreToFirst() {
	// iCurStep = 1;
	// }

	@Override
	public int getCircleMultiple() {
		return 2;
	}

	@Override
	public boolean isPause() {
		return this.pause;
	}

	public void setPause(boolean pause) {
		this.pause = pause;
	}

	private Bitmap initBitmap(int resId, Context context) {
		InputStream is = context.getResources().openRawResource(resId);
		Bitmap bitmap = BitmapFactory.decodeStream(is);
		try {
			is.close();
		} catch (IOException e) {
		}
		return bitmap;
	}

	private class NumberMoudle {
		private int num;

		private int numX;

		private int numY;

		private NumberMoudle(int num, int numX, int numY) {
			this.num = num;
			this.numX = numX;
			this.numY = numY;
		}

		private Bitmap getNumBitmap() {
			if (num == 0) {
				return numBipmaps[0];
			} else {
				return numBipmaps[1];
			}
		}

		private void move(int dx) {
			numX += dx;
		}
	}
}
