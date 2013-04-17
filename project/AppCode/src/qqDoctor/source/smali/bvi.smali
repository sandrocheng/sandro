.class public final Lbvi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/DataIntercepter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbvi$a;,
        Lbvi$b;,
        Lbvi$c;,
        Lbvi$d;,
        Lbvi$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tencent/tmsecure/module/aresengine/DataIntercepter",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

.field static final b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;


# instance fields
.field private c:Lbvi$a;

.field private d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/tencent/tmsecure/module/aresengine/DataHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterConfig;-><init>()V

    sput-object v0, Lbvi;->a:Lcom/tencent/tmsecure/module/aresengine/FilterConfig;

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/FilterResult;-><init>()V

    sput-object v0, Lbvi;->b:Lcom/tencent/tmsecure/module/aresengine/FilterResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbvi$a;

    invoke-direct {v0}, Lbvi$a;-><init>()V

    iput-object v0, p0, Lbvi;->c:Lbvi$a;

    new-instance v0, Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    invoke-direct {v0}, Lcom/tencent/tmsecure/module/aresengine/DataHandler;-><init>()V

    iput-object v0, p0, Lbvi;->e:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    const-string v0, "incoming_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lbvi$b;

    invoke-direct {v0}, Lbvi$b;-><init>()V

    iput-object v0, p0, Lbvi;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "incoming_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lbvi$c;

    invoke-direct {v0}, Lbvi$c;-><init>()V

    iput-object v0, p0, Lbvi;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    goto :goto_0

    :cond_2
    const-string v0, "outing_sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lbvi$d;

    invoke-direct {v0}, Lbvi$d;-><init>()V

    iput-object v0, p0, Lbvi;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    goto :goto_0

    :cond_3
    const-string v0, "system_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbvi$e;

    invoke-direct {v0}, Lbvi$e;-><init>()V

    iput-object v0, p0, Lbvi;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    goto :goto_0
.end method


# virtual methods
.method public final dataFilter()Lcom/tencent/tmsecure/module/aresengine/DataFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbvi;->d:Lcom/tencent/tmsecure/module/aresengine/DataFilter;

    return-object v0
.end method

.method public final dataHandler()Lcom/tencent/tmsecure/module/aresengine/DataHandler;
    .locals 1

    iget-object v0, p0, Lbvi;->e:Lcom/tencent/tmsecure/module/aresengine/DataHandler;

    return-object v0
.end method

.method public final dataMonitor()Lcom/tencent/tmsecure/module/aresengine/DataMonitor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lbvi;->c:Lbvi$a;

    return-object v0
.end method
