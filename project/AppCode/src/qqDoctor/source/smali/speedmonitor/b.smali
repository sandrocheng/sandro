.class public final Lspeedmonitor/b;
.super Lcom/qq/taf/jce/JceStruct;
.source "SpeedMonitorPackage.java"

# interfaces
.implements Ljava/lang/Cloneable;


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
    const-class v0, Lspeedmonitor/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lspeedmonitor/b;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    .line 21
    iput-object v0, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    .line 23
    iput-object v0, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 87
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :cond_0
    return-object v0

    .line 91
    :catch_0
    move-exception v1

    sget-boolean v1, Lspeedmonitor/b;->e:Z

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
    .line 127
    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    .line 128
    iget-object v1, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    const-string v2, "ipList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 129
    iget-object v1, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    const-string v2, "domainList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    .line 130
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    check-cast p1, Lspeedmonitor/b;

    .line 66
    iget-object v1, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    iget-object v2, p1, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    iget-object v2, p1, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 74
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 107
    sget-object v0, Lspeedmonitor/b;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lspeedmonitor/b;->c:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Lspeedmonitor/IpMonitor;

    invoke-direct {v0}, Lspeedmonitor/IpMonitor;-><init>()V

    .line 111
    sget-object v1, Lspeedmonitor/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    sget-object v0, Lspeedmonitor/b;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    .line 115
    sget-object v0, Lspeedmonitor/b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lspeedmonitor/b;->d:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Lspeedmonitor/a;

    invoke-direct {v0}, Lspeedmonitor/a;-><init>()V

    .line 119
    sget-object v1, Lspeedmonitor/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    sget-object v0, Lspeedmonitor/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    .line 123
    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lspeedmonitor/b;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 99
    iget-object v0, p0, Lspeedmonitor/b;->b:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    .line 100
    return-void
.end method
