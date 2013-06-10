.class Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;
.super Landroid/os/HandlerThread;


# instance fields
.field private final callbacks:Lcom/google/android/apps/analytics/Dispatcher$Callbacks;

.field private currentTask:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

.field volatile handlerExecuteOnDispatcherThread:Landroid/os/Handler;

.field private lastStatusCode:I

.field private maxEventsPerRequest:I

.field private final parent:Lcom/google/android/apps/analytics/NetworkDispatcher;

.field private final pipelinedRequester:Lcom/google/android/apps/analytics/PipelinedRequester;

.field private final requesterCallBacks:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

.field private retryInterval:J

.field private final userAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Lcom/google/android/apps/analytics/PipelinedRequester;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I

    iput-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->currentTask:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    iput-object p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->callbacks:Lcom/google/android/apps/analytics/Dispatcher$Callbacks;

    iput-object p3, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->userAgent:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Lcom/google/android/apps/analytics/PipelinedRequester;

    new-instance v0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;-><init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;Lcom/google/android/apps/analytics/NetworkDispatcher$1;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Lcom/google/android/apps/analytics/PipelinedRequester;

    iget-object v1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/PipelinedRequester;->installCallbacks(Lcom/google/android/apps/analytics/PipelinedRequester$Callbacks;)V

    iput-object p4, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->parent:Lcom/google/android/apps/analytics/NetworkDispatcher;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Lcom/google/android/apps/analytics/PipelinedRequester;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher;Lcom/google/android/apps/analytics/NetworkDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;-><init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Lcom/google/android/apps/analytics/PipelinedRequester;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher;)V
    .locals 2

    new-instance v0, Lcom/google/android/apps/analytics/PipelinedRequester;

    #getter for: Lcom/google/android/apps/analytics/NetworkDispatcher;->googleAnalyticsHost:Lorg/apache/http/HttpHost;
    invoke-static {p3}, Lcom/google/android/apps/analytics/NetworkDispatcher;->access$200(Lcom/google/android/apps/analytics/NetworkDispatcher;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/analytics/PipelinedRequester;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;-><init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Lcom/google/android/apps/analytics/PipelinedRequester;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher;Lcom/google/android/apps/analytics/NetworkDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;-><init>(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;Ljava/lang/String;Lcom/google/android/apps/analytics/NetworkDispatcher;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->maxEventsPerRequest:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->requesterCallBacks:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$RequesterCallbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->currentTask:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;)Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->currentTask:Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->lastStatusCode:I

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->lastStatusCode:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->retryInterval:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->retryInterval:J

    return-wide p1
.end method

.method static synthetic access$630(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->retryInterval:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->retryInterval:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/NetworkDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->parent:Lcom/google/android/apps/analytics/NetworkDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/PipelinedRequester;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->pipelinedRequester:Lcom/google/android/apps/analytics/PipelinedRequester;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;)Lcom/google/android/apps/analytics/Dispatcher$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->callbacks:Lcom/google/android/apps/analytics/Dispatcher$Callbacks;

    return-object v0
.end method


# virtual methods
.method public dispatchHits([Lcom/google/android/apps/analytics/Hit;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->handlerExecuteOnDispatcherThread:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->handlerExecuteOnDispatcherThread:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread$AsyncDispatchTask;-><init>(Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;[Lcom/google/android/apps/analytics/Hit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onLooperPrepared()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/NetworkDispatcher$DispatcherThread;->handlerExecuteOnDispatcherThread:Landroid/os/Handler;

    return-void
.end method
