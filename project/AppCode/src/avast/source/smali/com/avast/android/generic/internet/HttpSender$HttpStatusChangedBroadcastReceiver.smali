.class public Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HttpSender.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/internet/HttpSender;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/internet/HttpSender;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/avast/android/generic/internet/i;

    invoke-direct {v1, p0, p2}, Lcom/avast/android/generic/internet/i;-><init>(Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;Landroid/content/Intent;)V

    const-string v2, "httpSenderOnlineChecker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method
