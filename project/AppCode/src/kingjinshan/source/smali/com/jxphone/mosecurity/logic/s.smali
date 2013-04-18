.class final Lcom/jxphone/mosecurity/logic/s;
.super Ljava/lang/Object;
.source "SmsLogicImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/j;


# static fields
.field private static final a:Ljava/util/LinkedHashSet;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Z

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/s;->a:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jxphone/mosecurity/logic/s;-><init>(Landroid/content/Context;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    .line 52
    iput-boolean p2, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/jxphone/mosecurity/logic/s;->d:I

    .line 54
    return-void
.end method

.method private static a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 327
    sget-object v0, Lcom/jxphone/mosecurity/logic/s;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/e/c;

    .line 328
    invoke-interface {v0, p0, p1}, Lcom/keniu/security/e/c;->a(Ljava/lang/Object;Lcom/keniu/security/e/d;)V

    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->a(Ljava/lang/String;)I

    move-result v0

    .line 205
    if-lez v0, :cond_0

    .line 206
    new-instance v1, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 207
    invoke-virtual {v1, p1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 208
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 210
    :cond_0
    return v0
.end method

.method public final a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/keniu/security/b/l;->c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    .line 194
    if-lez v0, :cond_0

    .line 195
    new-instance v1, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 196
    invoke-virtual {v1, p1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 197
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 199
    :cond_0
    return v0
.end method

.method public final varargs a([Lcom/jxphone/mosecurity/c/c;)I
    .locals 3
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->b([Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    .line 162
    if-lez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 164
    :cond_0
    return v0
.end method

.method public final a(I)Lcom/jxphone/mosecurity/c/l;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->a(I)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/keniu/security/e/c;)V
    .locals 1
    .parameter

    .prologue
    .line 323
    sget-object v0, Lcom/jxphone/mosecurity/logic/s;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v0, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 170
    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/l;->a(J)V

    .line 172
    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 173
    invoke-virtual {v0, p2}, Lcom/jxphone/mosecurity/c/l;->b(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/l;->c(I)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/logic/s;->b(Lcom/jxphone/mosecurity/c/l;)I

    move-result v2

    .line 177
    invoke-static {}, Lcom/jxphone/mosecurity/d/u;->a()Lcom/jxphone/mosecurity/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jxphone/mosecurity/d/u;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 178
    return-void
.end method

.method public final varargs a()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public final a(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 243
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    .line 244
    const/4 v1, 0x0

    .line 245
    packed-switch p3, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->a(I)Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    sget-object v2, Lcom/keniu/security/e/d;->c:Lcom/keniu/security/e/d;

    invoke-static {v0, v2}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 259
    :cond_1
    return v1

    .line 247
    :pswitch_0
    if-ne p2, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, p1, v1}, Lcom/keniu/security/b/l;->a(II)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 250
    :pswitch_1
    if-ne p2, v2, :cond_0

    .line 251
    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/keniu/security/b/l;->a(II)Z

    move-result v1

    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILcom/jxphone/mosecurity/c/c;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 339
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    .line 340
    invoke-interface {v0, p1, p2}, Lcom/keniu/security/b/l;->a(ILcom/jxphone/mosecurity/c/c;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v0

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v0, v5

    .line 106
    :cond_1
    :goto_0
    return v0

    .line 63
    :cond_2
    sget-object v1, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    move v0, v5

    .line 65
    goto :goto_0

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    .line 70
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 71
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    .line 74
    :cond_4
    if-nez v2, :cond_5

    .line 76
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->f()I

    move v0, v5

    .line 80
    goto :goto_0

    .line 83
    :cond_5
    sget-object v3, Lcom/jxphone/mosecurity/logic/t;->a:[I

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 92
    :cond_6
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/jxphone/mosecurity/c/l;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 93
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->h()J

    move-result-wide v1

    sget-wide v3, Lcom/keniu/security/e;->a:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 94
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->i()I

    move-result v3

    invoke-interface {v0, v3, v1, v2}, Lcom/keniu/security/b/u;->a(IJ)Z

    move-result v0

    .line 96
    iget v1, p0, Lcom/jxphone/mosecurity/logic/s;->d:I

    if-eqz v1, :cond_7

    .line 97
    iget v1, p0, Lcom/jxphone/mosecurity/logic/s;->d:I

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/jxphone/mosecurity/logic/s;->d:I

    .line 98
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v1

    if-ne v1, v6, :cond_7

    move v0, v5

    .line 99
    goto :goto_0

    .line 85
    :pswitch_0
    invoke-virtual {v1}, Lcom/keniu/security/a;->af()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    move v0, v5

    .line 86
    goto :goto_0

    :pswitch_1
    move v0, v5

    .line 90
    goto :goto_0

    .line 102
    :cond_7
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    iget-object v3, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v3, v4}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/keniu/security/b/l;->a(ILcom/jxphone/mosecurity/c/c;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/logic/s;->b(Lcom/jxphone/mosecurity/c/l;)I

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/jxphone/mosecurity/c/b;)[Lcom/jxphone/mosecurity/c/l;
    .locals 3
    .parameter

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jxphone/mosecurity/c/l;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/keniu/security/b/l;->b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;
    .locals 2
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;Z)[Lcom/jxphone/mosecurity/c/l;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/keniu/security/b/l;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;Z)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/jxphone/mosecurity/c/l;)I
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->a(Lcom/jxphone/mosecurity/c/l;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 121
    if-ltz v0, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/jxphone/mosecurity/c/l;->a(I)V

    .line 123
    sget-object v1, Lcom/keniu/security/e/d;->a:Lcom/keniu/security/e/d;

    invoke-static {p1, v1}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "Logic-Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/keniu/security/b/l;->d(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    .line 216
    if-lez v0, :cond_0

    .line 217
    new-instance v1, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 218
    invoke-virtual {v1, p1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 219
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 221
    :cond_0
    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/l;
    .locals 4
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Lcom/keniu/security/b/l;->a()Lcom/jxphone/mosecurity/c/l;

    move-result-object v1

    .line 306
    if-nez v1, :cond_0

    .line 307
    new-instance v1, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 308
    invoke-virtual {v1, p1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 309
    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/l;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 310
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    .line 311
    invoke-interface {v0, v1}, Lcom/keniu/security/b/l;->a(Lcom/jxphone/mosecurity/c/l;)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/c/l;->a(I)V

    move-object v0, v1

    .line 313
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Lcom/keniu/security/e/c;)V
    .locals 1
    .parameter

    .prologue
    .line 318
    sget-object v0, Lcom/jxphone/mosecurity/logic/s;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public final b(I)Z
    .locals 3
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->b(I)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    new-instance v1, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 185
    invoke-virtual {v1, p1}, Lcom/jxphone/mosecurity/c/l;->a(I)V

    .line 186
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 188
    :cond_0
    return v0
.end method

.method public final b()[Lcom/jxphone/mosecurity/c/l;
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/c;

    const/4 v2, 0x0

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->c:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->d:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/keniu/security/b/l;->a([Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 2
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/l;->b(Lcom/jxphone/mosecurity/c/l;)Z

    move-result v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    sget-object v1, Lcom/keniu/security/e/d;->c:Lcom/keniu/security/e/d;

    invoke-static {p1, v1}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 229
    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v1, v2}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/keniu/security/b/l;->e(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 236
    :goto_0
    if-eqz v0, :cond_0

    .line 237
    const/4 v1, 0x0

    sget-object v2, Lcom/keniu/security/e/d;->c:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 238
    :cond_0
    return v0

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/keniu/security/b/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/keniu/security/b/b;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->e:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/b;->b(J)V

    .line 268
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v1, v2}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/keniu/security/b/b;->b(Lcom/jxphone/mosecurity/c/b;)Z

    .line 270
    :cond_0
    sget-object v0, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 271
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/u;->a(Lcom/jxphone/mosecurity/c/l;)Z

    move-result v0

    .line 273
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final e(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/keniu/security/b/l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/keniu/security/b/b;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->e:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/c/b;->b(J)V

    .line 283
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v1, v2}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/keniu/security/b/b;->b(Lcom/jxphone/mosecurity/c/b;)Z

    .line 285
    :cond_0
    sget-object v0, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/logic/s;->a(Lcom/jxphone/mosecurity/c/l;Lcom/keniu/security/e/d;)V

    .line 286
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/b/e;->f(Landroid/content/Context;)Lcom/keniu/security/b/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/u;->a(Lcom/jxphone/mosecurity/c/l;)Z

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final f(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 1
    .parameter

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/logic/s;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jxphone/mosecurity/d/f;->a:Ljava/lang/String;

    .line 296
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/h;->f(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jxphone/mosecurity/logic/a/m;->a(Lcom/jxphone/mosecurity/c/l;)Z

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Lcom/jxphone/mosecurity/c/l;)Z
    .locals 2
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/s;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/s;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/keniu/security/b/l;->a(Lcom/jxphone/mosecurity/c/l;Lcom/jxphone/mosecurity/c/c;)Z

    move-result v0

    return v0
.end method
