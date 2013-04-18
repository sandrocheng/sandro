.class public final Lcom/keniu/security/main/bu;
.super Lcom/keniu/security/main/bs;
.source "ModuleAntiVirus.java"


# static fields
.field private static final u:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keniu/security/main/bu;->u:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/keniu/security/main/bs;-><init>()V

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 84
    invoke-static {p0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/keniu/security/main/bu;->f()Lcom/keniu/security/main/bv;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    const-string v0, "\u67e5\u6740\u624b\u673a\u75c5\u6bd2\u3001\u6076\u610f\u8f6f\u4ef6"

    .line 100
    :goto_0
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {v0}, Lcom/keniu/security/a;->T()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/keniu/security/main/bv;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_1
    const-string v0, "\u67e5\u6740\u624b\u673a\u75c5\u6bd2\u3001\u6076\u610f\u8f6f\u4ef6"

    goto :goto_0

    .line 92
    :cond_2
    iget-wide v2, v1, Lcom/keniu/security/main/bv;->b:J

    iget-wide v4, v1, Lcom/keniu/security/main/bv;->c:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 93
    const-string v0, "\u68c0\u6d4b\u5230\u6076\u610f\u8f6f\u4ef6\uff0c\u8bf7\u7acb\u5373\u67e5\u6740"

    sget-object v1, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_3
    iget-wide v2, v1, Lcom/keniu/security/main/bv;->e:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    iget-wide v2, v1, Lcom/keniu/security/main/bv;->a:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_4

    .line 96
    sget-object v0, Lcom/keniu/security/main/bu;->u:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/keniu/security/main/bv;->e:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u6b21\u68c0\u6d4b\u65f6\u95f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_4
    const-string v0, "\u67e5\u6740\u624b\u673a\u75c5\u6bd2\u3001\u6076\u610f\u8f6f\u4ef6"

    goto :goto_0
.end method

.method public static a(JJJJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 48
    sget v1, Lcom/keniu/security/main/bn;->c:I

    const-string v2, "param4"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    sget v1, Lcom/keniu/security/main/bn;->c:I

    const-string v2, "param5"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    sget v1, Lcom/keniu/security/main/bn;->c:I

    const-string v2, "param6"

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    sget v1, Lcom/keniu/security/main/bn;->c:I

    const-string v2, "param7"

    invoke-static {p8, p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    sget v1, Lcom/keniu/security/main/bn;->c:I

    const-string v2, "param8"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static f()Lcom/keniu/security/main/bv;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/keniu/security/main/bv;

    invoke-direct {v0}, Lcom/keniu/security/main/bv;-><init>()V

    .line 105
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v1

    .line 106
    sget v2, Lcom/keniu/security/main/bn;->c:I

    const-string v3, "param4"

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/keniu/security/main/bv;->a:J

    .line 110
    :cond_0
    sget v2, Lcom/keniu/security/main/bn;->c:I

    const-string v3, "param5"

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 112
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/keniu/security/main/bv;->b:J

    .line 113
    :cond_1
    sget v2, Lcom/keniu/security/main/bn;->c:I

    const-string v3, "param6"

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/keniu/security/main/bv;->c:J

    .line 116
    :cond_2
    sget v2, Lcom/keniu/security/main/bn;->c:I

    const-string v3, "param7"

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/keniu/security/main/bv;->d:J

    .line 119
    :cond_3
    sget v2, Lcom/keniu/security/main/bn;->c:I

    const-string v3, "param8"

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 121
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/keniu/security/main/bv;->e:J

    .line 123
    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 24
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const v1, 0x7f0b0816

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "process_left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    const v1, 0x7f0b0817

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_1
    const-string v1, "process_right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    const v1, 0x7f0b0802

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_2
    const-string v1, "description"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    const v1, 0x7f0b0818

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_3
    sget v1, Lcom/keniu/security/main/bn;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/malware/MalwareMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->c()V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x2

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 173
    invoke-virtual {p0}, Lcom/keniu/security/main/bu;->a()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/keniu/security/main/bn;->c:I

    return v0
.end method

.method public final e()V
    .locals 5

    .prologue
    .line 129
    invoke-static {}, Lcom/keniu/security/main/bu;->f()Lcom/keniu/security/main/bv;

    move-result-object v0

    .line 131
    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {v0}, Lcom/keniu/security/main/bv;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/keniu/security/main/bv;->b:J

    iget-wide v3, v0, Lcom/keniu/security/main/bv;->c:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 136
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/bu;->a(I)V

    goto :goto_0
.end method
