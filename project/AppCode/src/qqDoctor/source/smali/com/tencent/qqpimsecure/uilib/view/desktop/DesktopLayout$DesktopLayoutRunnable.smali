.class public Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DesktopLayoutRunnable"
.end annotation


# instance fields
.field event:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Landroid/view/MotionEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;->event:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;->event:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
