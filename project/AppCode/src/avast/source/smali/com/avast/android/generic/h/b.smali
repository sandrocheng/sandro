.class public Lcom/avast/android/generic/h/b;
.super Lcom/avast/android/generic/h/l;
.source "AccountDisconnectedTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/avast/android/generic/h/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    const-string v0, "Account disconnected task"

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/t;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/avast/android/generic/h/b;->a()Lcom/avast/android/generic/service/AvastService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/service/AvastService;->g()V

    .line 17
    return-void
.end method
