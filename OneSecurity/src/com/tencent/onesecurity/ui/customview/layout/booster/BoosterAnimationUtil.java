package com.tencent.onesecurity.ui.customview.layout.booster;

import android.content.Context;
import com.tencent.onesecurity.R;
public class BoosterAnimationUtil {
	static public final int COLOROFFSET = 0x0B000000;
	static public final int WHITE = 0xFFFFFFFF;
	static public final int[] COLOR = { WHITE - COLOROFFSET * 17,
			WHITE - COLOROFFSET * 16, WHITE - COLOROFFSET * 15,
			WHITE - COLOROFFSET * 14, WHITE - COLOROFFSET * 13,
			WHITE - COLOROFFSET * 12, WHITE - COLOROFFSET * 11,
			WHITE - COLOROFFSET * 10, WHITE - COLOROFFSET * 9,
			WHITE - COLOROFFSET * 8, WHITE - COLOROFFSET * 7,
			WHITE - COLOROFFSET * 6, WHITE - COLOROFFSET * 5,
			WHITE - COLOROFFSET * 4, WHITE - COLOROFFSET * 3,
			WHITE - COLOROFFSET * 2, WHITE - COLOROFFSET * 1, WHITE };

	static public final int[] BUTTONCOLOR = { 0x00FFFFFF, 0x11FFFFFF,
			0x22FFFFFF, 0x33FFFFFF, 0x44FFFFFF, 0x55FFFFFF, 0x66FFFFFF,
			0x77FFFFFF, 0x88FFFFFF, 0x99FFFFFF, 0xAAFFFFFF, 0xBBFFFFFF,
			0xCCFFFFFF, 0xDDFFFFFF, 0xEEFFFFFF, 0xFFFFFFFF, };
	static public final int[] ANIMATIONALPHA = { 0x00, 0x11, 0x22, 0x33, 0x44,
			0x55, 0x66, 0x77, 0x88, 0x99, 0xAA, 0xBB, 0xCC, 0xDD, 0xEE, 0xFF, };
	static public final int SECTOR_COUNT = 18;
	static public final int POINT = 360 / SECTOR_COUNT;
	static public final int[][] RESULT = { { 0, 2, 0 }, { 2, 4, 1 },
			{ 4, 6, 2 }, { 6, 8, 3 }, { 8, 10, 4 }, { 10, 12, 5 },
			{ 12, 14, 6 }, { 14, 16, 7 }, { 16, 18, 8 }, { 18, 20, 9 },
			{ 20, 22, 10 }, { 22, 24, 11 }, { 24, 26, 12 }, { 26, 28, 13 },
			{ 28, 30, 14 }, { 30, 32, 15 }, { 32, 34, 16 }, { 34, 101, 17 } };
	
	static public final int[][] SCORERESULT = { {0, 8, R.drawable.img_boostermain_score_c_reduction},
		{8, 11, R.drawable.img_boostermain_score_b_reduction},
		{11, 17, R.drawable.img_boostermain_score_a},
		{17, 18, R.drawable.img_boostermain_score_a_plus}};
	
	static public int dip2px(Context context, float dpValue) {
		final float scale = context.getResources().getDisplayMetrics().density;
		return (int) (dpValue * scale + 0.5f);
	}
	static public float ANIMATION_OUTSIDE_OFFSET = 30.66f;
	static public float ANIMATION_INSIDE_OFFSET = 72.0f;
	static String STRING_POINT_SOLID = "●";
	static String STRING_POINT_HOLLOW = "○";
	static String STRING_PERSENT_MARK = "%";
	static String STRING_PERSENT_START = "1";
	static int INTEGER_FAKE_PRESENT_DIFFERENCE = 6;
	static int INTEGER_FAKE_PRESENT_DIFFERENCE_EDGE = INTEGER_FAKE_PRESENT_DIFFERENCE*3;

}
