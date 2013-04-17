.class public final Lstrategy/SpeedMonitorSource;
.super Lcom/qq/taf/jce/JceStruct;
.source "ProGuard"


# static fields
.field private static c:Ljava/util/ArrayList;

.field private static d:Ljava/util/ArrayList;

.field private static synthetic e:Z


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lstrategy/SpeedMonitorSource;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lstrategy/SpeedMonitorSource;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 16
    iput-object v0, p0, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    .line 18
    iput-object v0, p0, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    .line 42
    iget-object v0, p0, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p0, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    .line 44
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 65
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :cond_0
    return-object v0

    .line 69
    :catch_0
    move-exception v1

    sget-boolean v1, Lstrategy/SpeedMonitorSource;->e:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 106
    iget-object v1, p0, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    const-string v2, "ipList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 107
    iget-object v1, p0, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    const-string v2, "domainList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 108
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 54
    check-cast p1, Lstrategy/SpeedMonitorSource;

    .line 56
    iget-object v0, p0, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 55
    goto :goto_0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 85
    sget-object v0, Lstrategy/SpeedMonitorSource;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lstrategy/SpeedMonitorSource;->c:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Lstrategy/IpSource;

    invoke-direct {v0}, Lstrategy/IpSource;-><init>()V

    .line 89
    sget-object v1, Lstrategy/SpeedMonitorSource;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_0
    sget-object v0, Lstrategy/SpeedMonitorSource;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    .line 93
    sget-object v0, Lstrategy/SpeedMonitorSource;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lstrategy/SpeedMonitorSource;->d:Ljava/util/ArrayList;

    .line 96
    const-string v0, ""

    .line 97
    sget-object v1, Lstrategy/SpeedMonitorSource;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_1
    sget-object v0, Lstrategy/SpeedMonitorSource;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lstrategy/SpeedMonitorSource;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 77
    iget-object v0, p0, Lstrategy/SpeedMonitorSource;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 78
    return-void
.end method
