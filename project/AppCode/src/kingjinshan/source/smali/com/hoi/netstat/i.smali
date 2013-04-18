.class public final Lcom/hoi/netstat/i;
.super Ljava/lang/Object;
.source "NetStatJniLv8.java"

# interfaces
.implements Lcom/hoi/netstat/g;


# static fields
.field private static a:Lcom/hoi/netstat/NetStatJni;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lcom/hoi/netstat/NetStatJni;

    invoke-direct {v0}, Lcom/hoi/netstat/NetStatJni;-><init>()V

    sput-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    .line 13
    const/4 v0, 0x3

    sput v0, Lcom/hoi/netstat/i;->b:I

    .line 16
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hoi/netstat/i;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    const-string v0, "NetStatJni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unavailable SDK Level value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 58
    sget v0, Lcom/hoi/netstat/i;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 59
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    .line 60
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 63
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0}, Lcom/hoi/netstat/NetStatJni;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(I)J
    .locals 4
    .parameter

    .prologue
    .line 80
    sget v0, Lcom/hoi/netstat/i;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 81
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 82
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0, p1}, Lcom/hoi/netstat/NetStatJni;->a(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 36
    sget v0, Lcom/hoi/netstat/i;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    .line 38
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 41
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0, p1}, Lcom/hoi/netstat/NetStatJni;->a(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 113
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0, p1}, Lcom/hoi/netstat/NetStatJni;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 47
    sget v0, Lcom/hoi/netstat/i;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    .line 49
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 52
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0}, Lcom/hoi/netstat/NetStatJni;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(I)J
    .locals 4
    .parameter

    .prologue
    .line 69
    sget v0, Lcom/hoi/netstat/i;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 70
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    .line 71
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 74
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0, p1}, Lcom/hoi/netstat/NetStatJni;->b(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)J
    .locals 4
    .parameter

    .prologue
    .line 25
    sget v0, Lcom/hoi/netstat/i;->b:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 26
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 27
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 30
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0, p1}, Lcom/hoi/netstat/NetStatJni;->b(Landroid/content/Context;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0, p1}, Lcom/hoi/netstat/NetStatJni;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0}, Lcom/hoi/netstat/NetStatJni;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/hoi/netstat/i;->a:Lcom/hoi/netstat/NetStatJni;

    invoke-virtual {v0}, Lcom/hoi/netstat/NetStatJni;->f()J

    move-result-wide v0

    return-wide v0
.end method
