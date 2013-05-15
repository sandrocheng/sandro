.class Lcom/google/analytics/tracking/android/ak;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/ai;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ak;->a:Lcom/google/analytics/tracking/android/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ak;->a:Lcom/google/analytics/tracking/android/ai;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/ai;->f(Lcom/google/analytics/tracking/android/ai;)Lcom/google/analytics/tracking/android/bl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/bl;->c()V

    .line 255
    return-void
.end method
