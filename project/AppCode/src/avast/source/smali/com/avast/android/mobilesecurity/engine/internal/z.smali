.class final Lcom/avast/android/mobilesecurity/engine/internal/z;
.super Ljava/lang/Object;
.source "VpsUpdater.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/engine/r;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/engine/r;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/engine/r;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/engine/internal/z;->a:Lcom/avast/android/mobilesecurity/engine/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 542
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/z;->a:Lcom/avast/android/mobilesecurity/engine/r;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p3

    .line 546
    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    add-long/2addr v2, p1

    .line 547
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/engine/internal/z;->a:Lcom/avast/android/mobilesecurity/engine/r;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/avast/android/mobilesecurity/engine/r;->a(JJ)V

    goto :goto_0
.end method
