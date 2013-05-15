.class Lcom/google/analytics/tracking/android/af;
.super Ljava/util/TimerTask;
.source "GAServiceProxy.java"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/z;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/z;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/analytics/tracking/android/af;->a:Lcom/google/analytics/tracking/android/z;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/z;Lcom/google/analytics/tracking/android/aa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/af;-><init>(Lcom/google/analytics/tracking/android/z;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->a:Lcom/google/analytics/tracking/android/z;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/z;->b(Lcom/google/analytics/tracking/android/z;)Lcom/google/analytics/tracking/android/ad;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/ad;->a:Lcom/google/analytics/tracking/android/ad;

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/analytics/tracking/android/af;->a:Lcom/google/analytics/tracking/android/z;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/z;->c(Lcom/google/analytics/tracking/android/z;)V

    .line 350
    :cond_0
    return-void
.end method
