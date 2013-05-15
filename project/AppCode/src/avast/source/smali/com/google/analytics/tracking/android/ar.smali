.class Lcom/google/analytics/tracking/android/ar;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/m;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/ap;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ar;->a:Lcom/google/analytics/tracking/android/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ar;->a:Lcom/google/analytics/tracking/android/ap;

    invoke-static {v0, p1}, Lcom/google/analytics/tracking/android/ap;->a(Lcom/google/analytics/tracking/android/ap;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    return-void
.end method
