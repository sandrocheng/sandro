.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Vibrate"
.end annotation


# instance fields
.field private mStophandler:Landroid/os/Handler;

.field pattern:[J

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

.field vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->pattern:[J

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate$1;

    invoke-direct {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->mStophandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public Stop()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->vibrator:Landroid/os/Vibrator;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->vibrator:Landroid/os/Vibrator;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public playVibrate(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->Stop()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;->access$1500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->vibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->vibrator:Landroid/os/Vibrator;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->vibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->pattern:[J

    invoke-virtual {v0, v2, p1}, Landroid/os/Vibrator;->vibrate([JI)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/MinDeskAssistantWindow$Vibrate;->mStophandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
