.class final Lcom/jxphone/mosecurity/logic/a;
.super Ljava/lang/Object;
.source "ContactLogicImpl.java"

# interfaces
.implements Lcom/jxphone/mosecurity/logic/a/d;


# static fields
.field private static final a:Ljava/util/LinkedHashSet;


# instance fields
.field private b:Landroid/content/Context;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/a;->a:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jxphone/mosecurity/logic/a;-><init>(Landroid/content/Context;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    .line 46
    iput-boolean p2, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    .line 47
    return-void
.end method

.method private static a(Lcom/jxphone/mosecurity/c/b;Lcom/keniu/security/e/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    sget-object v0, Lcom/jxphone/mosecurity/logic/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/e/c;

    .line 189
    invoke-interface {v0, p0, p1}, Lcom/keniu/security/e/c;->a(Ljava/lang/Object;Lcom/keniu/security/e/d;)V

    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/logic/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    return v0
.end method

.method private c(Lcom/jxphone/mosecurity/c/b;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 55
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 58
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/keniu/security/b/b;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    sget-object v3, Lcom/jxphone/mosecurity/logic/b;->a:[I

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 70
    invoke-virtual {p1, v2, v3}, Lcom/jxphone/mosecurity/c/b;->a(J)V

    .line 71
    invoke-virtual {p1, v2, v3}, Lcom/jxphone/mosecurity/c/b;->b(J)V

    .line 72
    invoke-interface {v0, p1}, Lcom/keniu/security/b/b;->a(Lcom/jxphone/mosecurity/c/b;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 73
    if-eq v0, v5, :cond_1

    .line 74
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v2, v3}, Lcom/keniu/security/b/e;->a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/keniu/security/b/g;->f(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 75
    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v2, v3}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/keniu/security/b/l;->f(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 76
    sget-object v1, Lcom/keniu/security/e/d;->a:Lcom/keniu/security/e/d;

    invoke-static {p1, v1}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/c/b;Lcom/keniu/security/e/d;)V

    .line 78
    :cond_1
    :goto_1
    return v0

    :pswitch_0
    move v0, v5

    .line 63
    goto :goto_1

    .line 65
    :pswitch_1
    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/keniu/security/b/b;->b(I)Z

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/jxphone/mosecurity/c/b;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/logic/a;->c(Lcom/jxphone/mosecurity/c/b;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/jxphone/mosecurity/logic/a;->c(Lcom/jxphone/mosecurity/c/b;)I

    move-result v0

    .line 84
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/jxphone/mosecurity/logic/a;->b(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V

    .line 89
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-interface {p2}, Lcom/jxphone/mosecurity/logic/a/a;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/jxphone/mosecurity/c/c;)I
    .locals 3
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/b;->b(Lcom/jxphone/mosecurity/c/c;)I

    move-result v0

    .line 154
    if-lez v0, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/c/b;Lcom/keniu/security/e/d;)V

    .line 155
    :cond_0
    return v0
.end method

.method public final a(I)Lcom/jxphone/mosecurity/c/b;
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/b;->a(I)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0, v2}, Lcom/jxphone/mosecurity/logic/a;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/h;->d(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/l;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/l;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v1, v2}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    .line 108
    invoke-interface {v1, v0, p2}, Lcom/keniu/security/b/b;->b(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, v0, p2}, Lcom/keniu/security/b/b;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/keniu/security/e/c;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    sget-object v0, Lcom/jxphone/mosecurity/logic/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 125
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/h;->d(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/l;

    move-result-object v1

    .line 128
    invoke-interface {v0, p1, v2}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    .line 129
    invoke-interface {v1, p1, v2}, Lcom/jxphone/mosecurity/logic/a/l;->a(Ljava/lang/String;Z)Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    .line 131
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->e:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v2, v3}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 136
    :cond_1
    :goto_0
    return-object v0

    .line 133
    :cond_2
    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    if-nez p2, :cond_0

    sget-object v0, Lcom/jxphone/mosecurity/logic/a/a;->b:Lcom/jxphone/mosecurity/logic/a/a;

    .line 95
    :goto_0
    new-instance v1, Lcom/jxphone/mosecurity/logic/c;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/jxphone/mosecurity/logic/c;-><init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/logic/c;->start()V

    .line 96
    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public final b(Lcom/keniu/security/e/c;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    sget-object v0, Lcom/jxphone/mosecurity/logic/a;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public final b(I)Z
    .locals 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/b;->b(I)Z

    move-result v0

    .line 143
    if-eqz v0, :cond_0

    .line 144
    new-instance v1, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v1}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 145
    invoke-virtual {v1, p1}, Lcom/jxphone/mosecurity/c/b;->a(I)V

    .line 146
    sget-object v2, Lcom/keniu/security/e/d;->b:Lcom/keniu/security/e/d;

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/c/b;Lcom/keniu/security/e/d;)V

    .line 148
    :cond_0
    return v0
.end method

.method public final b(Lcom/jxphone/mosecurity/c/b;)Z
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/b;->b(Lcom/jxphone/mosecurity/c/b;)Z

    move-result v0

    .line 183
    if-eqz v0, :cond_0

    sget-object v1, Lcom/keniu/security/e/d;->c:Lcom/keniu/security/e/d;

    invoke-static {p1, v1}, Lcom/jxphone/mosecurity/logic/a;->a(Lcom/jxphone/mosecurity/c/b;Lcom/keniu/security/e/d;)V

    .line 184
    :cond_0
    return v0
.end method

.method public final b(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/logic/a;->c:Z

    invoke-static {v0, v1}, Lcom/keniu/security/b/e;->c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/keniu/security/b/b;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/logic/a;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    .line 161
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/jxphone/mosecurity/logic/a/a;->b:Lcom/jxphone/mosecurity/logic/a/a;

    .line 162
    :goto_1
    new-instance v1, Lcom/jxphone/mosecurity/logic/d;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/jxphone/mosecurity/logic/d;-><init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Ljava/lang/String;Lcom/jxphone/mosecurity/logic/a/a;)V

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/logic/d;->start()V

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1
.end method

.method public final d(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 168
    if-nez p2, :cond_0

    sget-object v0, Lcom/jxphone/mosecurity/logic/a/a;->b:Lcom/jxphone/mosecurity/logic/a/a;

    .line 169
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/jxphone/mosecurity/c/b;->b(J)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/jxphone/mosecurity/logic/a;->b(Lcom/jxphone/mosecurity/c/b;)Z

    .line 171
    new-instance v1, Lcom/jxphone/mosecurity/logic/d;

    iget-object v2, p0, Lcom/jxphone/mosecurity/logic/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/jxphone/mosecurity/logic/d;-><init>(Lcom/jxphone/mosecurity/logic/a;Landroid/content/Context;Ljava/lang/String;Lcom/jxphone/mosecurity/logic/a/a;)V

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/logic/d;->start()V

    .line 172
    return-void

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method
