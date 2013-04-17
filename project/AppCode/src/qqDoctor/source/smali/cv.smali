.class public final Lcv;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:B

.field public static c:Z

.field private static d:I

.field private static e:I

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    sput v0, Lcv;->d:I

    const/4 v0, 0x0

    sput-object v0, Lcv;->a:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcv;->e:I

    sput-byte v1, Lcv;->b:B

    sput-boolean v1, Lcv;->c:Z

    const-string v0, "cmwap"

    sput-object v0, Lcv;->f:Ljava/lang/String;

    const-string v0, "cmnet"

    sput-object v0, Lcv;->g:Ljava/lang/String;

    const-string v0, "3gwap"

    sput-object v0, Lcv;->h:Ljava/lang/String;

    const-string v0, "3gnet"

    sput-object v0, Lcv;->i:Ljava/lang/String;

    const-string v0, "uniwap"

    sput-object v0, Lcv;->j:Ljava/lang/String;

    const-string v0, "uninet"

    sput-object v0, Lcv;->k:Ljava/lang/String;

    const-string v0, "ctwap"

    sput-object v0, Lcv;->l:Ljava/lang/String;

    const-string v0, "ctnet"

    sput-object v0, Lcv;->m:Ljava/lang/String;

    const-string v0, "#777"

    sput-object v0, Lcv;->n:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lde;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const-string v0, "Apn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "init(), networkInfo : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcv;->d:I

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const-string v0, "Apn"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init(), typeName : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v4, 0x0

    sput v4, Lcv;->d:I

    :cond_0
    :goto_0
    const-string v4, "Apn"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init(), extraInfo : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v2, :cond_3

    const/4 v0, 0x4

    sput v0, Lcv;->d:I

    const/4 v0, 0x0

    sput-boolean v0, Lcv;->c:Z

    :cond_1
    :goto_1
    const-string v0, "Apn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init(), M_APN_TYPE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcv;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", M_USE_PROXY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcv;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", M_APN_PROXY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", M_APN_PORT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcv;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_9

    sget-object v3, Lcv;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcv;->j:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcv;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcv;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    const/4 v0, 0x2

    sput v0, Lcv;->d:I

    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcv;->c:Z

    sget v0, Lcv;->d:I

    if-eq v0, v7, :cond_a

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcv;->a:Ljava/lang/String;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    sput v0, Lcv;->e:I

    sget-object v0, Lcv;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcv;->a:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcv;->a:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, ""

    sget-object v1, Lcv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    sput-boolean v0, Lcv;->c:Z

    const/4 v0, 0x2

    sput v0, Lcv;->d:I

    const-string v0, "10.0.0.200"

    sget-object v1, Lcv;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    sput-byte v0, Lcv;->b:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Apn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init(), "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldk;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    :try_start_1
    sget-object v3, Lcv;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcv;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcv;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcv;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v0, 0x1

    sput v0, Lcv;->d:I

    goto/16 :goto_3

    :cond_8
    sget-object v3, Lcv;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_9
    const/4 v0, 0x0

    sput v0, Lcv;->d:I

    goto/16 :goto_3

    :cond_a
    move v0, v2

    goto/16 :goto_4

    :cond_b
    const/4 v0, 0x0

    sput-byte v0, Lcv;->b:B

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    sput-boolean v0, Lcv;->c:Z

    const/4 v0, 0x1

    sput v0, Lcv;->d:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
