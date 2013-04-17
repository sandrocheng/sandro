.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanelOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->callBackBefore()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mFireScrolled:Z
    invoke-static {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$302(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Z)Z

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-boolean v2, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    if-nez v2, :cond_0

    cmpl-float v2, p4, v4

    if-gez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v3, v3, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v3, v3

    if-ne v2, v3, :cond_2

    cmpg-float v2, p4, v4

    if-gtz v2, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z
    invoke-static {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$202(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Z)Z

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mTopDesktopView:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;
    invoke-static {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$500(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->sendUpTouchEvent(ZII)V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    :cond_3
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v3, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iput v1, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iput-boolean v0, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v3, v3, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    invoke-virtual {v2, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->scrollTo(II)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v2, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v3, v3, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v3, v3

    if-ge v2, v3, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget v3, v3, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mContentHeight:I

    neg-int v3, v3

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrollY:I

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$200(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$PanelOnGestureListener;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onStartAnimation()V

    const/4 v0, 0x1

    goto :goto_0
.end method
