.class public final Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;
    }
.end annotation


# static fields
.field public static a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;


# instance fields
.field public b:Landroid/content/Context;

.field public c:Landroid/view/WindowManager;

.field public d:Lzo;

.field public e:Landroid/view/WindowManager$LayoutParams;

.field public f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

.field public g:Z

.field public h:Landroid/os/Handler;

.field public i:Labv$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->g:Z

    new-instance v0, Lacd;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lacd;-><init>(Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    new-instance v0, Lace;

    invoke-direct {v0, p0}, Lace;-><init>(Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->i:Labv$b;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->c:Landroid/view/WindowManager;

    invoke-static {}, Lzo;->a()Lzo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->d:Lzo;

    return-void
.end method
