.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z
    invoke-static {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$202(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Z)Z

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f080182

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #setter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mClickOrScroll:Z
    invoke-static {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$202(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;Z)Z

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_5

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-boolean v3, v3, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onScrollEndAnimation()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mFireScrolled:Z
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$300(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    iget-boolean v3, v3, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mScrolling:Z

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->onEndAnimation(Z)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/view/GestureDetector;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/view/GestureDetector;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "miss action: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/view/GestureDetector;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v3}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;->access$400(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopPanel;)Landroid/view/GestureDetector;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0
.end method
