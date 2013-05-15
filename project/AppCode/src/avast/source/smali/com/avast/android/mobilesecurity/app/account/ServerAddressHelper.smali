.class public Lcom/avast/android/mobilesecurity/app/account/ServerAddressHelper;
.super Ljava/lang/Object;
.source "ServerAddressHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/y;->a([B)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/avast/android/mobilesecurity/engine/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "//"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/avast/android/mobilesecurity/engine/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method

.method public static getPairingServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->f:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/q;)[B

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/account/ServerAddressHelper;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 26
    return-object v0
.end method

.method public static getStatusServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->e:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/q;)[B

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/account/ServerAddressHelper;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method

.method public static getUnpairingServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/q;->h:Lcom/avast/android/mobilesecurity/engine/q;

    invoke-static {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/q;)[B

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/account/ServerAddressHelper;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 40
    return-object v0
.end method
