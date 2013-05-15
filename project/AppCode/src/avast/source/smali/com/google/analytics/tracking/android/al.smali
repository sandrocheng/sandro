.class Lcom/google/analytics/tracking/android/al;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/d;

.field final synthetic b:Lcom/google/analytics/tracking/android/ai;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ai;Lcom/google/analytics/tracking/android/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/analytics/tracking/android/al;->b:Lcom/google/analytics/tracking/android/ai;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/al;->a:Lcom/google/analytics/tracking/android/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/analytics/tracking/android/al;->a:Lcom/google/analytics/tracking/android/d;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/al;->b:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/ai;->a(Lcom/google/analytics/tracking/android/ai;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/d;->a(Z)V

    .line 296
    return-void
.end method
