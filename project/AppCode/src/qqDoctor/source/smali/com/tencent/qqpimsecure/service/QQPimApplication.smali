.class public Lcom/tencent/qqpimsecure/service/QQPimApplication;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/service/QQPimApplication$a;
    }
.end annotation


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    const v1, 0x7f0b0682

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    const v2, 0x7f0b0675

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 6

    const-wide/32 v3, 0xea60

    sget-object v0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    const v1, 0x7f0b067f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    div-long v1, p0, v3

    long-to-int v1, v1

    rem-long v2, p0, v3

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    if-lez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    const v3, 0x7f0b0680

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    const v2, 0x7f0b0681

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    sput-object v0, Lde;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/service/QQPimApplication$a;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/QQPimApplication$a;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->b:Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;

    const-class v0, Lcom/tencent/qqpimsecure/service/SecureService;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->b:Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;

    new-instance v2, Lyn;

    invoke-direct {v2, p0}, Lyn;-><init>(Lcom/tencent/qqpimsecure/service/QQPimApplication;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/tmsecure/common/TMSApplication;->init(Landroid/content/Context;Ljava/lang/Class;Lcom/tencent/tmsecure/common/ITMSApplicaionConfig;Ljava/lang/Runnable;)V

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->d()V

    invoke-static {}, Ldz;->a()V

    sget-object v0, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a:Landroid/content/Context;

    invoke-static {v0}, La;->f(Landroid/content/Context;)V

    new-instance v0, Lyp;

    invoke-direct {v0}, Lyp;-><init>()V

    invoke-virtual {v0}, Lyp;->start()V

    goto :goto_0
.end method
