package com.tencent.onesecurity.widget;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.service.SecureService;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;

/**
 * 加速桌面插件
 * 
 * @author gordonbi
 * 
 */
public class BoosterWidget extends AppWidgetProvider {

	private Context mContext;
	private AppWidgetManager mAppWidgetManager;

	@Override
	public void onReceive(Context context, Intent intent) {
		super.onReceive(context, intent);
	}

	@Override
	public void onUpdate(Context context, AppWidgetManager appWidgetManager,
			int[] appWidgetIds) {
		mContext = context;
		mAppWidgetManager = appWidgetManager;
		for (int i = 0; i < appWidgetIds.length; i++) {
			Intent btnMoreIntent = new Intent(mContext, SecureService.class);
			btnMoreIntent.setAction(SecureService.BOOSTER_WINDOW_SHOW);
			PendingIntent btnMorePendingIntent = PendingIntent.getService(
					mContext, 0, btnMoreIntent, 0);
			RemoteViews btnMoreRV = new RemoteViews(mContext.getPackageName(),
					R.layout.appwidget_booster);
			btnMoreRV.setOnClickPendingIntent(R.id.widget_optimize_img_menu,
					btnMorePendingIntent);
			mAppWidgetManager.updateAppWidget(appWidgetIds[i], btnMoreRV);
		}
		super.onUpdate(context, appWidgetManager, appWidgetIds);
	}

	@Override
	public void onDeleted(Context context, int[] appWidgetIds) {
		super.onDeleted(context, appWidgetIds);
	}

	@Override
	public void onDisabled(Context context) {
		super.onDisabled(context);
	}

	@Override
	public void onEnabled(Context context) {
		super.onEnabled(context);
	}

}
