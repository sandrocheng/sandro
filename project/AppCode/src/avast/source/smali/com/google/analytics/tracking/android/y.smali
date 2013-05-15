.class Lcom/google/analytics/tracking/android/y;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/w;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/w;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v4, v0, :cond_0

    invoke-static {}, Lcom/google/analytics/tracking/android/w;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/analytics/tracking/android/an;->a(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/w;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/w;->c()V

    .line 83
    invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/an;->a(Z)V

    .line 84
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/w;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/w;->a(Lcom/google/analytics/tracking/android/w;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/w;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/w;->b(Lcom/google/analytics/tracking/android/w;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/w;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/w;->c(Lcom/google/analytics/tracking/android/w;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/w;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/w;->c(Lcom/google/analytics/tracking/android/w;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/google/analytics/tracking/android/w;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/y;->a:Lcom/google/analytics/tracking/android/w;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/w;->a(Lcom/google/analytics/tracking/android/w;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 90
    :cond_0
    return v4
.end method
