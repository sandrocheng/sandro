.class public final Lace;
.super Ljava/lang/Object;

# interfaces
.implements Labv$b;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;)V
    .locals 0

    iput-object p1, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final currentApp(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object v0, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->d:Lzo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->f:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow$ToastSuspensionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->d:Lzo;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lzo;->a(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lace;->a:Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/ToastSuspensionWindow;->h:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
