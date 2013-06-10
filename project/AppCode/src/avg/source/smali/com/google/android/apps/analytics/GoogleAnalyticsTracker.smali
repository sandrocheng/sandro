.class public Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GoogleAnalyticsTracker"

.field public static final PRODUCT:Ljava/lang/String; = "GoogleAnalytics"

.field public static final VERSION:Ljava/lang/String; = "1.4.1"

.field public static final WIRE_VERSION:Ljava/lang/String; = "4.8.1ma"

.field private static instance:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# instance fields
.field private accountId:Ljava/lang/String;

.field private adHitIdGenerator:Lcom/google/android/apps/analytics/AdHitIdGenerator;

.field private anonymizeIp:Z

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

.field private debug:Z

.field private dispatchPeriod:I

.field private dispatchRunner:Ljava/lang/Runnable;

.field private dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

.field private dispatcherIsBusy:Z

.field private dryRun:Z

.field private handler:Landroid/os/Handler;

.field private hitStore:Lcom/google/android/apps/analytics/HitStore;

.field private itemMap:Ljava/util/Map;

.field private parent:Landroid/content/Context;

.field private powerSaveMode:Z

.field private sampleRate:I

.field private transactionMap:Ljava/util/Map;

.field private useServerTime:Z

.field private userAgentProduct:Ljava/lang/String;

.field private userAgentVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->instance:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dryRun:Z

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->anonymizeIp:Z

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->useServerTime:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->sampleRate:I

    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    const-string v0, "1.4.1"

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->transactionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->itemMap:Ljava/util/Map;

    new-instance v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$1;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)Lcom/google/android/apps/analytics/HitStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    return-object v0
.end method

.method private cancelPendingDispatches()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Lcom/google/android/apps/analytics/Event;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/analytics/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/Event;->setCustomVariableBuffer(Lcom/google/android/apps/analytics/CustomVariableBuffer;)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->adHitIdGenerator:Lcom/google/android/apps/analytics/AdHitIdGenerator;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/AdHitIdGenerator;->getAdHitId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/Event;->setAdHitId(I)V

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->useServerTime:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/Event;->setUseServerTime(Z)V

    new-instance v1, Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-direct {v1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v1, v0}, Lcom/google/android/apps/analytics/HitStore;->putEvent(Lcom/google/android/apps/analytics/Event;)V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->resetPowerSaveMode()V

    return-void
.end method

.method public static getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
    .locals 1

    sget-object v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->instance:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-object v0
.end method

.method private maybeScheduleNextDispatch()V
    .locals 4

    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchRunner:Ljava/lang/Runnable;

    iget v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Scheduled next dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetPowerSaveMode()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/google/android/apps/analytics/Item;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->transactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Item;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/Transaction;

    if-nez v0, :cond_0

    const-string v0, "GoogleAnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No transaction with orderId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Item;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found, creating one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/apps/analytics/Transaction$Builder;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Item;->getOrderId()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/Transaction$Builder;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/Transaction$Builder;->build()Lcom/google/android/apps/analytics/Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->transactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Item;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->itemMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Item;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->itemMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Item;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Item;->getItemSKU()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTransaction(Lcom/google/android/apps/analytics/Transaction;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->transactionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/analytics/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearTransactions()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->transactionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->itemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public dispatch()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    if-eqz v2, :cond_0

    const-string v2, "GoogleAnalyticsTracker"

    const-string v3, "Called dispatch"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    if-eqz v2, :cond_3

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but dispatcher was busy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    if-eqz v1, :cond_5

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was no network available"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v2}, Lcom/google/android/apps/analytics/HitStore;->getNumStoredHits()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/HitStore;->peekHits()[Lcom/google/android/apps/analytics/Hit;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v2, v0}, Lcom/google/android/apps/analytics/Dispatcher;->dispatchHits([Lcom/google/android/apps/analytics/Hit;)V

    iput-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    iget-boolean v2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    if-eqz v2, :cond_7

    const-string v2, "GoogleAnalyticsTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " hits to dispatcher"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iput-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->powerSaveMode:Z

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    if-eqz v1, :cond_2

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "...but there was nothing to dispatch"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dispatchFinished()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    return-void
.end method

.method public getAnonymizeIp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->anonymizeIp:Z

    return v0
.end method

.method public getDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    return v0
.end method

.method getDispatcher()Lcom/google/android/apps/analytics/Dispatcher;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    return-object v0
.end method

.method getHitStore()Lcom/google/android/apps/analytics/HitStore;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->sampleRate:I

    return v0
.end method

.method getSessionIdForAds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/HitStore;->getSessionId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisitorCustomVar(I)Ljava/lang/String;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index must be between 1 and 5 inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v0, p1}, Lcom/google/android/apps/analytics/HitStore;->getVisitorCustomVar(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVisitorIdForAds()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/HitStore;->getVisitorId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDryRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dryRun:Z

    return v0
.end method

.method returnToInitialState()V
    .locals 1

    new-instance v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;-><init>()V

    sput-object v0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->instance:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    return-void
.end method

.method setAdHitIdGenerator(Lcom/google/android/apps/analytics/AdHitIdGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->adHitIdGenerator:Lcom/google/android/apps/analytics/AdHitIdGenerator;

    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->anonymizeIp:Z

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->anonymizeIp:Z

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/HitStore;->setAnonymizeIp(Z)V

    :cond_0
    return-void
.end method

.method public setCustomVar(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/android/apps/analytics/CustomVariable;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/apps/analytics/CustomVariable;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-direct {v1}, Lcom/google/android/apps/analytics/CustomVariableBuffer;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->customVariableBuffer:Lcom/google/android/apps/analytics/CustomVariableBuffer;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/analytics/CustomVariableBuffer;->setCustomVariable(Lcom/google/android/apps/analytics/CustomVariable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->debug:Z

    return-void
.end method

.method public setDispatchPeriod(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    iput p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchPeriod:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispatches()V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->maybeScheduleNextDispatch()V

    goto :goto_0
.end method

.method public setDispatcher(Lcom/google/android/apps/analytics/Dispatcher;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/Dispatcher;->stop()V

    :cond_1
    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    new-instance v1, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;

    invoke-direct {v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/Dispatcher;->init(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    iget-boolean v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dryRun:Z

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/Dispatcher;->setDryRun(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setDryRun(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dryRun:Z

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v0, p1}, Lcom/google/android/apps/analytics/Dispatcher;->setDryRun(Z)V

    :cond_0
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    return-void
.end method

.method public setReferrer(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set a referrer before starting the tracker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v0, p1}, Lcom/google/android/apps/analytics/HitStore;->setReferrer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setSampleRate(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    :cond_0
    const-string v0, "GoogleAnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid sample rate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (should be between 0 and 100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->sampleRate:I

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    iget v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->sampleRate:I

    invoke-interface {v0, v1}, Lcom/google/android/apps/analytics/HitStore;->setSampleRate(I)V

    goto :goto_0
.end method

.method public setUseServerTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->useServerTime:Z

    return-void
.end method

.method public start(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->startNewSession(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/HitStore;Lcom/google/android/apps/analytics/Dispatcher;Z)V
    .locals 8

    new-instance v7, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;

    invoke-direct {v7, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherCallbacks;-><init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/HitStore;Lcom/google/android/apps/analytics/Dispatcher;ZLcom/google/android/apps/analytics/Dispatcher$Callbacks;)V

    return-void
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/HitStore;Lcom/google/android/apps/analytics/Dispatcher;ZLcom/google/android/apps/analytics/Dispatcher$Callbacks;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    new-instance v0, Lcom/google/android/apps/analytics/AdHitIdGenerator;

    invoke-direct {v0}, Lcom/google/android/apps/analytics/AdHitIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->adHitIdGenerator:Lcom/google/android/apps/analytics/AdHitIdGenerator;

    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/HitStore;->startNewVisit()V

    :cond_1
    iput-object p5, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v0, p7}, Lcom/google/android/apps/analytics/Dispatcher;->init(Lcom/google/android/apps/analytics/Dispatcher$Callbacks;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcherIsBusy:Z

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->connectivityManager:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->handler:Landroid/os/Handler;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setDispatchPeriod(I)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispatches()V

    goto :goto_0
.end method

.method start(Ljava/lang/String;ILandroid/content/Context;Z)V
    .locals 7

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    if-nez v0, :cond_1

    new-instance v4, Lcom/google/android/apps/analytics/PersistentHitStore;

    invoke-direct {v4, p3}, Lcom/google/android/apps/analytics/PersistentHitStore;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->anonymizeIp:Z

    invoke-interface {v4, v0}, Lcom/google/android/apps/analytics/HitStore;->setAnonymizeIp(Z)V

    iget v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->sampleRate:I

    invoke-interface {v4, v0}, Lcom/google/android/apps/analytics/HitStore;->setSampleRate(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    if-nez v0, :cond_2

    new-instance v5, Lcom/google/android/apps/analytics/NetworkDispatcher;

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentProduct:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->userAgentVersion:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Lcom/google/android/apps/analytics/NetworkDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dryRun:Z

    invoke-interface {v5, v0}, Lcom/google/android/apps/analytics/Dispatcher;->setDryRun(Z)V

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/apps/analytics/HitStore;Lcom/google/android/apps/analytics/Dispatcher;Z)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    goto :goto_1
.end method

.method public start(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public startNewSession(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->start(Ljava/lang/String;ILandroid/content/Context;Z)V

    return-void
.end method

.method public startNewSession(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->startNewSession(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatcher:Lcom/google/android/apps/analytics/Dispatcher;

    invoke-interface {v0}, Lcom/google/android/apps/analytics/Dispatcher;->stop()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->cancelPendingDispatches()V

    return-void
.end method

.method public stopSession()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stop()V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    const-string v2, "__##GOOGLEPAGEVIEW##__"

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public trackTransactions()V
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->transactionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/apps/analytics/Transaction;

    new-instance v0, Lcom/google/android/apps/analytics/Event;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    const-string v2, "__##GOOGLETRANSACTION##__"

    const-string v3, ""

    const-string v4, ""

    iget-object v6, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/analytics/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v0, v8}, Lcom/google/android/apps/analytics/Event;->setTransaction(Lcom/google/android/apps/analytics/Transaction;)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v1, v0}, Lcom/google/android/apps/analytics/HitStore;->putEvent(Lcom/google/android/apps/analytics/Event;)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->itemMap:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/android/apps/analytics/Transaction;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/android/apps/analytics/Item;

    new-instance v0, Lcom/google/android/apps/analytics/Event;

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->accountId:Ljava/lang/String;

    const-string v2, "__##GOOGLEITEM##__"

    const-string v3, ""

    const-string v4, ""

    iget-object v6, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->parent:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/analytics/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v0, v8}, Lcom/google/android/apps/analytics/Event;->setItem(Lcom/google/android/apps/analytics/Item;)V

    iget-object v1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->hitStore:Lcom/google/android/apps/analytics/HitStore;

    invoke-interface {v1, v0}, Lcom/google/android/apps/analytics/HitStore;->putEvent(Lcom/google/android/apps/analytics/Event;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->clearTransactions()V

    invoke-direct {p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->resetPowerSaveMode()V

    return-void
.end method
