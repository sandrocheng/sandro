.class Lcom/avast/android/generic/app/account/at;
.super Landroid/os/AsyncTask;
.source "DisconnectFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/DisconnectFragment;

.field private b:Lcom/avast/android/generic/ae;

.field private c:Ljava/lang/String;

.field private d:[B


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/app/account/DisconnectFragment;Lcom/avast/android/generic/ae;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/avast/android/generic/app/account/at;->b:Lcom/avast/android/generic/ae;

    .line 74
    invoke-virtual {p2}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/at;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Lcom/avast/android/generic/ae;->y()[B

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/app/account/at;->d:[B

    .line 76
    invoke-static {p1, p0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->a(Lcom/avast/android/generic/app/account/DisconnectFragment;Lcom/avast/android/generic/app/account/at;)V

    .line 77
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 145
    const-string v0, "breadcrumbs"

    const-string v1, "Sending avast! account disconnected broadcast."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.app.account.ACCOUNT_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-static {v0}, Lcom/avast/android/generic/util/ae;->a(Landroid/content/Intent;)V

    .line 148
    iget-object v1, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "com.avast.android.generic.COMM_PERMISSION"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 149
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    :cond_0
    :goto_0
    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    const-string v1, "my_avast_pairing_server_address"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    const/4 v2, 0x0

    .line 94
    :try_start_0
    new-instance v1, Lcom/avast/android/generic/internet/c/c;

    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/avast/android/generic/internet/c/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/generic/app/account/at;->d:[B

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/generic/internet/c/c;->a(Ljava/lang/String;[B)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 98
    :goto_1
    :try_start_2
    const-string v2, "breadcrumbs"

    const-string v3, "Could send disconnect to MyAvast."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto :goto_0

    .line 102
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 103
    :goto_2
    :try_start_3
    const-string v2, "breadcrumbs"

    const-string v3, "Disconnect from MyAvast failed."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    move-object v1, v2

    .line 108
    :goto_3
    :try_start_4
    const-string v2, "breadcrumbs"

    const-string v3, "Disconnect from MyAvast failed."

    invoke-static {v2, v3, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/c;->a()V

    :cond_3
    throw v0

    .line 113
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 107
    :catch_3
    move-exception v0

    goto :goto_3

    .line 102
    :catch_4
    move-exception v0

    goto :goto_2

    .line 96
    :catch_5
    move-exception v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "breadcrumbs"

    const-string v1, "Successfully disconnected from the account."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->b:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->v()V

    .line 124
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    sget v1, Lcom/avast/android/generic/t;->q:I

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/util/s;->a(I)Z

    .line 127
    invoke-direct {p0}, Lcom/avast/android/generic/app/account/at;->a()V

    .line 129
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/z;->P:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->c(Lcom/avast/android/generic/app/account/DisconnectFragment;)V

    .line 137
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/at;->a:Lcom/avast/android/generic/app/account/DisconnectFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/DisconnectFragment;->d(Lcom/avast/android/generic/app/account/DisconnectFragment;)V

    .line 138
    return-void

    .line 135
    :cond_1
    const-string v0, "breadcrumbs"

    const-string v1, "Disconnection from the account failed."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 67
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/at;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/avast/android/generic/app/account/at;->a(Ljava/lang/Boolean;)V

    return-void
.end method
