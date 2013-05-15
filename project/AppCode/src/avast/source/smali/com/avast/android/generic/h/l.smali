.class public abstract Lcom/avast/android/generic/h/l;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field private a:Lcom/avast/android/generic/service/AvastService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/avast/android/generic/service/AvastService;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/avast/android/generic/h/l;->a:Lcom/avast/android/generic/service/AvastService;

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/avast/android/generic/h/n;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    :try_start_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/avast/android/generic/h/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/generic/h/m;-><init>(Lcom/avast/android/generic/h/l;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/avast/android/generic/h/n;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 45
    invoke-static {}, La/a/a/a/a/a;->a()La/a/a/a/a/a;

    move-result-object v1

    const-string v2, "Exception in executing event"

    invoke-virtual {v1, v2, v0}, La/a/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    invoke-interface {p4}, Lcom/avast/android/generic/h/n;->a()V

    goto :goto_0
.end method

.method public a(Lcom/avast/android/generic/service/AvastService;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/avast/android/generic/h/l;->a:Lcom/avast/android/generic/service/AvastService;

    .line 54
    return-void
.end method
