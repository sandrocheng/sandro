.class Lcom/google/analytics/tracking/android/bi;
.super Ljava/lang/Object;
.source "PersistentAnalyticsStore.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ax;


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/bh;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/analytics/tracking/android/bi;->a:Lcom/google/analytics/tracking/android/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-object v0
.end method
