.class Lcom/google/analytics/tracking/android/aj;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:J

.field final synthetic c:Lcom/google/analytics/tracking/android/ai;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    iput-wide p3, p0, Lcom/google/analytics/tracking/android/aj;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ai;->a(Lcom/google/analytics/tracking/android/ai;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ai;->a(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ai;->b(Lcom/google/analytics/tracking/android/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ai;->c(Lcom/google/analytics/tracking/android/ai;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    const-string v1, "campaign"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v2}, Lcom/google/analytics/tracking/android/ai;->c(Lcom/google/analytics/tracking/android/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ai;->a(Lcom/google/analytics/tracking/android/ai;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ai;->b(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)V

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ai;->c(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)V

    .line 122
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ai;->d(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)V

    .line 123
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ai;->d(Lcom/google/analytics/tracking/android/ai;)Lcom/google/analytics/tracking/android/az;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/aw;->a(Lcom/google/analytics/tracking/android/az;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 124
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ai;->f(Lcom/google/analytics/tracking/android/ai;)Lcom/google/analytics/tracking/android/bl;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/aj;->b:J

    iget-object v4, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    iget-object v5, p0, Lcom/google/analytics/tracking/android/aj;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/google/analytics/tracking/android/ai;->e(Lcom/google/analytics/tracking/android/ai;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/analytics/tracking/android/aj;->c:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v5}, Lcom/google/analytics/tracking/android/ai;->e(Lcom/google/analytics/tracking/android/ai;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/bl;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
