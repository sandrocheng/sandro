.class Lcom/google/analytics/tracking/android/am;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/m;

.field final synthetic b:Lcom/google/analytics/tracking/android/ai;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ai;Lcom/google/analytics/tracking/android/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/analytics/tracking/android/am;->b:Lcom/google/analytics/tracking/android/ai;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/am;->a:Lcom/google/analytics/tracking/android/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/analytics/tracking/android/am;->a:Lcom/google/analytics/tracking/android/m;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/am;->b:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ai;->b(Lcom/google/analytics/tracking/android/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/m;->a(Ljava/lang/String;)V

    .line 308
    return-void
.end method
