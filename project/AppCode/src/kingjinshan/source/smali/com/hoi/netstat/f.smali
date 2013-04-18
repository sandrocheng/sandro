.class public final Lcom/hoi/netstat/f;
.super Ljava/lang/Object;
.source "NetStatHelper.java"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x3

    sput v0, Lcom/hoi/netstat/f;->a:I

    .line 15
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/hoi/netstat/f;->a:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 17
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
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hoi/netstat/g;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/hoi/netstat/NetStatJni;

    invoke-direct {v0}, Lcom/hoi/netstat/NetStatJni;-><init>()V

    return-object v0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/hoi/netstat/f;->a:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Lcom/hoi/netstat/g;
    .locals 2

    .prologue
    .line 26
    sget v0, Lcom/hoi/netstat/f;->a:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 27
    new-instance v0, Lcom/hoi/netstat/i;

    invoke-direct {v0}, Lcom/hoi/netstat/i;-><init>()V

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/hoi/netstat/NetStatJni;

    invoke-direct {v0}, Lcom/hoi/netstat/NetStatJni;-><init>()V

    goto :goto_0
.end method
