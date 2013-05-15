.class Lcom/google/analytics/tracking/android/x;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/k;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/w;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/w;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/analytics/tracking/android/x;->a:Lcom/google/analytics/tracking/android/w;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/w;->a(Z)V

    .line 46
    return-void
.end method
