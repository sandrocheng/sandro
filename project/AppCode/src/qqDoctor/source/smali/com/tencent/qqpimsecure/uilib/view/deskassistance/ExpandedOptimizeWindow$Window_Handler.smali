.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Window_Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/view/MotionEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->mGallery:Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->access$900(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;)Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/DeskAssistanceGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow$Window_Handler;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedOptimizeWindow;->resetUi()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
