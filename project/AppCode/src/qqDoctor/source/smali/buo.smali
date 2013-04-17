.class public final Lbuo;
.super Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbuo$a;,
        Lbuo$b;,
        Lbuo$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataIntercepterBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbuo;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getDataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbuo$b;

    iget-object v1, p0, Lbuo;->a:Landroid/content/Context;

    invoke-direct {v0}, Lbuo$b;-><init>()V

    return-object v0
.end method

.method public final getDataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;
    .locals 1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;-><init>()V

    return-object v0
.end method

.method public final getDataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbuo$a;

    invoke-direct {v0}, Lbuo$a;-><init>()V

    return-object v0
.end method

.method protected final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "incoming_sms"

    return-object v0
.end method
