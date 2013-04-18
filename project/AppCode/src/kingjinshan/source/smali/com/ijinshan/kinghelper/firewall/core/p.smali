.class public final Lcom/ijinshan/kinghelper/firewall/core/p;
.super Ljava/lang/Object;
.source "FirewallWappushDecode.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "wappush_message"

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/core/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 36
    if-nez p0, :cond_1

    move v0, v2

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    if-ne p1, v2, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 42
    :goto_1
    :try_start_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 43
    aget-byte v1, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 50
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method static a([B)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/p;->b([B)I

    move-result v0

    .line 10
    invoke-static {p0, v0}, Lcom/ijinshan/kinghelper/firewall/core/p;->a([BI)I

    move-result v1

    .line 12
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/p;->c([B)I

    move-result v2

    .line 13
    invoke-static {p0, v2}, Lcom/ijinshan/kinghelper/firewall/core/p;->a([BI)I

    move-result v3

    .line 15
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    :cond_0
    move-object v0, v6

    .line 30
    :goto_0
    return-object v0

    .line 18
    :cond_1
    sub-int/2addr v1, v0

    new-array v1, v1, [B

    .line 19
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {p0, v0, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    sub-int v0, v3, v2

    new-array v0, v0, [B

    .line 22
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {p0, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method private static b([B)I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 57
    if-nez p0, :cond_0

    move v0, v4

    .line 79
    :goto_0
    return v0

    .line 58
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 59
    const/16 v1, 0xc

    aput-byte v1, v0, v2

    .line 60
    const/4 v1, 0x3

    aput-byte v1, v0, v3

    move v1, v2

    .line 67
    :goto_1
    :try_start_0
    aget-byte v2, p0, v1

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    if-ne v2, v3, :cond_1

    .line 69
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    aget-byte v3, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    .line 70
    add-int/lit8 v0, v1, 0x2

    .line 71
    goto :goto_0

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method

.method private static c([B)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    if-nez p0, :cond_0

    move v0, v4

    .line 110
    :goto_0
    return v0

    .line 86
    :cond_0
    new-array v0, v5, [B

    .line 88
    aput-byte v1, v0, v1

    .line 89
    aput-byte v2, v0, v2

    .line 90
    aput-byte v5, v0, v3

    .line 98
    :goto_1
    :try_start_0
    aget-byte v2, p0, v1

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    if-ne v2, v3, :cond_1

    .line 100
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    .line 101
    add-int/lit8 v0, v1, 0x3

    .line 102
    goto :goto_0

    .line 105
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0
.end method
