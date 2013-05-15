.class Lcom/google/analytics/tracking/android/q;
.super Ljava/lang/Object;
.source "EasyTracker.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/n;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/p;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/p;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/analytics/tracking/android/q;->a:Lcom/google/analytics/tracking/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
