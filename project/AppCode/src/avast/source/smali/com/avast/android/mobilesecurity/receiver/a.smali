.class Lcom/avast/android/mobilesecurity/receiver/a;
.super Landroid/os/AsyncTask;
.source "AppInstallService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/t;

.field final synthetic b:Lcom/avast/android/mobilesecurity/receiver/AppInstallService;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/receiver/AppInstallService;Lcom/avast/android/mobilesecurity/t;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/receiver/a;->b:Lcom/avast/android/mobilesecurity/receiver/AppInstallService;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/receiver/a;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/avast/android/generic/g/e;->b:Lcom/avast/android/generic/g/e;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/receiver/a;->b:Lcom/avast/android/mobilesecurity/receiver/AppInstallService;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Lcom/avast/android/generic/g/e;Landroid/content/Context;)Z

    .line 68
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/receiver/a;->a:Lcom/avast/android/mobilesecurity/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/t;->e(J)V

    .line 69
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/receiver/a;->b:Lcom/avast/android/mobilesecurity/receiver/AppInstallService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->c(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/receiver/a;->b:Lcom/avast/android/mobilesecurity/receiver/AppInstallService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/service/UpdateService;->e(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 63
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/receiver/a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
