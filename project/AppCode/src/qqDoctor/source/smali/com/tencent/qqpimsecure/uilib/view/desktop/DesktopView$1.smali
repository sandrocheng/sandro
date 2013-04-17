.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$1;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$1;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView$1;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
