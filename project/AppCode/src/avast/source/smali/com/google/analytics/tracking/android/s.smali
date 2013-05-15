.class Lcom/google/analytics/tracking/android/s;
.super Ljava/util/TimerTask;
.source "EasyTracker.java"


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/p;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/p;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/google/analytics/tracking/android/s;->a:Lcom/google/analytics/tracking/android/p;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/p;Lcom/google/analytics/tracking/android/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 658
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/s;-><init>(Lcom/google/analytics/tracking/android/p;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->a:Lcom/google/analytics/tracking/android/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/p;->a(Lcom/google/analytics/tracking/android/p;Z)Z

    .line 666
    return-void
.end method
