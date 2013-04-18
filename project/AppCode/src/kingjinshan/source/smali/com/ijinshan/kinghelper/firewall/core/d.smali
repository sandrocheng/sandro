.class public final Lcom/ijinshan/kinghelper/firewall/core/d;
.super Ljava/lang/Object;
.source "FirewallMMSDecode.java"


# static fields
.field public static final a:I = 0x82

.field public static final b:I = 0x83

.field public static final c:I = 0x88

.field public static final d:I = 0x89

.field public static final e:I = 0x8a

.field public static final f:I = 0x8c

.field public static final g:I = 0x8d

.field public static final h:I = 0x8e

.field public static final i:I = 0x98

.field public static final j:I = 0x80

.field public static final k:I = 0x81


# instance fields
.field l:[B

.field m:I

.field n:I

.field o:I

.field public p:Ljava/util/HashMap;


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->p:Ljava/util/HashMap;

    .line 26
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    .line 27
    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->n:I

    .line 28
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    .line 29
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    array-length v0, v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->o:I

    .line 30
    return-void
.end method

.method private static a(B)I
    .locals 1
    .parameter

    .prologue
    .line 102
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method private a(I)J
    .locals 9
    .parameter

    .prologue
    .line 119
    const-wide/16 v0, 0x0

    .line 120
    const/4 v2, 0x0

    move v6, v2

    move-wide v7, v0

    move-wide v1, v7

    move v0, v6

    :goto_0
    if-ge v0, p1, :cond_0

    .line 122
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v4, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 123
    const/16 v4, 0x8

    shl-long/2addr v1, v4

    .line 124
    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-wide v1
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    .line 111
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method


# virtual methods
.method public final a()Lcom/ijinshan/kinghelper/firewall/core/v;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x82

    .line 34
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/v;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/core/v;-><init>()V

    .line 35
    :goto_0
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->o:I

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 38
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 91
    :sswitch_0
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/core/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/core/v;->b:Ljava/lang/String;

    goto :goto_0

    .line 41
    :sswitch_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 42
    if-ne v1, v8, :cond_0

    .line 44
    iput v8, v0, Lcom/ijinshan/kinghelper/firewall/core/v;->a:I

    goto :goto_0

    :cond_0
    move-object v0, v9

    .line 97
    :cond_1
    :goto_1
    return-object v0

    .line 52
    :sswitch_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x7f

    .line 53
    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/core/v;->f:I

    goto :goto_0

    .line 56
    :sswitch_3
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    .line 57
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 58
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    .line 60
    invoke-direct {p0, v2}, Lcom/ijinshan/kinghelper/firewall/core/d;->a(I)J

    move-result-wide v2

    .line 61
    const/16 v4, 0x81

    if-ne v1, v4, :cond_3

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    add-long v1, v2, v4

    .line 65
    :goto_2
    iput-wide v1, v0, Lcom/ijinshan/kinghelper/firewall/core/v;->g:J

    goto :goto_0

    .line 68
    :sswitch_4
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    .line 69
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 70
    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/core/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/core/v;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    move-object v0, v9

    .line 76
    goto :goto_1

    .line 80
    :sswitch_5
    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    goto/16 :goto_0

    .line 83
    :sswitch_6
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->l:[B

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ijinshan/kinghelper/firewall/core/d;->m:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 84
    invoke-direct {p0, v1}, Lcom/ijinshan/kinghelper/firewall/core/d;->a(I)J

    move-result-wide v1

    .line 85
    iput-wide v1, v0, Lcom/ijinshan/kinghelper/firewall/core/v;->d:J

    goto/16 :goto_0

    .line 88
    :sswitch_7
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/firewall/core/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/core/v;->e:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    move-wide v1, v2

    goto :goto_2

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0x88 -> :sswitch_3
        0x89 -> :sswitch_4
        0x8a -> :sswitch_5
        0x8c -> :sswitch_1
        0x8d -> :sswitch_2
        0x8e -> :sswitch_6
        0x98 -> :sswitch_7
    .end sparse-switch
.end method
