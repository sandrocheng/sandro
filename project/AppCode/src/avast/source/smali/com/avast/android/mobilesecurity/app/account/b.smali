.class Lcom/avast/android/mobilesecurity/app/account/b;
.super Landroid/os/AsyncTask;
.source "AccountReportService.java"


# instance fields
.field private a:Lcom/avast/android/mobilesecurity/t;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/account/b;->a:Lcom/avast/android/mobilesecurity/t;

    .line 57
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/account/b;->b:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "AvastAccountReportService"

    const-string v1, "Report successfully sent."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 114
    const-string v0, "AvastAccountReportService"

    const-string v1, "Report sending failed."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/account/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/account/ServerAddressHelper;->getStatusServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    const-string v3, "my_avast_status_server_address"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    :try_start_0
    new-instance v1, Lcom/avast/android/generic/internet/c/c;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/account/b;->b:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Lcom/avast/android/generic/internet/c/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    new-instance v2, Lcom/avast/android/mobilesecurity/app/account/c;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/account/b;->a:Lcom/avast/android/mobilesecurity/t;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/account/b;->b:Landroid/content/Context;

    invoke-direct {v2, v1, v3, v4}, Lcom/avast/android/mobilesecurity/app/account/c;-><init>(Lcom/avast/android/generic/internet/c/c;Lcom/avast/android/mobilesecurity/t;Landroid/content/Context;)V

    .line 79
    const-string v3, "AvastAccountReportService"

    const-string v4, "Sending the report."

    invoke-static {v3, v4}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_1
    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/account/c;->a()Z
    :try_end_1
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 89
    :goto_0
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/c;->a()V

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string v2, "AvastAccountReportService"

    const-string v3, "Status report sending failed."

    invoke-static {v2, v3, v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 84
    :catch_1
    move-exception v2

    .line 85
    const-string v3, "AvastAccountReportService"

    const-string v4, "Could not send Avast account status information."

    invoke-static {v3, v4, v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 86
    :catch_2
    move-exception v2

    .line 87
    const-string v3, "AvastAccountReportService"

    const-string v4, "Could not send Avast account status information."

    invoke-static {v3, v4, v2}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/b;->a()V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/account/b;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/account/b;->a([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/account/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
