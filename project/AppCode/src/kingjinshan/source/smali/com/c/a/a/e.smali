.class final Lcom/c/a/a/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Landroid/os/Handler;

.field final synthetic b:Lcom/c/a/a/d;


# direct methods
.method public constructor <init>(Lcom/c/a/a/d;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    .line 135
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    .line 136
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 138
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 139
    sget-boolean v0, Lcom/c/a/a/n;->b:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/c/a/a/n;->e:Ljava/lang/String;

    .line 143
    sget-object v1, Lcom/c/a/a/n;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/c/a/a/n;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/c/a/a/n;->d:Ljava/lang/String;

    .line 144
    sget-object v1, Lcom/c/a/a/n;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/c/a/a/j;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/c/a/a/n;->c:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/c/a/a/n;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/c/a/a/n;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/c/a/a/n;->b:Z

    .line 149
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/CellLocation;->requestLocationUpdate()V

    .line 152
    iget-object v1, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    iget-object v0, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v1, v0}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 163
    iget-object v0, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->c(Lcom/c/a/a/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/c/a/a/f;

    invoke-direct {v1, p0}, Lcom/c/a/a/f;-><init>(Lcom/c/a/a/e;)V

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    iget-object v0, p0, Lcom/c/a/a/e;->b:Lcom/c/a/a/d;

    invoke-static {v0}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_1
    new-instance v0, Lcom/c/a/a/g;

    invoke-direct {v0, p0}, Lcom/c/a/a/g;-><init>(Lcom/c/a/a/e;)V

    iput-object v0, p0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    .line 243
    iget-object v0, p0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    iget-object v0, p0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v0, p0, Lcom/c/a/a/e;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 249
    return-void

    .line 193
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 201
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
