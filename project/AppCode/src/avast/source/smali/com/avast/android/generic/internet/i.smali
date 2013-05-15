.class Lcom/avast/android/generic/internet/i;
.super Ljava/lang/Object;
.source "HttpSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/avast/android/generic/internet/i;->b:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    iput-object p2, p0, Lcom/avast/android/generic/internet/i;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/i;->b:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    iget-object v0, v0, Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-static {v0}, Lcom/avast/android/generic/internet/HttpSender;->a(Lcom/avast/android/generic/internet/HttpSender;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/internet/i;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->a(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 73
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 75
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 80
    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/avast/android/generic/internet/i;->b:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    iget-object v0, v0, Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/HttpSender;->a()V

    .line 91
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/internet/i;->b:Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;

    iget-object v0, v0, Lcom/avast/android/generic/internet/HttpSender$HttpStatusChangedBroadcastReceiver;->a:Lcom/avast/android/generic/internet/HttpSender;

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/HttpSender;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method
