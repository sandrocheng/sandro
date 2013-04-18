.class public final Lcom/keniu/security/commumgr/a/t;
.super Ljava/lang/Object;
.source "RpRecord.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final i:I = 0x2

.field private static final j:I = 0x1

.field private static final k:Z


# instance fields
.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v2, p0, Lcom/keniu/security/commumgr/a/t;->l:I

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->n:Ljava/lang/String;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/a/t;->o:J

    .line 53
    iput-boolean v2, p0, Lcom/keniu/security/commumgr/a/t;->p:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->q:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/keniu/security/commumgr/a/t;->l:I

    .line 46
    return-void
.end method

.method private static final a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PhoneNum"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Sms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SmsSp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SysCallLog"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SysSmsLog"

    aput-object v2, v0, v1

    .line 33
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 34
    aget-object v0, v0, p0

    .line 35
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "???"

    goto :goto_0
.end method

.method private a(Lcom/jxphone/mosecurity/c/n;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 99
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/n;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 100
    :goto_0
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/n;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 102
    :goto_1
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/n;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u2507"

    const-string v4, "|"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2507"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2507"

    const-string v3, "|"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->n:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/n;->e()Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/a/t;->o:J

    .line 108
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/n;->a()I

    move-result v0

    if-ne v0, v5, :cond_2

    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lcom/keniu/security/commumgr/a/t;->p:Z

    .line 109
    return-void

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/n;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/n;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 108
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->q:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/keniu/security/commumgr/a/t;->n:Ljava/lang/String;

    .line 74
    iput-wide p3, p0, Lcom/keniu/security/commumgr/a/t;->o:J

    .line 75
    iput-boolean p5, p0, Lcom/keniu/security/commumgr/a/t;->p:Z

    .line 76
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "param"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/16 v7, 0xb

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 118
    invoke-static {p1}, Lcom/keniu/security/util/av;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {p1}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/keniu/security/commumgr/e;

    invoke-direct {v2, p1}, Lcom/keniu/security/commumgr/e;-><init>(Landroid/content/Context;)V

    .line 133
    iget-object v3, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    .line 134
    const-string v4, "+86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/keniu/security/commumgr/a/t;->n:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v7}, Lcom/hoi/a/a;->c([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 137
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/keniu/security/commumgr/a/t;->q:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v7}, Lcom/hoi/a/a;->c([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&num="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "&ctent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/keniu/security/commumgr/e;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&note="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/keniu/security/commumgr/a/t;->l:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/keniu/security/commumgr/a/t;->o:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&drect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/keniu/security/commumgr/a/t;->p:Z

    if-eqz v3, :cond_2

    const-string v3, "i"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&dver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&imsi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keniu/security/util/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s=0500000001|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "idx=%d&verx=%d&check=%s&%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/keniu/security/f;->a:Lcom/keniu/security/f;

    iget v6, v6, Lcom/keniu/security/f;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v3, "|"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v3, "%20"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    const-string v2, ""

    goto/16 :goto_0

    .line 143
    :cond_2
    const-string v3, "o"

    goto/16 :goto_1
.end method

.method public final a(Lcom/jxphone/mosecurity/c/j;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/keniu/security/commumgr/a/t;->p:Z

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->n:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/j;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/a/t;->o:J

    .line 83
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/l;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->n:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/a/t;->o:J

    .line 95
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/keniu/security/commumgr/a/t;->p:Z

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/t;->m:Ljava/lang/String;

    .line 87
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/a/t;->q:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/commumgr/a/t;->o:J

    .line 89
    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/keniu/security/commumgr/a/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    move v1, v4

    .line 65
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 66
    iget v2, p0, Lcom/keniu/security/commumgr/a/t;->l:I

    aget v3, v0, v1

    if-ne v2, v3, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 68
    :goto_1
    return v0

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 68
    goto :goto_1

    .line 64
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method
