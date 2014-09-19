package android.view;

import java.util.ArrayList;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Animation;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;

/**
 * 为了暴露一些Android hide的变量给子类使用
 * 这个类没有任何作用, 因为ClassLoader会优先加载系统的类
 * 
 *
 */
@SuppressLint("NewApi") public abstract class ViewGroup extends View
  implements ViewParent, ViewManager
{
  public static final int FOCUS_BEFORE_DESCENDANTS = 131072;
  public static final int FOCUS_AFTER_DESCENDANTS = 262144;
  public static final int FOCUS_BLOCK_DESCENDANTS = 393216;
  public static final int PERSISTENT_NO_CACHE = 0;
  public static final int PERSISTENT_ANIMATION_CACHE = 1;
  public static final int PERSISTENT_SCROLLING_CACHE = 2;
  public static final int PERSISTENT_ALL_CACHES = 3;
  protected static final int CLIP_TO_PADDING_MASK = 34;

  public ViewGroup(Context context)
  {
    super((Context)null, (AttributeSet)null, 0); throw new RuntimeException("Stub!"); } 
  public ViewGroup(Context context, AttributeSet attrs) { super((Context)null, (AttributeSet)null, 0); throw new RuntimeException("Stub!"); } 
  public ViewGroup(Context context, AttributeSet attrs, int defStyle) { super((Context)null, (AttributeSet)null, 0); throw new RuntimeException("Stub!"); } 
  @ViewDebug.ExportedProperty(category="focus", mapping={@ViewDebug.IntToString(from=131072, to="FOCUS_BEFORE_DESCENDANTS"), @ViewDebug.IntToString(from=262144, to="FOCUS_AFTER_DESCENDANTS"), @ViewDebug.IntToString(from=393216, to="FOCUS_BLOCK_DESCENDANTS")})
  public int getDescendantFocusability() { throw new RuntimeException("Stub!"); } 
  public void setDescendantFocusability(int focusability) { throw new RuntimeException("Stub!"); } 
  public void requestChildFocus(View child, View focused) { throw new RuntimeException("Stub!"); } 
  public void focusableViewAvailable(View v) { throw new RuntimeException("Stub!"); } 
  public boolean showContextMenuForChild(View originalView) { throw new RuntimeException("Stub!"); } 
  public ActionMode startActionModeForChild(View originalView, ActionMode.Callback callback) { throw new RuntimeException("Stub!"); } 
  public View focusSearch(View focused, int direction) { throw new RuntimeException("Stub!"); } 
  public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate) { throw new RuntimeException("Stub!"); } 
  public boolean requestSendAccessibilityEvent(View child, AccessibilityEvent event) { throw new RuntimeException("Stub!"); } 
  public boolean onRequestSendAccessibilityEvent(View child, AccessibilityEvent event) { throw new RuntimeException("Stub!"); } 
  public boolean dispatchUnhandledMove(View focused, int direction) { throw new RuntimeException("Stub!"); } 
  public void clearChildFocus(View child) { throw new RuntimeException("Stub!"); } 
  public void clearFocus() { throw new RuntimeException("Stub!"); } 
  public View getFocusedChild() { throw new RuntimeException("Stub!"); } 
  public boolean hasFocus() { throw new RuntimeException("Stub!"); } 
  public View findFocus() { throw new RuntimeException("Stub!"); } 
  public boolean hasFocusable() { throw new RuntimeException("Stub!"); } 
  public void addFocusables(ArrayList<View> views, int direction) { throw new RuntimeException("Stub!"); } 
  public void addFocusables(ArrayList<View> views, int direction, int focusableMode) { throw new RuntimeException("Stub!"); } 
  public void findViewsWithText(ArrayList<View> outViews, CharSequence text, int flags) { throw new RuntimeException("Stub!"); } 
  public void dispatchWindowFocusChanged(boolean hasFocus) { throw new RuntimeException("Stub!"); } 
  public void addTouchables(ArrayList<View> views) { throw new RuntimeException("Stub!"); } 
  public void dispatchDisplayHint(int hint) { throw new RuntimeException("Stub!"); } 
  protected void dispatchVisibilityChanged(View changedView, int visibility) { throw new RuntimeException("Stub!"); } 
  public void dispatchWindowVisibilityChanged(int visibility) { throw new RuntimeException("Stub!"); } 
  public void dispatchConfigurationChanged(Configuration newConfig) { throw new RuntimeException("Stub!"); } 
  public void recomputeViewAttributes(View child) { throw new RuntimeException("Stub!"); } 
  public void bringChildToFront(View child) { throw new RuntimeException("Stub!"); } 
  public boolean dispatchDragEvent(DragEvent event) { throw new RuntimeException("Stub!"); } 
  public void dispatchSystemUiVisibilityChanged(int visible) { throw new RuntimeException("Stub!"); } 
  public boolean dispatchKeyEventPreIme(KeyEvent event) { throw new RuntimeException("Stub!"); } 
  public boolean dispatchKeyEvent(KeyEvent event) { throw new RuntimeException("Stub!"); } 
  public boolean dispatchKeyShortcutEvent(KeyEvent event) { throw new RuntimeException("Stub!"); } 
  public boolean dispatchTrackballEvent(MotionEvent event) { throw new RuntimeException("Stub!"); } 
  protected boolean dispatchHoverEvent(MotionEvent event) {
    throw new RuntimeException("Stub!"); } 
  public boolean onInterceptHoverEvent(MotionEvent event) { throw new RuntimeException("Stub!"); } 
  protected boolean dispatchGenericPointerEvent(MotionEvent event) { throw new RuntimeException("Stub!"); } 
  protected boolean dispatchGenericFocusedEvent(MotionEvent event) { throw new RuntimeException("Stub!"); } 
  public boolean dispatchTouchEvent(MotionEvent ev) { throw new RuntimeException("Stub!"); } 
  public void setMotionEventSplittingEnabled(boolean split) { throw new RuntimeException("Stub!"); } 
  public boolean isMotionEventSplittingEnabled() { throw new RuntimeException("Stub!"); } 
  public void requestDisallowInterceptTouchEvent(boolean disallowIntercept) { throw new RuntimeException("Stub!"); } 
  public boolean onInterceptTouchEvent(MotionEvent ev) { throw new RuntimeException("Stub!"); } 
  public boolean requestFocus(int direction, Rect previouslyFocusedRect) { throw new RuntimeException("Stub!"); } 
  protected boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect) {
    throw new RuntimeException("Stub!"); } 
  public void setPadding(int left, int top, int right, int bottom) { throw new RuntimeException("Stub!"); } 
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> container) { throw new RuntimeException("Stub!"); } 
  protected void dispatchFreezeSelfOnly(SparseArray<Parcelable> container) { throw new RuntimeException("Stub!"); } 
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> container) { throw new RuntimeException("Stub!"); } 
  protected void dispatchThawSelfOnly(SparseArray<Parcelable> container) { throw new RuntimeException("Stub!"); } 
  protected void setChildrenDrawingCacheEnabled(boolean enabled) { throw new RuntimeException("Stub!"); } 
  protected void onAnimationStart() { throw new RuntimeException("Stub!"); } 
  protected void onAnimationEnd() { throw new RuntimeException("Stub!"); } 
  protected void dispatchDraw(Canvas canvas) { throw new RuntimeException("Stub!"); } 
  protected int getChildDrawingOrder(int childCount, int i) { throw new RuntimeException("Stub!"); } 
  protected boolean drawChild(Canvas canvas, View child, long drawingTime) { throw new RuntimeException("Stub!"); } 
  public void setClipChildren(boolean clipChildren) { throw new RuntimeException("Stub!"); } 
  public void setClipToPadding(boolean clipToPadding) { throw new RuntimeException("Stub!"); } 
  public void dispatchSetSelected(boolean selected) { throw new RuntimeException("Stub!"); } 
  public void dispatchSetActivated(boolean activated) { throw new RuntimeException("Stub!"); } 
  protected void dispatchSetPressed(boolean pressed) { throw new RuntimeException("Stub!"); } 
  protected void setStaticTransformationsEnabled(boolean enabled) { throw new RuntimeException("Stub!"); } 
  protected boolean getChildStaticTransformation(View child, Transformation t) { throw new RuntimeException("Stub!"); } 
  public void addView(View child) { throw new RuntimeException("Stub!"); } 
  public void addView(View child, int index) { throw new RuntimeException("Stub!"); } 
  public void addView(View child, int width, int height) { throw new RuntimeException("Stub!"); } 
  public void addView(View child, LayoutParams params) { throw new RuntimeException("Stub!"); } 
  public void addView(View child, int index, LayoutParams params) { throw new RuntimeException("Stub!"); } 
  public void updateViewLayout(View view, LayoutParams params) { throw new RuntimeException("Stub!"); } 
  protected boolean checkLayoutParams(LayoutParams p) { throw new RuntimeException("Stub!"); } 
  public void setOnHierarchyChangeListener(OnHierarchyChangeListener listener) { throw new RuntimeException("Stub!"); } 
  protected boolean addViewInLayout(View child, int index, LayoutParams params) { throw new RuntimeException("Stub!"); } 
  protected boolean addViewInLayout(View child, int index, LayoutParams params, boolean preventRequestLayout) { throw new RuntimeException("Stub!"); } 
  protected void cleanupLayoutState(View child) { throw new RuntimeException("Stub!"); } 
  protected void attachLayoutAnimationParameters(View child, LayoutParams params, int index, int count) { throw new RuntimeException("Stub!"); } 
  public void removeView(View view) { throw new RuntimeException("Stub!"); } 
  public void removeViewInLayout(View view) { throw new RuntimeException("Stub!"); } 
  public void removeViewsInLayout(int start, int count) { throw new RuntimeException("Stub!"); } 
  public void removeViewAt(int index) { throw new RuntimeException("Stub!"); } 
  public void removeViews(int start, int count) { throw new RuntimeException("Stub!"); } 
  public void setLayoutTransition(LayoutTransition transition) { throw new RuntimeException("Stub!"); } 
  public LayoutTransition getLayoutTransition() { throw new RuntimeException("Stub!"); } 
  public void removeAllViews() { throw new RuntimeException("Stub!"); } 
  public void removeAllViewsInLayout() { throw new RuntimeException("Stub!"); } 
  protected void removeDetachedView(View child, boolean animate) { throw new RuntimeException("Stub!"); } 
  protected void attachViewToParent(View child, int index, LayoutParams params) { throw new RuntimeException("Stub!"); } 
  protected void detachViewFromParent(View child) { throw new RuntimeException("Stub!"); } 
  protected void detachViewFromParent(int index) { throw new RuntimeException("Stub!"); } 
  protected void detachViewsFromParent(int start, int count) { throw new RuntimeException("Stub!"); } 
  protected void detachAllViewsFromParent() { throw new RuntimeException("Stub!"); } 
  public final void invalidateChild(View child, Rect dirty) { throw new RuntimeException("Stub!"); } 
  public ViewParent invalidateChildInParent(int[] location, Rect dirty) { throw new RuntimeException("Stub!"); } 
  public final void offsetDescendantRectToMyCoords(View descendant, Rect rect) { throw new RuntimeException("Stub!"); } 
  public final void offsetRectIntoDescendantCoords(View descendant, Rect rect) { throw new RuntimeException("Stub!"); } 
  public boolean getChildVisibleRect(View child, Rect r, Point offset) { throw new RuntimeException("Stub!"); } 
  public final void layout(int l, int t, int r, int b) { throw new RuntimeException("Stub!"); } 
  protected abstract void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  protected boolean canAnimate() { throw new RuntimeException("Stub!"); } 
  public void startLayoutAnimation() { throw new RuntimeException("Stub!"); } 
  public void scheduleLayoutAnimation() { throw new RuntimeException("Stub!"); } 
  public void setLayoutAnimation(LayoutAnimationController controller) { throw new RuntimeException("Stub!"); } 
  public LayoutAnimationController getLayoutAnimation() { throw new RuntimeException("Stub!"); } 
  @ViewDebug.ExportedProperty
  public boolean isAnimationCacheEnabled() { throw new RuntimeException("Stub!"); } 
  public void setAnimationCacheEnabled(boolean enabled) { throw new RuntimeException("Stub!"); } 
  @ViewDebug.ExportedProperty(category="drawing")
  public boolean isAlwaysDrawnWithCacheEnabled() { throw new RuntimeException("Stub!"); } 
  public void setAlwaysDrawnWithCacheEnabled(boolean always) { throw new RuntimeException("Stub!"); } 
  @ViewDebug.ExportedProperty(category="drawing")
  protected boolean isChildrenDrawnWithCacheEnabled() { throw new RuntimeException("Stub!"); } 
  protected void setChildrenDrawnWithCacheEnabled(boolean enabled) { throw new RuntimeException("Stub!"); } 
  @ViewDebug.ExportedProperty(category="drawing")
  protected boolean isChildrenDrawingOrderEnabled() { throw new RuntimeException("Stub!"); } 
  protected void setChildrenDrawingOrderEnabled(boolean enabled) { throw new RuntimeException("Stub!"); } 
  @ViewDebug.ExportedProperty(category="drawing", mapping={@ViewDebug.IntToString(from=0, to="NONE"), @ViewDebug.IntToString(from=1, to="ANIMATION"), @ViewDebug.IntToString(from=2, to="SCROLLING"), @ViewDebug.IntToString(from=3, to="ALL")})
  public int getPersistentDrawingCache() { throw new RuntimeException("Stub!"); } 
  public void setPersistentDrawingCache(int drawingCacheToKeep) { throw new RuntimeException("Stub!"); } 
  public LayoutParams generateLayoutParams(AttributeSet attrs) { throw new RuntimeException("Stub!"); } 
  protected LayoutParams generateLayoutParams(LayoutParams p) { throw new RuntimeException("Stub!"); } 
  protected LayoutParams generateDefaultLayoutParams() { throw new RuntimeException("Stub!"); } 
  protected void debug(int depth) { throw new RuntimeException("Stub!"); } 
  public int indexOfChild(View child) { throw new RuntimeException("Stub!"); } 
  public int getChildCount() { throw new RuntimeException("Stub!"); } 
  public View getChildAt(int index) { throw new RuntimeException("Stub!"); } 
  protected void measureChildren(int widthMeasureSpec, int heightMeasureSpec) { throw new RuntimeException("Stub!"); } 
  protected void measureChild(View child, int parentWidthMeasureSpec, int parentHeightMeasureSpec) { throw new RuntimeException("Stub!"); } 
  protected void measureChildWithMargins(View child, int parentWidthMeasureSpec, int widthUsed, int parentHeightMeasureSpec, int heightUsed) { throw new RuntimeException("Stub!"); } 
  public static int getChildMeasureSpec(int spec, int padding, int childDimension) { throw new RuntimeException("Stub!"); } 
  public void clearDisappearingChildren() { throw new RuntimeException("Stub!"); } 
  public void startViewTransition(View view) { throw new RuntimeException("Stub!"); } 
  public void endViewTransition(View view) { throw new RuntimeException("Stub!"); } 
  public boolean gatherTransparentRegion(Region region) { throw new RuntimeException("Stub!"); } 
  public void requestTransparentRegion(View child) { throw new RuntimeException("Stub!"); } 
  protected boolean fitSystemWindows(Rect insets) { throw new RuntimeException("Stub!"); } 
  public Animation.AnimationListener getLayoutAnimationListener() { throw new RuntimeException("Stub!"); } 
  protected void drawableStateChanged() { throw new RuntimeException("Stub!"); } 
  public void jumpDrawablesToCurrentState() { throw new RuntimeException("Stub!"); } 
  protected int[] onCreateDrawableState(int extraSpace) { throw new RuntimeException("Stub!"); } 
  public void setAddStatesFromChildren(boolean addsStates) { throw new RuntimeException("Stub!"); } 
  public boolean addStatesFromChildren() { throw new RuntimeException("Stub!"); } 
  public void childDrawableStateChanged(View child) { throw new RuntimeException("Stub!"); } 
  public void setLayoutAnimationListener(Animation.AnimationListener animationListener) { throw new RuntimeException("Stub!"); } 
  protected void resetResolvedLayoutDirection() { throw new RuntimeException("Stub!"); } 
  protected void resetResolvedTextDirection() { throw new RuntimeException("Stub!"); } 
  public boolean shouldDelayChildPressedState() { throw new RuntimeException("Stub!"); }
  public void requestFitSystemWindows() { throw new RuntimeException("Stub!"); }
  public ViewParent getParentForAccessibility() { throw new RuntimeException("Stub!"); }


  public static class MarginLayoutParams extends ViewGroup.LayoutParams
  {

    @ViewDebug.ExportedProperty(category="layout")
    public int leftMargin;

    @ViewDebug.ExportedProperty(category="layout")
    public int topMargin;

    @ViewDebug.ExportedProperty(category="layout")
    public int rightMargin;

    @ViewDebug.ExportedProperty(category="layout")
    public int bottomMargin;

    public MarginLayoutParams(Context c, AttributeSet attrs)
    {
      super(c,attrs); throw new RuntimeException("Stub!"); } 
    public MarginLayoutParams(int width, int height) { super(width,height); throw new RuntimeException("Stub!"); } 
    public MarginLayoutParams(MarginLayoutParams source) { super(source); throw new RuntimeException("Stub!"); } 
    public MarginLayoutParams(ViewGroup.LayoutParams source) { super(source); throw new RuntimeException("Stub!"); } 
    public void setMargins(int left, int top, int right, int bottom) { throw new RuntimeException("Stub!"); }

  }

  public static class LayoutParams
  {

    @Deprecated
    public static final int FILL_PARENT = -1;
    public static final int MATCH_PARENT = -1;
    public static final int WRAP_CONTENT = -2;

    @ViewDebug.ExportedProperty(category="layout", mapping={@ViewDebug.IntToString(from=-1, to="MATCH_PARENT"), @ViewDebug.IntToString(from=-2, to="WRAP_CONTENT")})
    public int width;

    @ViewDebug.ExportedProperty(category="layout", mapping={@ViewDebug.IntToString(from=-1, to="MATCH_PARENT"), @ViewDebug.IntToString(from=-2, to="WRAP_CONTENT")})
    public int height;
    public LayoutAnimationController.AnimationParameters layoutAnimationParameters;

    public LayoutParams(Context c, AttributeSet attrs)
    {
      throw new RuntimeException("Stub!"); } 
    public LayoutParams(int width, int height) { throw new RuntimeException("Stub!"); } 
    public LayoutParams(LayoutParams source) { throw new RuntimeException("Stub!"); } 
    protected void setBaseAttributes(TypedArray a, int widthAttr, int heightAttr) { throw new RuntimeException("Stub!"); }

  }

  public static abstract interface OnHierarchyChangeListener
  {
    public abstract void onChildViewAdded(View paramView1, View paramView2);

    public abstract void onChildViewRemoved(View paramView1, View paramView2);
  }
  
  /**
   * Internal flags.
   *
   * This field should be made private, so it is hidden from the SDK.
   * {@hide}
   */
  protected int mGroupFlags;
  
  /**
   * Indicates which types of drawing caches are to be kept in memory.
   * This field should be made private, so it is hidden from the SDK.
   * {@hide}
   */
  protected int mPersistentDrawingCache;
  
  /**
   * Offset the vertical location of all children of this view by the specified number of pixels.
   *
   * @param offset the number of pixels to offset
   *
   * @hide
   */
  public void offsetChildrenTopAndBottom(int offset) {}
  

}