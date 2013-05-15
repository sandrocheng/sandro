.class public Lcom/avast/android/mobilesecurity/engine/k;
.super Ljava/lang/Object;
.source "MessageScanResultContainer.java"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/Map;

.field public c:Ljava/util/Map;

.field public d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    .line 32
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->c:Ljava/util/Map;

    .line 38
    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/k;->d:Ljava/util/Map;

    return-void
.end method
