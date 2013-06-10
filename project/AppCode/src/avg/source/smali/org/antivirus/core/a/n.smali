.class public final Lorg/antivirus/core/a/n;
.super Landroid/os/Handler;


# instance fields
.field a:Z

.field private b:Z

.field private c:Z

.field private d:Lorg/antivirus/core/b/a;

.field private e:Lorg/antivirus/core/a/p;

.field private f:Z

.field private g:Ljava/util/ArrayList;

.field private h:Ljava/util/Map;

.field private i:Lorg/antivirus/core/EngineSettings;

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;Lorg/antivirus/core/b/a;Landroid/os/Looper;Ljava/util/List;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->b:Z

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/a/n;->d:Lorg/antivirus/core/b/a;

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->f:Z

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->a:Z

    iput-object p1, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    iput-object p2, p0, Lorg/antivirus/core/a/n;->i:Lorg/antivirus/core/EngineSettings;

    iput-object p3, p0, Lorg/antivirus/core/a/n;->d:Lorg/antivirus/core/b/a;

    iput-boolean p6, p0, Lorg/antivirus/core/a/n;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/a/n;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/a/n;->h:Ljava/util/Map;

    new-instance v0, Lorg/antivirus/core/a/u;

    invoke-direct {v0}, Lorg/antivirus/core/a/u;-><init>()V

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v0, Lorg/antivirus/core/a/a;

    invoke-direct {v0}, Lorg/antivirus/core/a/a;-><init>()V

    new-instance v1, Lorg/antivirus/core/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/b;-><init>(Lorg/antivirus/core/a/a;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v0, Lorg/antivirus/core/a/x;

    invoke-direct {v0}, Lorg/antivirus/core/a/x;-><init>()V

    new-instance v1, Lorg/antivirus/core/a/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/y;-><init>(Lorg/antivirus/core/a/x;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v0, Lorg/antivirus/core/b/j;

    invoke-direct {v0}, Lorg/antivirus/core/b/j;-><init>()V

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v0, Lorg/antivirus/core/a/c;

    invoke-direct {v0}, Lorg/antivirus/core/a/c;-><init>()V

    new-instance v1, Lorg/antivirus/core/a/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/i;-><init>(Lorg/antivirus/core/a/c;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v1, Lorg/antivirus/core/a/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/h;-><init>(Lorg/antivirus/core/a/c;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v1, Lorg/antivirus/core/a/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/l;-><init>(Lorg/antivirus/core/a/c;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v1, Lorg/antivirus/core/a/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/j;-><init>(Lorg/antivirus/core/a/c;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v1, Lorg/antivirus/core/a/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/f;-><init>(Lorg/antivirus/core/a/c;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v1, Lorg/antivirus/core/a/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/g;-><init>(Lorg/antivirus/core/a/c;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v1, Lorg/antivirus/core/a/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lorg/antivirus/core/a/k;-><init>(Lorg/antivirus/core/a/c;)V

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v0, Lorg/antivirus/core/a/r;

    invoke-direct {v0}, Lorg/antivirus/core/a/r;-><init>()V

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v0, Lorg/antivirus/core/a/w;

    invoke-direct {v0}, Lorg/antivirus/core/a/w;-><init>()V

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    new-instance v0, Lorg/antivirus/core/a/z;

    invoke-direct {v0}, Lorg/antivirus/core/a/z;-><init>()V

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/v;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/v;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/antivirus/core/a/p;

    invoke-direct {v0, p0, v2}, Lorg/antivirus/core/a/p;-><init>(Lorg/antivirus/core/a/n;B)V

    iput-object v0, p0, Lorg/antivirus/core/a/n;->e:Lorg/antivirus/core/a/p;

    return-void
.end method

.method public static a(Lorg/antivirus/core/Engine;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    sget-object v2, Lorg/antivirus/core/a/q;->d:Lorg/antivirus/core/a/q;

    invoke-virtual {v2}, Lorg/antivirus/core/a/q;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Lorg/antivirus/core/a/q;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/core/a/n;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lorg/antivirus/core/a/n;->b:Z

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    invoke-virtual {p1}, Lorg/antivirus/core/a/q;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x64

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    invoke-virtual {p1}, Lorg/antivirus/core/a/q;->a()I

    move-result v0

    sget-object v1, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    invoke-virtual {v1}, Lorg/antivirus/core/a/q;->a()I

    move-result v1

    if-lt v0, v1, :cond_3

    const-wide/16 v0, 0x1f4

    iput-boolean v3, p0, Lorg/antivirus/core/a/n;->c:Z

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lorg/antivirus/core/a/n;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    const-wide/32 v0, 0x927c0

    iput-boolean v3, p0, Lorg/antivirus/core/a/n;->b:Z

    goto :goto_0
.end method

.method private a(Lorg/antivirus/core/a/v;)V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/core/a/n;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {p1, v0}, Lorg/antivirus/core/a/v;->a(Lorg/antivirus/core/EngineSettings;)V

    iget-object v0, p0, Lorg/antivirus/core/a/n;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/antivirus/core/a/v;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/o;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "client "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/antivirus/core/a/v;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already exists"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/a/n;->d:Lorg/antivirus/core/b/a;

    invoke-virtual {p1, v0}, Lorg/antivirus/core/a/v;->a(Lorg/antivirus/core/b/a;)V

    new-instance v0, Lorg/antivirus/core/a/o;

    invoke-direct {v0, p0, p1}, Lorg/antivirus/core/a/o;-><init>(Lorg/antivirus/core/a/n;Lorg/antivirus/core/a/v;)V

    iget-object v1, p0, Lorg/antivirus/core/a/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/antivirus/core/a/n;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/antivirus/core/a/v;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/antivirus/core/a/v;->b()Lorg/antivirus/core/a/q;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    invoke-virtual {p1}, Lorg/antivirus/core/a/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/antivirus/core/a/o;->b:Z

    iget-object v0, v0, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/q;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, "9774D56D682E549C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "google_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lorg/antivirus/core/a/n;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/core/a/n;->f:Z

    return v0
.end method

.method private a(Lorg/antivirus/core/a/o;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lorg/antivirus/core/a/o;->a:Lorg/antivirus/core/a/v;

    iget-object v1, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/a/v;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p1, Lorg/antivirus/core/a/o;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lorg/antivirus/core/a/o;->c:I

    :goto_0
    return v0

    :cond_0
    iput-boolean v2, p1, Lorg/antivirus/core/a/o;->b:Z

    iput v2, p1, Lorg/antivirus/core/a/o;->c:I

    goto :goto_0
.end method

.method static synthetic b(Lorg/antivirus/core/a/n;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/core/a/n;->f:Z

    return v0
.end method

.method private b(Lorg/antivirus/core/a/q;)Z
    .locals 12

    const/4 v2, 0x1

    const/4 v9, 0x0

    iget-object v1, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    iget-object v3, p0, Lorg/antivirus/core/a/n;->i:Lorg/antivirus/core/EngineSettings;

    invoke-static {v1, v3}, Lorg/antivirus/core/telephony/TelephonyInfo;->getUniqueId(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v1, "no id"

    invoke-static {v1}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v9

    :cond_1
    :try_start_0
    new-instance v1, Lorg/antivirus/core/a/ab;

    new-instance v4, Ljava/net/URI;

    iget-object v3, p0, Lorg/antivirus/core/a/n;->i:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v3}, Lorg/antivirus/core/EngineSettings;->getAWSserver()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "https://aws.droidsecurity.com/xmlrpc"

    :goto_1
    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/antivirus/core/a/n;->d:Lorg/antivirus/core/b/a;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/antivirus/core/a/n;->d:Lorg/antivirus/core/b/a;

    iget v3, v3, Lorg/antivirus/core/b/a;->o:I

    :goto_2
    invoke-direct {v1, v4, v3, v5}, Lorg/antivirus/core/a/ab;-><init>(Ljava/net/URI;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v3, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    invoke-static {v3}, Lorg/antivirus/core/a/n;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v1, p0, Lorg/antivirus/core/a/n;->f:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->f:Z

    iget-object v1, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    iget-object v2, p0, Lorg/antivirus/core/a/n;->e:Lorg/antivirus/core/a/p;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "https://droidsecurity.appspot.com/secure/xmlrpc"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_3
    move v3, v9

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/antivirus/core/a/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v2

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/antivirus/core/a/o;

    iget-object v11, v7, Lorg/antivirus/core/a/o;->a:Lorg/antivirus/core/a/v;

    iget-boolean v2, v7, Lorg/antivirus/core/a/o;->b:Z

    if-eqz v2, :cond_5

    iget-object v2, v7, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    if-ne v2, p1, :cond_5

    iget-object v2, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    invoke-virtual {v11, v2}, Lorg/antivirus/core/a/v;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v7, Lorg/antivirus/core/a/o;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lorg/antivirus/core/a/o;->c:I

    move v8, v9

    goto :goto_3

    :cond_6
    :try_start_3
    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, v7, Lorg/antivirus/core/a/o;->b:Z

    const/4 v2, 0x0

    iput v2, v7, Lorg/antivirus/core/a/o;->c:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->f()V

    goto :goto_3

    :cond_7
    :try_start_4
    iget-object v2, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Lorg/antivirus/core/a/v;->f:[Ljava/lang/Object;

    iget-object v4, v11, Lorg/antivirus/core/a/v;->g:Ljava/util/HashMap;

    iget-object v6, v11, Lorg/antivirus/core/a/v;->j:Ljava/io/File;

    invoke-virtual/range {v1 .. v6}, Lorg/antivirus/core/a/ab;->a(Ljava/lang/String;[Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/io/File;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "xmlRpcClient returned null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/o;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    if-eqz v2, :cond_f

    move v2, v9

    :goto_4
    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->f()V

    move v8, v2

    goto :goto_3

    :cond_8
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "re-register"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, v7, Lorg/antivirus/core/a/o;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lorg/antivirus/core/a/o;->c:I

    iget-object v2, p0, Lorg/antivirus/core/a/n;->i:Lorg/antivirus/core/EngineSettings;

    const-string v3, ""

    iget-object v4, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lorg/antivirus/core/EngineSettings;->setUniqueId(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/antivirus/core/a/ac; {:try_start_5 .. :try_end_5} :catch_3

    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->f()V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    :try_start_6
    invoke-static {v2}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->f()V

    goto/16 :goto_0

    :cond_9
    :try_start_7
    iget-object v2, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    invoke-virtual {v11, v2, v3}, Lorg/antivirus/core/a/v;->a(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    iput-boolean v2, v7, Lorg/antivirus/core/a/o;->b:Z

    const/4 v2, 0x0

    iput v2, v7, Lorg/antivirus/core/a/o;->c:I

    move v2, v8

    goto :goto_4

    :cond_a
    iget v2, v7, Lorg/antivirus/core/a/o;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lorg/antivirus/core/a/o;->c:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lorg/antivirus/core/a/ac; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move v2, v9

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v3, v2

    :try_start_8
    invoke-direct {p0, v7}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/o;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v9

    :goto_5
    iget-boolean v3, v3, Lorg/antivirus/core/a/ac;->a:Z

    if-eqz v3, :cond_b

    iget v3, v7, Lorg/antivirus/core/a/o;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v7, Lorg/antivirus/core/a/o;->c:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_b
    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->f()V

    move v8, v2

    goto/16 :goto_3

    :catch_4
    move-exception v2

    :try_start_9
    invoke-direct {p0, v7}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/o;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v2

    if-eqz v2, :cond_d

    move v2, v9

    :goto_6
    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->f()V

    move v8, v2

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    invoke-virtual {v11}, Lorg/antivirus/core/a/v;->f()V

    throw v1

    :cond_c
    move v9, v8

    goto/16 :goto_0

    :cond_d
    move v2, v8

    goto :goto_6

    :cond_e
    move v2, v8

    goto :goto_5

    :cond_f
    move v2, v8

    goto/16 :goto_4
.end method


# virtual methods
.method final a()V
    .locals 4

    iget-boolean v0, p0, Lorg/antivirus/core/a/n;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/core/a/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/o;

    iget-boolean v2, v0, Lorg/antivirus/core/a/o;->b:Z

    if-eqz v2, :cond_2

    iget v2, v0, Lorg/antivirus/core/a/o;->c:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    iget-object v0, v0, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/q;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/antivirus/core/a/o;->b:Z

    goto :goto_0
.end method

.method public final a(Lorg/antivirus/core/b/a;)V
    .locals 2

    iput-object p1, p0, Lorg/antivirus/core/a/n;->d:Lorg/antivirus/core/b/a;

    iget-object v0, p0, Lorg/antivirus/core/a/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/o;

    iget-object v0, v0, Lorg/antivirus/core/a/o;->a:Lorg/antivirus/core/a/v;

    invoke-virtual {v0, p1}, Lorg/antivirus/core/a/v;->a(Lorg/antivirus/core/b/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/core/a/n;->a:Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v4, "wc"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    const/16 v4, 0x64

    if-ne v3, v4, :cond_9

    iget-boolean v3, p0, Lorg/antivirus/core/a/n;->a:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->c:Z

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->b:Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->c:Z

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->b:Z

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    invoke-virtual {v3}, Lorg/antivirus/core/a/q;->a()I

    move-result v3

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->c:Z

    :cond_2
    sget-object v3, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    invoke-virtual {v3}, Lorg/antivirus/core/a/q;->a()I

    move-result v3

    if-ne v0, v3, :cond_3

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->b:Z

    :cond_3
    sget-object v3, Lorg/antivirus/core/a/q;->d:Lorg/antivirus/core/a/q;

    invoke-virtual {v3}, Lorg/antivirus/core/a/q;->a()I

    move-result v3

    if-ne v0, v3, :cond_6

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/antivirus/core/a/n;->h:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/o;

    if-eqz v0, :cond_4

    sget-object v1, Lorg/antivirus/core/a/q;->d:Lorg/antivirus/core/a/q;

    iput-object v1, v0, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    sget-object v1, Lorg/antivirus/core/a/q;->d:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v1}, Lorg/antivirus/core/a/n;->b(Lorg/antivirus/core/a/q;)Z

    iget-object v1, v0, Lorg/antivirus/core/a/o;->a:Lorg/antivirus/core/a/v;

    invoke-virtual {v1}, Lorg/antivirus/core/a/v;->b()Lorg/antivirus/core/a/q;

    move-result-object v1

    iput-object v1, v0, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    :goto_2
    invoke-virtual {p0}, Lorg/antivirus/core/a/n;->a()V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid client "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->b(Lorg/antivirus/core/a/q;)Z

    sget-object v0, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->b(Lorg/antivirus/core/a/q;)Z

    goto :goto_2

    :cond_6
    sget-object v1, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    invoke-virtual {v1}, Lorg/antivirus/core/a/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_7

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->c:Z

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->b(Lorg/antivirus/core/a/q;)Z

    goto :goto_2

    :cond_7
    sget-object v1, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    invoke-virtual {v1}, Lorg/antivirus/core/a/q;->a()I

    move-result v1

    if-ne v0, v1, :cond_8

    iput-boolean v2, p0, Lorg/antivirus/core/a/n;->b:Z

    sget-object v0, Lorg/antivirus/core/a/q;->b:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->b(Lorg/antivirus/core/a/q;)Z

    goto :goto_2

    :cond_8
    const-string v0, "invalid action"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/antivirus/core/a/n;->h:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/a/o;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid client "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    :try_start_1
    iget-object v1, v0, Lorg/antivirus/core/a/o;->a:Lorg/antivirus/core/a/v;

    iget-object v2, p0, Lorg/antivirus/core/a/n;->j:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lorg/antivirus/core/a/v;->a(Landroid/content/Context;Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/antivirus/core/a/o;->b:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    iput v1, v0, Lorg/antivirus/core/a/o;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, v0, Lorg/antivirus/core/a/o;->b:Z

    iget-object v0, v0, Lorg/antivirus/core/a/o;->d:Lorg/antivirus/core/a/q;

    invoke-direct {p0, v0}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/a/q;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_c
    move v1, v2

    move v0, v2

    goto/16 :goto_0
.end method
