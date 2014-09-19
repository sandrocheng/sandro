package android.view;

import java.util.ArrayList;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Property;
import android.util.SparseArray;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityEventSource;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.animation.Animation;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

@SuppressLint("NewApi")
/**
 * 
 * 
 *
 */
public class View implements Drawable.Callback, KeyEvent.Callback,
		AccessibilityEventSource {
	protected static final String VIEW_LOG_TAG = "View";
	public static final int NO_ID = -1;
	public static final int VISIBLE = 0;
	public static final int INVISIBLE = 4;
	public static final int GONE = 8;
	public static final int DRAWING_CACHE_QUALITY_LOW = 524288;
	public static final int DRAWING_CACHE_QUALITY_HIGH = 1048576;
	public static final int DRAWING_CACHE_QUALITY_AUTO = 0;
	public static final int SCROLLBARS_INSIDE_OVERLAY = 0;
	public static final int SCROLLBARS_INSIDE_INSET = 16777216;
	public static final int SCROLLBARS_OUTSIDE_OVERLAY = 33554432;
	public static final int SCROLLBARS_OUTSIDE_INSET = 50331648;
	public static final int KEEP_SCREEN_ON = 67108864;
	public static final int SOUND_EFFECTS_ENABLED = 134217728;
	public static final int HAPTIC_FEEDBACK_ENABLED = 268435456;
	public static final int FOCUSABLES_ALL = 0;
	public static final int FOCUSABLES_TOUCH_MODE = 1;
	public static final int FOCUS_BACKWARD = 1;
	public static final int FOCUS_FORWARD = 2;
	public static final int FOCUS_LEFT = 17;
	public static final int FOCUS_UP = 33;
	public static final int FOCUS_RIGHT = 66;
	public static final int FOCUS_DOWN = 130;
	public static final int MEASURED_SIZE_MASK = 16777215;
	public static final int MEASURED_STATE_MASK = -16777216;
	public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
	public static final int MEASURED_STATE_TOO_SMALL = 16777216;
	protected static final int[] EMPTY_STATE_SET = null;
	protected static final int[] ENABLED_STATE_SET = null;
	protected static final int[] FOCUSED_STATE_SET = null;
	protected static final int[] SELECTED_STATE_SET = null;
	protected static final int[] WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] ENABLED_FOCUSED_STATE_SET = null;
	protected static final int[] ENABLED_SELECTED_STATE_SET = null;
	protected static final int[] ENABLED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] FOCUSED_SELECTED_STATE_SET = null;
	protected static final int[] FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] ENABLED_FOCUSED_SELECTED_STATE_SET = null;
	protected static final int[] ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_SELECTED_STATE_SET = null;
	protected static final int[] PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_FOCUSED_SELECTED_STATE_SET = null;
	protected static final int[] PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_SELECTED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET = null;
	protected static final int[] PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET = null;
	public static final int OVER_SCROLL_ALWAYS = 0;
	public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
	public static final int OVER_SCROLL_NEVER = 2;
	public static final int SYSTEM_UI_FLAG_VISIBLE = 0;
	public static final int SYSTEM_UI_FLAG_LOW_PROFILE = 1;
	public static final int SYSTEM_UI_FLAG_HIDE_NAVIGATION = 2;

	@Deprecated
	public static final int STATUS_BAR_HIDDEN = 1;

	@Deprecated
	public static final int STATUS_BAR_VISIBLE = 0;
	public static final int FIND_VIEWS_WITH_TEXT = 1;
	public static final int FIND_VIEWS_WITH_CONTENT_DESCRIPTION = 2;
	public static final int SCROLLBAR_POSITION_DEFAULT = 0;
	public static final int SCROLLBAR_POSITION_LEFT = 1;
	public static final int SCROLLBAR_POSITION_RIGHT = 2;
	public static final int LAYER_TYPE_NONE = 0;
	public static final int LAYER_TYPE_SOFTWARE = 1;
	public static final int LAYER_TYPE_HARDWARE = 2;
	public static Property<View, Float> ALPHA;
	public static Property<View, Float> TRANSLATION_X;
	public static Property<View, Float> TRANSLATION_Y;
	public static Property<View, Float> X;
	public static Property<View, Float> Y;
	public static Property<View, Float> ROTATION;
	public static Property<View, Float> ROTATION_X;
	public static Property<View, Float> ROTATION_Y;
	public static Property<View, Float> SCALE_X;
	public static Property<View, Float> SCALE_Y;
	
	/**
     * The distance in pixels from the left edge of this view's parent
     * to the left edge of this view.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "layout")
    protected int mLeft;
    /**
     * The distance in pixels from the left edge of this view's parent
     * to the right edge of this view.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "layout")
    protected int mRight;
    /**
     * The distance in pixels from the top edge of this view's parent
     * to the top edge of this view.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "layout")
    protected int mTop;
    /**
     * The distance in pixels from the top edge of this view's parent
     * to the bottom edge of this view.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "layout")
    protected int mBottom;

    /**
     * The offset, in pixels, by which the content of this view is scrolled
     * horizontally.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "scrolling")
    protected int mScrollX;
    /**
     * The offset, in pixels, by which the content of this view is scrolled
     * vertically.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "scrolling")
    protected int mScrollY;

    /**
     * The left padding in pixels, that is the distance in pixels between the
     * left edge of this view and the left edge of its content.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingLeft;
    /**
     * The right padding in pixels, that is the distance in pixels between the
     * right edge of this view and the right edge of its content.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingRight;
    /**
     * The top padding in pixels, that is the distance in pixels between the
     * top edge of this view and the top edge of its content.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingTop;
    /**
     * The bottom padding in pixels, that is the distance in pixels between the
     * bottom edge of this view and the bottom edge of its content.
     * {@hide}
     */
    @ViewDebug.ExportedProperty(category = "padding")
    protected int mPaddingBottom;
    
    /**
     * The parent this view is attached to.
     * {@hide}
     *
     * @see #getParent()
     */
    protected ViewParent mParent;
    

	public View(Context context) {
		throw new RuntimeException("Stub!");
	}

	public View(Context context, AttributeSet attrs) {
		throw new RuntimeException("Stub!");
	}

	public View(Context context, AttributeSet attrs, int defStyle) {
		throw new RuntimeException("Stub!");
	}

	protected void initializeFadingEdge(TypedArray a) {
		throw new RuntimeException("Stub!");
	}

	public int getVerticalFadingEdgeLength() {
		throw new RuntimeException("Stub!");
	}

	public void setFadingEdgeLength(int length) {
		throw new RuntimeException("Stub!");
	}

	public int getHorizontalFadingEdgeLength() {
		throw new RuntimeException("Stub!");
	}

	public int getVerticalScrollbarWidth() {
		throw new RuntimeException("Stub!");
	}

	protected int getHorizontalScrollbarHeight() {
		throw new RuntimeException("Stub!");
	}

	protected void initializeScrollbars(TypedArray a) {
		throw new RuntimeException("Stub!");
	}

	public void setVerticalScrollbarPosition(int position) {
		throw new RuntimeException("Stub!");
	}

	public int getVerticalScrollbarPosition() {
		throw new RuntimeException("Stub!");
	}

	public void setOnFocusChangeListener(OnFocusChangeListener l) {
		throw new RuntimeException("Stub!");
	}

	public void addOnLayoutChangeListener(OnLayoutChangeListener listener) {
		throw new RuntimeException("Stub!");
	}

	public void removeOnLayoutChangeListener(OnLayoutChangeListener listener) {
		throw new RuntimeException("Stub!");
	}

	public void addOnAttachStateChangeListener(
			OnAttachStateChangeListener listener) {
		throw new RuntimeException("Stub!");
	}

	public void removeOnAttachStateChangeListener(
			OnAttachStateChangeListener listener) {
		throw new RuntimeException("Stub!");
	}

	public OnFocusChangeListener getOnFocusChangeListener() {
		throw new RuntimeException("Stub!");
	}

	public void setOnClickListener(OnClickListener l) {
		throw new RuntimeException("Stub!");
	}

	public boolean hasOnClickListeners() {
		throw new RuntimeException("Stub!");
	}

	public void setOnLongClickListener(OnLongClickListener l) {
		throw new RuntimeException("Stub!");
	}

	public void setOnCreateContextMenuListener(OnCreateContextMenuListener l) {
		throw new RuntimeException("Stub!");
	}

	public boolean performClick() {
		throw new RuntimeException("Stub!");
	}

	public boolean callOnClick() {
		throw new RuntimeException("Stub!");
	}

	public boolean performLongClick() {
		throw new RuntimeException("Stub!");
	}

	public boolean showContextMenu() {
		throw new RuntimeException("Stub!");
	}

	public ActionMode startActionMode(ActionMode.Callback callback) {
		throw new RuntimeException("Stub!");
	}

	public void setOnKeyListener(OnKeyListener l) {
		throw new RuntimeException("Stub!");
	}

	public void setOnTouchListener(OnTouchListener l) {
		throw new RuntimeException("Stub!");
	}

	public void setOnGenericMotionListener(OnGenericMotionListener l) {
		throw new RuntimeException("Stub!");
	}

	public void setOnHoverListener(OnHoverListener l) {
		throw new RuntimeException("Stub!");
	}

	public void setOnDragListener(OnDragListener l) {
		throw new RuntimeException("Stub!");
	}

	public boolean requestRectangleOnScreen(Rect rectangle) {
		throw new RuntimeException("Stub!");
	}

	public boolean requestRectangleOnScreen(Rect rectangle, boolean immediate) {
		throw new RuntimeException("Stub!");
	}

	public void clearFocus() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "focus")
	public boolean hasFocus() {
		throw new RuntimeException("Stub!");
	}

	public boolean hasFocusable() {
		throw new RuntimeException("Stub!");
	}

	protected void onFocusChanged(boolean gainFocus, int direction,
			Rect previouslyFocusedRect) {
		throw new RuntimeException("Stub!");
	}

	public void sendAccessibilityEvent(int eventType) {
		throw new RuntimeException("Stub!");
	}

	public void sendAccessibilityEventUnchecked(AccessibilityEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent event) {
		throw new RuntimeException("Stub!");
	}

	public void onPopulateAccessibilityEvent(AccessibilityEvent event) {
		throw new RuntimeException("Stub!");
	}

	public void onInitializeAccessibilityEvent(AccessibilityEvent event) {
		throw new RuntimeException("Stub!");
	}

	public AccessibilityNodeInfo createAccessibilityNodeInfo() {
		throw new RuntimeException("Stub!");
	}

	public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
		throw new RuntimeException("Stub!");
	}

	public void setAccessibilityDelegate(AccessibilityDelegate delegate) {
		throw new RuntimeException("Stub!");
	}

	public CharSequence getContentDescription() {
		throw new RuntimeException("Stub!");
	}

	public void setContentDescription(CharSequence contentDescription) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "focus")
	public boolean isFocused() {
		throw new RuntimeException("Stub!");
	}

	public View findFocus() {
		throw new RuntimeException("Stub!");
	}

	public void setScrollContainer(boolean isScrollContainer) {
		throw new RuntimeException("Stub!");
	}

	public int getDrawingCacheQuality() {
		throw new RuntimeException("Stub!");
	}

	public void setDrawingCacheQuality(int quality) {
		throw new RuntimeException("Stub!");
	}

	public boolean getKeepScreenOn() {
		throw new RuntimeException("Stub!");
	}

	public void setKeepScreenOn(boolean keepScreenOn) {
		throw new RuntimeException("Stub!");
	}

	public int getNextFocusLeftId() {
		throw new RuntimeException("Stub!");
	}

	public void setNextFocusLeftId(int nextFocusLeftId) {
		throw new RuntimeException("Stub!");
	}

	public int getNextFocusRightId() {
		throw new RuntimeException("Stub!");
	}

	public void setNextFocusRightId(int nextFocusRightId) {
		throw new RuntimeException("Stub!");
	}

	public int getNextFocusUpId() {
		throw new RuntimeException("Stub!");
	}

	public void setNextFocusUpId(int nextFocusUpId) {
		throw new RuntimeException("Stub!");
	}

	public int getNextFocusDownId() {
		throw new RuntimeException("Stub!");
	}

	public void setNextFocusDownId(int nextFocusDownId) {
		throw new RuntimeException("Stub!");
	}

	public int getNextFocusForwardId() {
		throw new RuntimeException("Stub!");
	}

	public void setNextFocusForwardId(int nextFocusForwardId) {
		throw new RuntimeException("Stub!");
	}

	public boolean isShown() {
		throw new RuntimeException("Stub!");
	}

	protected boolean fitSystemWindows(Rect insets) {
		throw new RuntimeException("Stub!");
	}

	public void setFitsSystemWindows(boolean fitSystemWindows) {
		throw new RuntimeException("Stub!");
	}

	public boolean fitsSystemWindows() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(mapping = {
			@ViewDebug.IntToString(from = 0, to = "VISIBLE"),
			@ViewDebug.IntToString(from = 4, to = "INVISIBLE"),
			@ViewDebug.IntToString(from = 8, to = "GONE") })
	public int getVisibility() {
		throw new RuntimeException("Stub!");
	}

	public void setVisibility(int visibility) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setEnabled(boolean enabled) {
		throw new RuntimeException("Stub!");
	}

	public void setFocusable(boolean focusable) {
		throw new RuntimeException("Stub!");
	}

	public void setFocusableInTouchMode(boolean focusableInTouchMode) {
		throw new RuntimeException("Stub!");
	}

	public void setSoundEffectsEnabled(boolean soundEffectsEnabled) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isSoundEffectsEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setHapticFeedbackEnabled(boolean hapticFeedbackEnabled) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isHapticFeedbackEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setWillNotDraw(boolean willNotDraw) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "drawing")
	public boolean willNotDraw() {
		throw new RuntimeException("Stub!");
	}

	public void setWillNotCacheDrawing(boolean willNotCacheDrawing) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "drawing")
	public boolean willNotCacheDrawing() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isClickable() {
		throw new RuntimeException("Stub!");
	}

	public void setClickable(boolean clickable) {
		throw new RuntimeException("Stub!");
	}

	public boolean isLongClickable() {
		throw new RuntimeException("Stub!");
	}

	public void setLongClickable(boolean longClickable) {
		throw new RuntimeException("Stub!");
	}

	public void setPressed(boolean pressed) {
		throw new RuntimeException("Stub!");
	}

	protected void dispatchSetPressed(boolean pressed) {
		throw new RuntimeException("Stub!");
	}

	public boolean isPressed() {
		throw new RuntimeException("Stub!");
	}

	public boolean isSaveEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setSaveEnabled(boolean enabled) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean getFilterTouchesWhenObscured() {
		throw new RuntimeException("Stub!");
	}

	public void setFilterTouchesWhenObscured(boolean enabled) {
		throw new RuntimeException("Stub!");
	}

	public boolean isSaveFromParentEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setSaveFromParentEnabled(boolean enabled) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "focus")
	public final boolean isFocusable() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public final boolean isFocusableInTouchMode() {
		throw new RuntimeException("Stub!");
	}

	public View focusSearch(int direction) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchUnhandledMove(View focused, int direction) {
		throw new RuntimeException("Stub!");
	}

	public ArrayList<View> getFocusables(int direction) {
		throw new RuntimeException("Stub!");
	}

	public void addFocusables(ArrayList<View> views, int direction) {
		throw new RuntimeException("Stub!");
	}

	public void addFocusables(ArrayList<View> views, int direction,
			int focusableMode) {
		throw new RuntimeException("Stub!");
	}

	public void findViewsWithText(ArrayList<View> outViews,
			CharSequence searched, int flags) {
		throw new RuntimeException("Stub!");
	}

	public ArrayList<View> getTouchables() {
		throw new RuntimeException("Stub!");
	}

	public void addTouchables(ArrayList<View> views) {
		throw new RuntimeException("Stub!");
	}

	public final boolean requestFocus() {
		throw new RuntimeException("Stub!");
	}

	public final boolean requestFocus(int direction) {
		throw new RuntimeException("Stub!");
	}

	public boolean requestFocus(int direction, Rect previouslyFocusedRect) {
		throw new RuntimeException("Stub!");
	}

	public final boolean requestFocusFromTouch() {
		throw new RuntimeException("Stub!");
	}

	public void onStartTemporaryDetach() {
		throw new RuntimeException("Stub!");
	}

	public void onFinishTemporaryDetach() {
		throw new RuntimeException("Stub!");
	}

	public KeyEvent.DispatcherState getKeyDispatcherState() {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchKeyEventPreIme(KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchKeyEvent(KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchKeyShortcutEvent(KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchTouchEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onFilterTouchEventForSecurity(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchTrackballEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchGenericMotionEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	protected boolean dispatchHoverEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	protected boolean dispatchGenericPointerEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	protected boolean dispatchGenericFocusedEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	public void dispatchWindowFocusChanged(boolean hasFocus) {
		throw new RuntimeException("Stub!");
	}

	public void onWindowFocusChanged(boolean hasWindowFocus) {
		throw new RuntimeException("Stub!");
	}

	public boolean hasWindowFocus() {
		throw new RuntimeException("Stub!");
	}

	protected void dispatchVisibilityChanged(View changedView, int visibility) {
		throw new RuntimeException("Stub!");
	}

	protected void onVisibilityChanged(View changedView, int visibility) {
		throw new RuntimeException("Stub!");
	}

	public void dispatchDisplayHint(int hint) {
		throw new RuntimeException("Stub!");
	}

	protected void onDisplayHint(int hint) {
		throw new RuntimeException("Stub!");
	}

	public void dispatchWindowVisibilityChanged(int visibility) {
		throw new RuntimeException("Stub!");
	}

	protected void onWindowVisibilityChanged(int visibility) {
		throw new RuntimeException("Stub!");
	}

	public int getWindowVisibility() {
		throw new RuntimeException("Stub!");
	}

	public void getWindowVisibleDisplayFrame(Rect outRect) {
		throw new RuntimeException("Stub!");
	}

	public void dispatchConfigurationChanged(Configuration newConfig) {
		throw new RuntimeException("Stub!");
	}

	protected void onConfigurationChanged(Configuration newConfig) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isInTouchMode() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.CapturedViewProperty
	public final Context getContext() {
		throw new RuntimeException("Stub!");
	}

	public boolean onKeyPreIme(int keyCode, KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onKeyDown(int keyCode, KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onKeyLongPress(int keyCode, KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onKeyUp(int keyCode, KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onKeyMultiple(int keyCode, int repeatCount, KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onKeyShortcut(int keyCode, KeyEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onCheckIsTextEditor() {
		throw new RuntimeException("Stub!");
	}

	public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
		throw new RuntimeException("Stub!");
	}

	public boolean checkInputConnectionProxy(View view) {
		throw new RuntimeException("Stub!");
	}

	public void createContextMenu(ContextMenu menu) {
		throw new RuntimeException("Stub!");
	}

	protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
		throw new RuntimeException("Stub!");
	}

	protected void onCreateContextMenu(ContextMenu menu) {
		throw new RuntimeException("Stub!");
	}

	public boolean onTrackballEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onGenericMotionEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean onHoverEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isHovered() {
		throw new RuntimeException("Stub!");
	}

	public void setHovered(boolean hovered) {
		throw new RuntimeException("Stub!");
	}

	public void onHoverChanged(boolean hovered) {
		throw new RuntimeException("Stub!");
	}

	public boolean onTouchEvent(MotionEvent event) {
		throw new RuntimeException("Stub!");
	}

	public void cancelLongPress() {
		throw new RuntimeException("Stub!");
	}

	public void setTouchDelegate(TouchDelegate delegate) {
		throw new RuntimeException("Stub!");
	}

	public TouchDelegate getTouchDelegate() {
		throw new RuntimeException("Stub!");
	}

	public void bringToFront() {
		throw new RuntimeException("Stub!");
	}

	protected void onScrollChanged(int l, int t, int oldl, int oldt) {
		throw new RuntimeException("Stub!");
	}

	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		throw new RuntimeException("Stub!");
	}

	protected void dispatchDraw(Canvas canvas) {
		throw new RuntimeException("Stub!");
	}

	public final ViewParent getParent() {
		throw new RuntimeException("Stub!");
	}

	public void setScrollX(int value) {
		throw new RuntimeException("Stub!");
	}

	public void setScrollY(int value) {
		throw new RuntimeException("Stub!");
	}

	public final int getScrollX() {
		throw new RuntimeException("Stub!");
	}

	public final int getScrollY() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "layout")
	public final int getWidth() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "layout")
	public final int getHeight() {
		throw new RuntimeException("Stub!");
	}

	public void getDrawingRect(Rect outRect) {
		throw new RuntimeException("Stub!");
	}

	public final int getMeasuredWidth() {
		throw new RuntimeException("Stub!");
	}

	public final int getMeasuredWidthAndState() {
		throw new RuntimeException("Stub!");
	}

	public final int getMeasuredHeight() {
		throw new RuntimeException("Stub!");
	}

	public final int getMeasuredHeightAndState() {
		throw new RuntimeException("Stub!");
	}

	public final int getMeasuredState() {
		throw new RuntimeException("Stub!");
	}

	public Matrix getMatrix() {
		throw new RuntimeException("Stub!");
	}

	public void setCameraDistance(float distance) {
		throw new RuntimeException("Stub!");
	}

	public float getRotation() {
		throw new RuntimeException("Stub!");
	}

	public void setRotation(float rotation) {
		throw new RuntimeException("Stub!");
	}

	public float getRotationY() {
		throw new RuntimeException("Stub!");
	}

	public void setRotationY(float rotationY) {
		throw new RuntimeException("Stub!");
	}

	public float getRotationX() {
		throw new RuntimeException("Stub!");
	}

	public void setRotationX(float rotationX) {
		throw new RuntimeException("Stub!");
	}

	public float getScaleX() {
		throw new RuntimeException("Stub!");
	}

	public void setScaleX(float scaleX) {
		throw new RuntimeException("Stub!");
	}

	public float getScaleY() {
		throw new RuntimeException("Stub!");
	}

	public void setScaleY(float scaleY) {
		throw new RuntimeException("Stub!");
	}

	public float getPivotX() {
		throw new RuntimeException("Stub!");
	}

	public void setPivotX(float pivotX) {
		throw new RuntimeException("Stub!");
	}

	public float getPivotY() {
		throw new RuntimeException("Stub!");
	}

	public void setPivotY(float pivotY) {
		throw new RuntimeException("Stub!");
	}

	public float getAlpha() {
		throw new RuntimeException("Stub!");
	}

	public void setAlpha(float alpha) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.CapturedViewProperty
	public final int getTop() {
		throw new RuntimeException("Stub!");
	}

	public final void setTop(int top) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.CapturedViewProperty
	public final int getBottom() {
		throw new RuntimeException("Stub!");
	}

	public boolean isDirty() {
		throw new RuntimeException("Stub!");
	}

	public final void setBottom(int bottom) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.CapturedViewProperty
	public final int getLeft() {
		throw new RuntimeException("Stub!");
	}

	public final void setLeft(int left) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.CapturedViewProperty
	public final int getRight() {
		throw new RuntimeException("Stub!");
	}

	public final void setRight(int right) {
		throw new RuntimeException("Stub!");
	}

	public float getX() {
		throw new RuntimeException("Stub!");
	}

	public void setX(float x) {
		throw new RuntimeException("Stub!");
	}

	public float getY() {
		throw new RuntimeException("Stub!");
	}

	public void setY(float y) {
		throw new RuntimeException("Stub!");
	}

	public float getTranslationX() {
		throw new RuntimeException("Stub!");
	}

	public void setTranslationX(float translationX) {
		throw new RuntimeException("Stub!");
	}

	public float getTranslationY() {
		throw new RuntimeException("Stub!");
	}

	public void setTranslationY(float translationY) {
		throw new RuntimeException("Stub!");
	}

	public void getHitRect(Rect outRect) {
		throw new RuntimeException("Stub!");
	}

	public void getFocusedRect(Rect r) {
		throw new RuntimeException("Stub!");
	}

	public boolean getGlobalVisibleRect(Rect r, Point globalOffset) {
		throw new RuntimeException("Stub!");
	}

	public final boolean getGlobalVisibleRect(Rect r) {
		throw new RuntimeException("Stub!");
	}

	public final boolean getLocalVisibleRect(Rect r) {
		throw new RuntimeException("Stub!");
	}

	public void offsetTopAndBottom(int offset) {
		throw new RuntimeException("Stub!");
	}

	public void offsetLeftAndRight(int offset) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(deepExport = true, prefix = "layout_")
	public ViewGroup.LayoutParams getLayoutParams() {
		throw new RuntimeException("Stub!");
	}

	public void setLayoutParams(ViewGroup.LayoutParams params) {
		throw new RuntimeException("Stub!");
	}

	public void scrollTo(int x, int y) {
		throw new RuntimeException("Stub!");
	}

	public void scrollBy(int x, int y) {
		throw new RuntimeException("Stub!");
	}

	protected boolean awakenScrollBars() {
		throw new RuntimeException("Stub!");
	}

	protected boolean awakenScrollBars(int startDelay) {
		throw new RuntimeException("Stub!");
	}

	protected boolean awakenScrollBars(int startDelay, boolean invalidate) {
		throw new RuntimeException("Stub!");
	}

	public void invalidate(Rect dirty) {
		throw new RuntimeException("Stub!");
	}

	public void invalidate(int l, int t, int r, int b) {
		throw new RuntimeException("Stub!");
	}

	public void invalidate() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "drawing")
	public boolean isOpaque() {
		throw new RuntimeException("Stub!");
	}

	public Handler getHandler() {
		throw new RuntimeException("Stub!");
	}

	public boolean post(Runnable action) {
		throw new RuntimeException("Stub!");
	}

	public boolean postDelayed(Runnable action, long delayMillis) {
		throw new RuntimeException("Stub!");
	}

	public boolean removeCallbacks(Runnable action) {
		throw new RuntimeException("Stub!");
	}

	public void postInvalidate() {
		throw new RuntimeException("Stub!");
	}

	public void postInvalidate(int left, int top, int right, int bottom) {
		throw new RuntimeException("Stub!");
	}

	public void postInvalidateDelayed(long delayMilliseconds) {
		throw new RuntimeException("Stub!");
	}

	public void postInvalidateDelayed(long delayMilliseconds, int left,
			int top, int right, int bottom) {
		throw new RuntimeException("Stub!");
	}

	public void computeScroll() {
		throw new RuntimeException("Stub!");
	}

	public boolean isHorizontalFadingEdgeEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setHorizontalFadingEdgeEnabled(
			boolean horizontalFadingEdgeEnabled) {
		throw new RuntimeException("Stub!");
	}

	public boolean isVerticalFadingEdgeEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setVerticalFadingEdgeEnabled(boolean verticalFadingEdgeEnabled) {
		throw new RuntimeException("Stub!");
	}

	protected float getTopFadingEdgeStrength() {
		throw new RuntimeException("Stub!");
	}

	protected float getBottomFadingEdgeStrength() {
		throw new RuntimeException("Stub!");
	}

	protected float getLeftFadingEdgeStrength() {
		throw new RuntimeException("Stub!");
	}

	protected float getRightFadingEdgeStrength() {
		throw new RuntimeException("Stub!");
	}

	public boolean isHorizontalScrollBarEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setHorizontalScrollBarEnabled(boolean horizontalScrollBarEnabled) {
		throw new RuntimeException("Stub!");
	}

	public boolean isVerticalScrollBarEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setVerticalScrollBarEnabled(boolean verticalScrollBarEnabled) {
		throw new RuntimeException("Stub!");
	}

	public void setScrollbarFadingEnabled(boolean fadeScrollbars) {
		throw new RuntimeException("Stub!");
	}

	public boolean isScrollbarFadingEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setScrollBarStyle(int style) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(mapping = {
			@ViewDebug.IntToString(from = 0, to = "INSIDE_OVERLAY"),
			@ViewDebug.IntToString(from = 16777216, to = "INSIDE_INSET"),
			@ViewDebug.IntToString(from = 33554432, to = "OUTSIDE_OVERLAY"),
			@ViewDebug.IntToString(from = 50331648, to = "OUTSIDE_INSET") })
	public int getScrollBarStyle() {
		throw new RuntimeException("Stub!");
	}

	protected int computeHorizontalScrollRange() {
		throw new RuntimeException("Stub!");
	}

	protected int computeHorizontalScrollOffset() {
		throw new RuntimeException("Stub!");
	}

	protected int computeHorizontalScrollExtent() {
		throw new RuntimeException("Stub!");
	}

	protected int computeVerticalScrollRange() {
		throw new RuntimeException("Stub!");
	}

	protected int computeVerticalScrollOffset() {
		throw new RuntimeException("Stub!");
	}

	protected int computeVerticalScrollExtent() {
		throw new RuntimeException("Stub!");
	}

	public boolean canScrollHorizontally(int direction) {
		throw new RuntimeException("Stub!");
	}

	public boolean canScrollVertically(int direction) {
		throw new RuntimeException("Stub!");
	}

	protected final void onDrawScrollBars(Canvas canvas) {
		throw new RuntimeException("Stub!");
	}

	protected void onDraw(Canvas canvas) {
		throw new RuntimeException("Stub!");
	}

	protected void onAttachedToWindow() {
		throw new RuntimeException("Stub!");
	}

	protected void onDetachedFromWindow() {
		throw new RuntimeException("Stub!");
	}

	protected int getWindowAttachCount() {
		throw new RuntimeException("Stub!");
	}

	public IBinder getWindowToken() {
		throw new RuntimeException("Stub!");
	}

	public IBinder getApplicationWindowToken() {
		throw new RuntimeException("Stub!");
	}

	public void saveHierarchyState(SparseArray<Parcelable> container) {
		throw new RuntimeException("Stub!");
	}

	protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) {
		throw new RuntimeException("Stub!");
	}

	protected Parcelable onSaveInstanceState() {
		throw new RuntimeException("Stub!");
	}

	public void restoreHierarchyState(SparseArray<Parcelable> container) {
		throw new RuntimeException("Stub!");
	}

	protected void dispatchRestoreInstanceState(
			SparseArray<Parcelable> container) {
		throw new RuntimeException("Stub!");
	}

	protected void onRestoreInstanceState(Parcelable state) {
		throw new RuntimeException("Stub!");
	}

	public long getDrawingTime() {
		throw new RuntimeException("Stub!");
	}

	public void setDuplicateParentStateEnabled(boolean enabled) {
		throw new RuntimeException("Stub!");
	}

	public boolean isDuplicateParentStateEnabled() {
		throw new RuntimeException("Stub!");
	}

	public void setLayerType(int layerType, Paint paint) {
		throw new RuntimeException("Stub!");
	}

	public int getLayerType() {
		throw new RuntimeException("Stub!");
	}

	public void buildLayer() {
		throw new RuntimeException("Stub!");
	}

	public void setDrawingCacheEnabled(boolean enabled) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "drawing")
	public boolean isDrawingCacheEnabled() {
		throw new RuntimeException("Stub!");
	}

	public Bitmap getDrawingCache() {
		throw new RuntimeException("Stub!");
	}

	public Bitmap getDrawingCache(boolean autoScale) {
		throw new RuntimeException("Stub!");
	}

	public void destroyDrawingCache() {
		throw new RuntimeException("Stub!");
	}

	public void setDrawingCacheBackgroundColor(int color) {
		throw new RuntimeException("Stub!");
	}

	public int getDrawingCacheBackgroundColor() {
		throw new RuntimeException("Stub!");
	}

	public void buildDrawingCache() {
		throw new RuntimeException("Stub!");
	}

	public void buildDrawingCache(boolean autoScale) {
		throw new RuntimeException("Stub!");
	}

	public boolean isInEditMode() {
		throw new RuntimeException("Stub!");
	}

	protected boolean isPaddingOffsetRequired() {
		throw new RuntimeException("Stub!");
	}

	protected int getLeftPaddingOffset() {
		throw new RuntimeException("Stub!");
	}

	protected int getRightPaddingOffset() {
		throw new RuntimeException("Stub!");
	}

	protected int getTopPaddingOffset() {
		throw new RuntimeException("Stub!");
	}

	protected int getBottomPaddingOffset() {
		throw new RuntimeException("Stub!");
	}

	public boolean isHardwareAccelerated() {
		throw new RuntimeException("Stub!");
	}

	public void draw(Canvas canvas) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "drawing")
	public int getSolidColor() {
		throw new RuntimeException("Stub!");
	}

	public boolean isLayoutRequested() {
		throw new RuntimeException("Stub!");
	}

	public void layout(int l, int t, int r, int b) {
		throw new RuntimeException("Stub!");
	}

	protected void onLayout(boolean changed, int left, int top, int right,
			int bottom) {
		throw new RuntimeException("Stub!");
	}

	protected void onFinishInflate() {
		throw new RuntimeException("Stub!");
	}

	public Resources getResources() {
		throw new RuntimeException("Stub!");
	}

	public void invalidateDrawable(Drawable drawable) {
		throw new RuntimeException("Stub!");
	}

	public void scheduleDrawable(Drawable who, Runnable what, long when) {
		throw new RuntimeException("Stub!");
	}

	public void unscheduleDrawable(Drawable who, Runnable what) {
		throw new RuntimeException("Stub!");
	}

	public void unscheduleDrawable(Drawable who) {
		throw new RuntimeException("Stub!");
	}

	protected boolean verifyDrawable(Drawable who) {
		throw new RuntimeException("Stub!");
	}

	protected void drawableStateChanged() {
		throw new RuntimeException("Stub!");
	}

	public void refreshDrawableState() {
		throw new RuntimeException("Stub!");
	}

	public final int[] getDrawableState() {
		throw new RuntimeException("Stub!");
	}

	protected int[] onCreateDrawableState(int extraSpace) {
		throw new RuntimeException("Stub!");
	}

	protected static int[] mergeDrawableStates(int[] baseState,
			int[] additionalState) {
		throw new RuntimeException("Stub!");
	}

	public void jumpDrawablesToCurrentState() {
		throw new RuntimeException("Stub!");
	}

	public void setBackgroundColor(int color) {
		throw new RuntimeException("Stub!");
	}

	public void setBackgroundResource(int resid) {
		throw new RuntimeException("Stub!");
	}

	public void setBackgroundDrawable(Drawable d) {
		throw new RuntimeException("Stub!");
	}

	public Drawable getBackground() {
		throw new RuntimeException("Stub!");
	}

	public void setPadding(int left, int top, int right, int bottom) {
		throw new RuntimeException("Stub!");
	}

	public int getPaddingTop() {
		throw new RuntimeException("Stub!");
	}

	public int getPaddingBottom() {
		throw new RuntimeException("Stub!");
	}

	public int getPaddingLeft() {
		throw new RuntimeException("Stub!");
	}

	public int getPaddingRight() {
		throw new RuntimeException("Stub!");
	}

	public void setSelected(boolean selected) {
		throw new RuntimeException("Stub!");
	}

	protected void dispatchSetSelected(boolean selected) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isSelected() {
		throw new RuntimeException("Stub!");
	}

	public void setActivated(boolean activated) {
		throw new RuntimeException("Stub!");
	}

	protected void dispatchSetActivated(boolean activated) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public boolean isActivated() {
		throw new RuntimeException("Stub!");
	}

	public ViewTreeObserver getViewTreeObserver() {
		throw new RuntimeException("Stub!");
	}

	public View getRootView() {
		throw new RuntimeException("Stub!");
	}

	public void getLocationOnScreen(int[] location) {
		throw new RuntimeException("Stub!");
	}

	public void getLocationInWindow(int[] location) {
		throw new RuntimeException("Stub!");
	}

	public final View findViewById(int id) {
		throw new RuntimeException("Stub!");
	}

	public final View findViewWithTag(Object tag) {
		throw new RuntimeException("Stub!");
	}

	public void setId(int id) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.CapturedViewProperty
	public int getId() {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty
	public Object getTag() {
		throw new RuntimeException("Stub!");
	}

	public void setTag(Object tag) {
		throw new RuntimeException("Stub!");
	}

	public Object getTag(int key) {
		throw new RuntimeException("Stub!");
	}

	public void setTag(int key, Object tag) {
		throw new RuntimeException("Stub!");
	}

	@ViewDebug.ExportedProperty(category = "layout")
	public int getBaseline() {
		throw new RuntimeException("Stub!");
	}

	public void requestLayout() {
		throw new RuntimeException("Stub!");
	}

	public void forceLayout() {
		throw new RuntimeException("Stub!");
	}

	public final void measure(int widthMeasureSpec, int heightMeasureSpec) {
		throw new RuntimeException("Stub!");
	}

	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		throw new RuntimeException("Stub!");
	}

	protected final void setMeasuredDimension(int measuredWidth,
			int measuredHeight) {
		throw new RuntimeException("Stub!");
	}

	public static int combineMeasuredStates(int curState, int newState) {
		throw new RuntimeException("Stub!");
	}

	public static int resolveSize(int size, int measureSpec) {
		throw new RuntimeException("Stub!");
	}

	public static int resolveSizeAndState(int size, int measureSpec,
			int childMeasuredState) {
		throw new RuntimeException("Stub!");
	}

	public static int getDefaultSize(int size, int measureSpec) {
		throw new RuntimeException("Stub!");
	}

	protected int getSuggestedMinimumHeight() {
		throw new RuntimeException("Stub!");
	}

	protected int getSuggestedMinimumWidth() {
		throw new RuntimeException("Stub!");
	}

	public void setMinimumHeight(int minHeight) {
		throw new RuntimeException("Stub!");
	}

	public void setMinimumWidth(int minWidth) {
		throw new RuntimeException("Stub!");
	}

	public Animation getAnimation() {
		throw new RuntimeException("Stub!");
	}

	public void startAnimation(Animation animation) {
		throw new RuntimeException("Stub!");
	}

	public void clearAnimation() {
		throw new RuntimeException("Stub!");
	}

	public void setAnimation(Animation animation) {
		throw new RuntimeException("Stub!");
	}

	protected void onAnimationStart() {
		throw new RuntimeException("Stub!");
	}

	protected void onAnimationEnd() {
		throw new RuntimeException("Stub!");
	}

	protected boolean onSetAlpha(int alpha) {
		throw new RuntimeException("Stub!");
	}

	public void playSoundEffect(int soundConstant) {
		throw new RuntimeException("Stub!");
	}

	public boolean performHapticFeedback(int feedbackConstant) {
		throw new RuntimeException("Stub!");
	}

	public boolean performHapticFeedback(int feedbackConstant, int flags) {
		throw new RuntimeException("Stub!");
	}

	public void setSystemUiVisibility(int visibility) {
		throw new RuntimeException("Stub!");
	}

	public int getSystemUiVisibility() {
		throw new RuntimeException("Stub!");
	}

	public void setOnSystemUiVisibilityChangeListener(
			OnSystemUiVisibilityChangeListener l) {
		throw new RuntimeException("Stub!");
	}

	public void dispatchSystemUiVisibilityChanged(int visibility) {
		throw new RuntimeException("Stub!");
	}

	public final boolean startDrag(ClipData data,
			DragShadowBuilder shadowBuilder, Object myLocalState, int flags) {
		throw new RuntimeException("Stub!");
	}

	public boolean onDragEvent(DragEvent event) {
		throw new RuntimeException("Stub!");
	}

	public boolean dispatchDragEvent(DragEvent event) {
		throw new RuntimeException("Stub!");
	}

	public static View inflate(Context context, int resource, ViewGroup root) {
		throw new RuntimeException("Stub!");
	}

	protected boolean overScrollBy(int deltaX, int deltaY, int scrollX,
			int scrollY, int scrollRangeX, int scrollRangeY,
			int maxOverScrollX, int maxOverScrollY, boolean isTouchEvent) {
		throw new RuntimeException("Stub!");
	}

	protected void onOverScrolled(int scrollX, int scrollY, boolean clampedX,
			boolean clampedY) {
		throw new RuntimeException("Stub!");
	}

	public int getOverScrollMode() {
		throw new RuntimeException("Stub!");
	}

	public void setOverScrollMode(int overScrollMode) {
		throw new RuntimeException("Stub!");
	}

	public ViewPropertyAnimator animate() {
		throw new RuntimeException("Stub!");
	}

	public static class AccessibilityDelegate {
		public AccessibilityDelegate() {
			throw new RuntimeException("Stub!");
		}

		public void sendAccessibilityEvent(View host, int eventType) {
			throw new RuntimeException("Stub!");
		}

		public void sendAccessibilityEventUnchecked(View host,
				AccessibilityEvent event) {
			throw new RuntimeException("Stub!");
		}

		public boolean dispatchPopulateAccessibilityEvent(View host,
				AccessibilityEvent event) {
			throw new RuntimeException("Stub!");
		}

		public void onPopulateAccessibilityEvent(View host,
				AccessibilityEvent event) {
			throw new RuntimeException("Stub!");
		}

		public void onInitializeAccessibilityEvent(View host,
				AccessibilityEvent event) {
			throw new RuntimeException("Stub!");
		}

		public void onInitializeAccessibilityNodeInfo(View host,
				AccessibilityNodeInfo info) {
			throw new RuntimeException("Stub!");
		}

		public boolean onRequestSendAccessibilityEvent(ViewGroup host,
				View child, AccessibilityEvent event) {
			throw new RuntimeException("Stub!");
		}

		public AccessibilityNodeProvider getAccessibilityNodeProvider(View host) {
			throw new RuntimeException("Stub!");
		}

		public boolean performAccessibilityAction(View host, int action,
				Bundle args) {
			throw new RuntimeException("Stub!");
		}

	}

	public static class BaseSavedState extends AbsSavedState {
		public static final Parcelable.Creator<BaseSavedState> CREATOR = null;

		public BaseSavedState(Parcel source) {
			super(source);
			throw new RuntimeException("Stub!");
		}

		public BaseSavedState(Parcelable superState) {
			super(superState);
			throw new RuntimeException("Stub!");
		}
	}

	public static abstract interface OnAttachStateChangeListener {
		public abstract void onViewAttachedToWindow(View paramView);

		public abstract void onViewDetachedFromWindow(View paramView);
	}

	public static abstract interface OnSystemUiVisibilityChangeListener {
		public abstract void onSystemUiVisibilityChange(int paramInt);
	}

	public static abstract interface OnCreateContextMenuListener {
		public abstract void onCreateContextMenu(ContextMenu paramContextMenu,
				View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo);
	}

	public static abstract interface OnClickListener {
		public abstract void onClick(View paramView);
	}

	public static abstract interface OnFocusChangeListener {
		public abstract void onFocusChange(View paramView, boolean paramBoolean);
	}

	public static abstract interface OnDragListener {
		public abstract boolean onDrag(View paramView, DragEvent paramDragEvent);
	}

	public static abstract interface OnLongClickListener {
		public abstract boolean onLongClick(View paramView);
	}

	public static abstract interface OnGenericMotionListener {
		public abstract boolean onGenericMotion(View paramView,
				MotionEvent paramMotionEvent);
	}

	public static abstract interface OnHoverListener {
		public abstract boolean onHover(View paramView,
				MotionEvent paramMotionEvent);
	}

	public static abstract interface OnTouchListener {
		public abstract boolean onTouch(View paramView,
				MotionEvent paramMotionEvent);
	}

	public static abstract interface OnKeyListener {
		public abstract boolean onKey(View paramView, int paramInt,
				KeyEvent paramKeyEvent);
	}

	public static class MeasureSpec {
		public static final int UNSPECIFIED = 0;
		public static final int EXACTLY = 1073741824;
		public static final int AT_MOST = -2147483648;

		public MeasureSpec() {
			throw new RuntimeException("Stub!");
		}

		public static int makeMeasureSpec(int size, int mode) {
			throw new RuntimeException("Stub!");
		}

		public static int getMode(int measureSpec) {
			throw new RuntimeException("Stub!");
		}

		public static int getSize(int measureSpec) {
			throw new RuntimeException("Stub!");
		}

		public static String toString(int measureSpec) {
			throw new RuntimeException("Stub!");
		}

	}

	public static class DragShadowBuilder {
		public DragShadowBuilder(View view) {
			throw new RuntimeException("Stub!");
		}

		public DragShadowBuilder() {
			throw new RuntimeException("Stub!");
		}

		public final View getView() {
			throw new RuntimeException("Stub!");
		}

		public void onProvideShadowMetrics(Point shadowSize,
				Point shadowTouchPoint) {
			throw new RuntimeException("Stub!");
		}

		public void onDrawShadow(Canvas canvas) {
			throw new RuntimeException("Stub!");
		}

	}

	public static abstract interface OnLayoutChangeListener {
		public abstract void onLayoutChange(View paramView, int paramInt1,
				int paramInt2, int paramInt3, int paramInt4, int paramInt5,
				int paramInt6, int paramInt7, int paramInt8);
	}
	
	
	protected boolean setFrame(int left, int top, int right, int bottom) {
	    throw new RuntimeException("Stub!");
	}
	
    /**
     * Method that subclasses should implement to check their consistency. The type of
     * consistency check is indicated by the bit field passed as a parameter.
     *
     * @param consistency The type of consistency. See ViewDebug for more information.
     *
     * @throws IllegalStateException if the view is in an inconsistent state.
     *
     * @hide
     */
    protected boolean onConsistencyCheck(int consistency) {
        throw new RuntimeException("Stub!");
    }

	public ViewParent getParentForAccessibility() {
		throw new RuntimeException("Stub!");
	}

	public Object getAccessibilityNodeProvider() {
		throw new RuntimeException("Stub!");
	}

	public boolean performAccessibilityAction(int action, Bundle arguments) {
		throw new RuntimeException("Stub!");
	}

	public void setImportantForAccessibility(int mode) {
		throw new RuntimeException("Stub!");
	}

	public int getImportantForAccessibility() {
		throw new RuntimeException("Stub!");
	}

	public void postOnAnimationDelayed(Runnable action, long delayMillis) {
		throw new RuntimeException("Stub!");
	}

	public void postOnAnimation(Runnable action) {
		throw new RuntimeException("Stub!");
	}

	public void postInvalidateOnAnimation() {
		throw new RuntimeException("Stub!");
	}

	public void setHasTransientState(boolean hasTransientState) {
		throw new RuntimeException("Stub!");
	}

	public boolean hasTransientState() {
		throw new RuntimeException("Stub!");
	}

	public void setBackground(Drawable background) {
		throw new RuntimeException("Stub!");
	}
	
	protected float getVerticalScrollFactor()
	{
		throw new RuntimeException("Stub!");
	}
}