.class public Lcom/avast/android/generic/service/DummyService;
.super Landroid/app/Service;
.source "DummyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/avast/android/generic/service/DummyService;->stopSelf()V

    .line 17
    return-void
.end method
