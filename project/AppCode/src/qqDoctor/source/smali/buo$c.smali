.class final Lbuo$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field a:Lbtx;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lbtx;->a()Lbtx;

    move-result-object v0

    iput-object v0, p0, Lbuo$c;->a:Lbtx;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lbuo$c;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/common/ISDKClient;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/tmsecure/common/DataEntity;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/ISDKClient;

    invoke-interface {v0, v2}, Lcom/tencent/tmsecure/common/ISDKClient;->sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "support_this_phone"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "pkg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lbuo$c;Ljava/util/List;Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v1, Lcom/tencent/tmsecure/common/DataEntity;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    invoke-virtual {v1}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sms"

    invoke-static {p2}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {p1}, Lbuo$c;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_sender"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "informations"

    invoke-static {p3}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/ISDKClient;

    invoke-interface {v0, v1}, Lcom/tencent/tmsecure/common/ISDKClient;->sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method final a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/common/ISDKClient;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbuo$c;->a:Lbtx;

    invoke-virtual {v0}, Lbtx;->b()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/tencent/tmsecure/common/DataEntity;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Lcom/tencent/tmsecure/common/DataEntity;-><init>(I)V

    invoke-virtual {v4}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "sms"

    invoke-static {p1}, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)[B

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-gez v3, :cond_0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/ISDKClient;

    invoke-interface {v0, v4}, Lcom/tencent/tmsecure/common/ISDKClient;->sendMessage(Lcom/tencent/tmsecure/common/DataEntity;)Lcom/tencent/tmsecure/common/DataEntity;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "blocked"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5}, Lcom/tencent/tmsecure/common/DataEntity;->bundle()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "information"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;->a(Ljava/lang/String;)Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilterResultInformation;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method
