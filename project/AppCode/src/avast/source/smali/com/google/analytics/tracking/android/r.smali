.class Lcom/google/analytics/tracking/android/r;
.super Ljava/lang/Object;
.source "EasyTracker.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/bo;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/p;

.field private b:D

.field private c:Z


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/p;)V
    .locals 2
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/analytics/tracking/android/r;->a:Lcom/google/analytics/tracking/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/r;->b:D

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/r;->b:D

    .line 555
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 505
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/r;->c:Z

    .line 545
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 473
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    return-void
.end method
