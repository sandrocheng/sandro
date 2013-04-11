package com.tencent.onesecurity.ui.activity.commonComponent;

import java.util.HashSet;
import java.util.Iterator;

import android.os.Handler;
import android.os.Message;
import android.util.Log;

/**
 * 
 * @ClassName: CartonEngine
 * @Description:用于动画定时回调
 * @author: Sandro
 * @date: 2012-10-25 下午02:44:02
 * 
 */
public class CartonEngine {

	/**
	 * 原子周期为25ms
	 */
	public static final int DEFAULT_CIRCLE = 25;

	private CartonHandler mHandler;

	private Engine engine;

	/**
	 * 时间线，用于计算下一周期的时间,单位 ： 周期
	 */
	private long circleLine;

	/**
	 * 标识当前引擎是否正在工作中
	 */
	private boolean isRunning = false;

	private HashSet<CartonElement> cartonElements;

	/**
	 * @param handler
	 */
	public CartonEngine() {
		engine = new Engine();
		mHandler = new CartonHandler();
		cartonElements = new HashSet<CartonElement>();
	}

	private void start() {
		engine.start();
	}

	/**
	 * 注销当前listener
	 * 
	 * @param listener
	 */
	public void requestRemove(CartonCallBackLisener listener) {
		if (listener == null) {
			Log.w("CartonEngine", "[public void remove] : listener is null");
			return;
		}
		synchronized (cartonElements) {
			Iterator<CartonElement> iterator = cartonElements.iterator();
			while (iterator.hasNext()) {
				CartonElement ele = iterator.next();
				if (listener.equals(ele.listener)) {
					ele.isRemove = true;
					break;
				}
			}
		}
	}

	private void plugInListener(CartonCallBackLisener listener) {
		if (listener == null) {
			Log.w("CartonEngine",
					"[public void addListener] : listener is null");
			return;
		}
		synchronized (cartonElements) {
			boolean getSame = false;

			for (CartonElement ele : this.cartonElements) {
				if (listener.equals(ele.listener)) {
					getSame = true;
					ele.isRemove = false;
					break;
				}
			}

			if (!getSame) {
				this.cartonElements.add(new CartonElement(listener));
			}
		}
		if (!isRunning) {
			start();
		}
	}

	public void addListener(CartonCallBackLisener listener) {
		if (listener != null) {
			mHandler.sendAddListenerRequest(listener);
		}
	}

	public void destory() {
		this.mHandler.removeCallbacks(this.engine);
		this.removeAll();
	}

	private void removeAll() {
		synchronized (cartonElements) {
			for (CartonElement ele : this.cartonElements) {
				ele.clear();
			}
			cartonElements.clear();
		}
	}

	private class Engine implements Runnable {

		private void start() {
			long firstCircle = firstCallBackCircle();
			if (firstCircle > 0) {
				long postDaly = firstCircle - circleLine;
				Log.i("CartonEngine.Engine",
						"[private void start()] circleLine : " + circleLine
								+ " ,firstCircle : " + firstCircle);
				mHandler.postDelayed(this, postDaly * DEFAULT_CIRCLE);
				circleLine = firstCircle;
				Log.i("CartonEngine.Engine",
						"[private void start()] circleLine : " + circleLine
								+ ", postDaly : " + postDaly);
				isRunning = true;
			} else {
				isRunning = false;
			}
		}

		@Override
		public void run() {
			// long t = System.currentTimeMillis();
			callBack();
			// Log.i("CartonEngine.Engine", "[public void run()] circleLine : "
			// + circleLine
			// + ",use time :" + (System.currentTimeMillis() - t));
			long nextCircle = firstCallBackCircle();
			long postDaly = nextCircle - circleLine;
			// Log.i("CartonEngine.Engine", "[public void run()] nextCircle : "
			// + nextCircle
			// + ",postDaly : " + postDaly);
			if (nextCircle > 0) {
				mHandler.postDelayed(this, postDaly * DEFAULT_CIRCLE);
				circleLine = nextCircle;
				isRunning = true;
			} else {
				isRunning = false;
			}
		}
	};

	private void callBack() {
		synchronized (cartonElements) {
			Iterator<CartonElement> iterator = cartonElements.iterator();
			while (iterator.hasNext()) {
				CartonElement ele = iterator.next();
				if (ele.listener != null) {
					// Log.i("CartonEngine", "[public void callBack()] ele : " +
					// ele.listener.getCircleMultiple()
					// + " ,ele.selfTimeLine : " + ele.selfTimeLine
					// + " ,this.circleLine : " + this.circleLine);
					if (ele.isRemove) {
						iterator.remove();
						continue;
					}
					if (ele.selfTimeLine == this.circleLine) {
						ele.generateNextTime();
						if( !ele.listener.isPause()){
							ele.listener.onTime();
						}
					}
					if (ele.isRemove) {
						iterator.remove();
					}
				}
				// Log.i("CartonEngine", "[public void callBack()] ele : " +
				// ele.listener.getCircleMultiple()
				// + " ,nextTime : " + ele.selfTimeLine);
			}
		}
	}

	/**
	 * 计算第一次应该回调的周期
	 * 
	 * @return
	 */
	private long firstCallBackCircle() {
		long circle = 0;
		synchronized (cartonElements) {
			for (CartonElement ele : cartonElements) {
				if (circle == 0) {
					circle = ele.selfTimeLine;
				} else {
					if (circle > ele.selfTimeLine) {
						circle = ele.selfTimeLine;
					}
				}
			}
		}
		return circle;
	}

	/**
	 * 
	 * @ClassName: CartonCallBackLisener
	 * @Description:回调接口
	 * @author: Sandro
	 * @date: 2012-10-25 下午04:57:11
	 * 
	 */
	public interface CartonCallBackLisener {
		/**
		 * 时钟周期回调
		 */
		public void onTime();

		/**
		 * 动画的周期倍数 1 ：25ms回调，2：50ms回调....
		 * 
		 * @return
		 */
		public int getCircleMultiple();

		/**
		 * 动画是否暂停
		 * 
		 * @return true : 动画暂停，在下一个周期不会回调 false : 在下一个周期将继续回调
		 */
		public boolean isPause();
	}

	private class CartonElement {
		private CartonCallBackLisener listener;
		private long selfTimeLine;
		private boolean isRemove = false;

		private CartonElement(CartonCallBackLisener listener) {
			this.listener = listener;
			selfTimeLine = circleLine;
			generateNextTime();
		}

		private void clear() {
			this.listener = null;
			selfTimeLine = 0;
		}

		private void generateNextTime() {
			selfTimeLine += listener.getCircleMultiple();
		}
	}

	private class CartonHandler extends Handler {

		private final static int ADD_CARTON_LISTENER = 2;

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case ADD_CARTON_LISTENER:
				if (msg.obj != null) {
					CartonCallBackLisener listener = (CartonCallBackLisener) msg.obj;
					plugInListener(listener);
				}
				break;
			}
		}

		private void sendAddListenerRequest(CartonCallBackLisener listener) {
			Message msg = new Message();
			msg.what = ADD_CARTON_LISTENER;
			msg.obj = listener;
			sendMessage(msg);
		}
	}
}
