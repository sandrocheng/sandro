.class Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;Lcom/google/android/apps/analytics/NetworkDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;-><init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)V

    return-void
.end method


# virtual methods
.method public pipelineModeChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    const/16 v1, 0x1e

    #setter for: Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I
    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$1002(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I
    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$1002(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I

    goto :goto_0
.end method

.method public requestSent()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    #getter for: Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->currentTask:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    invoke-static {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$400(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    #getter for: Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->currentTask:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    invoke-static {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$400(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;->removeNextHit()Lcom/google/android/apps/analytics/Hit;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    #getter for: Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->callbacks:Lcom/google/android/apps/analytics/Dispatcher$Callbacks;
    invoke-static {v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$900(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/Dispatcher$Callbacks;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/apps/analytics/Hit;->hitId:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/apps/analytics/Dispatcher$Callbacks;->hitDispatched(J)V

    goto :goto_0
.end method

.method public serverError(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;->this$0:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;

    #setter for: Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->lastStatusCode:I
    invoke-static {v0, p1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->access$502(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I

    return-void
.end method
