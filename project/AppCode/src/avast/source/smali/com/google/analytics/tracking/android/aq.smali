.class Lcom/google/analytics/tracking/android/aq;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/d;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/ap;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/ap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/ap;->a(Lcom/google/analytics/tracking/android/ap;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 70
    return-void
.end method
