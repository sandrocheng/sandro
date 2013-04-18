.class public final Lcom/keniu/security/b/e;
.super Ljava/lang/Object;
.source "DaoFactory.java"


# static fields
.field private static final a:I

.field private static b:Lcom/jxphone/mosecurity/b/c;

.field private static c:Ljava/lang/Object;

.field private static d:Lcom/keniu/security/c/b;

.field private static e:Ljava/lang/Object;

.field private static f:Lcom/keniu/security/c/b;

.field private static g:Ljava/lang/Object;

.field private static h:Lcom/jxphone/mosecurity/b/a;

.field private static i:Ljava/lang/Object;

.field private static j:Lcom/jxphone/mosecurity/b/f;

.field private static k:Ljava/lang/Object;

.field private static l:Lcom/keniu/security/b/h;

.field private static m:Lcom/keniu/security/b/m;

.field private static n:Lcom/keniu/security/b/c;

.field private static o:Lcom/keniu/security/b/h;

.field private static p:Lcom/keniu/security/b/m;

.field private static q:Lcom/keniu/security/b/c;

.field private static r:Lcom/keniu/security/b/p;

.field private static s:Lcom/keniu/security/b/s;

.field private static t:Lcom/keniu/security/b/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/keniu/security/b/e;->a:I

    .line 23
    invoke-static {}, Lcom/jxphone/mosecurity/d/s;->a()V

    .line 24
    sget-object v0, Lcom/keniu/security/b/h;->a:Lcom/jxphone/mosecurity/d/t;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/s;->a(Lcom/jxphone/mosecurity/d/t;)V

    .line 25
    sget-object v0, Lcom/keniu/security/b/m;->a:Lcom/jxphone/mosecurity/d/t;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/s;->a(Lcom/jxphone/mosecurity/d/t;)V

    .line 26
    sget-object v0, Lcom/keniu/security/b/c;->a:Lcom/jxphone/mosecurity/d/t;

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/s;->a(Lcom/jxphone/mosecurity/d/t;)V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/keniu/security/b/e;->c:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/keniu/security/b/e;->e:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/keniu/security/b/e;->g:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/keniu/security/b/e;->i:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/keniu/security/b/e;->k:Ljava/lang/Object;

    .line 106
    sput-object v1, Lcom/keniu/security/b/e;->l:Lcom/keniu/security/b/h;

    .line 107
    sput-object v1, Lcom/keniu/security/b/e;->m:Lcom/keniu/security/b/m;

    .line 108
    sput-object v1, Lcom/keniu/security/b/e;->n:Lcom/keniu/security/b/c;

    .line 109
    sput-object v1, Lcom/keniu/security/b/e;->o:Lcom/keniu/security/b/h;

    .line 110
    sput-object v1, Lcom/keniu/security/b/e;->p:Lcom/keniu/security/b/m;

    .line 111
    sput-object v1, Lcom/keniu/security/b/e;->q:Lcom/keniu/security/b/c;

    .line 112
    sput-object v1, Lcom/keniu/security/b/e;->r:Lcom/keniu/security/b/p;

    .line 113
    sput-object v1, Lcom/keniu/security/b/e;->s:Lcom/keniu/security/b/s;

    .line 114
    sput-object v1, Lcom/keniu/security/b/e;->t:Lcom/keniu/security/b/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/c;
    .locals 2
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/keniu/security/b/e;->b:Lcom/jxphone/mosecurity/b/c;

    if-nez v0, :cond_1

    .line 52
    sget-object v0, Lcom/keniu/security/b/e;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/keniu/security/b/e;->b:Lcom/jxphone/mosecurity/b/c;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/jxphone/mosecurity/b/c;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/b/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/keniu/security/b/e;->b:Lcom/jxphone/mosecurity/b/c;

    .line 56
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/keniu/security/b/e;->b:Lcom/jxphone/mosecurity/b/c;

    return-object v0

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;Z)Lcom/keniu/security/b/g;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    if-eqz p1, :cond_1

    .line 127
    sget-object v0, Lcom/keniu/security/b/e;->o:Lcom/keniu/security/b/h;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/keniu/security/b/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/b/h;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/keniu/security/b/e;->o:Lcom/keniu/security/b/h;

    .line 129
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->o:Lcom/keniu/security/b/h;

    .line 131
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/keniu/security/b/e;->l:Lcom/keniu/security/b/h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/keniu/security/b/h;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/b/e;->l:Lcom/keniu/security/b/h;

    :cond_2
    sget-object v0, Lcom/keniu/security/b/e;->l:Lcom/keniu/security/b/h;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/keniu/security/b/l;
    .locals 1
    .parameter

    .prologue
    .line 137
    sget-object v0, Lcom/keniu/security/b/e;->m:Lcom/keniu/security/b/m;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/keniu/security/b/m;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/b/e;->m:Lcom/keniu/security/b/m;

    .line 139
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->m:Lcom/keniu/security/b/m;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Z)Lcom/keniu/security/b/l;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 143
    if-eqz p1, :cond_1

    .line 145
    sget-object v0, Lcom/keniu/security/b/e;->p:Lcom/keniu/security/b/m;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/keniu/security/b/m;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/b/m;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/keniu/security/b/e;->p:Lcom/keniu/security/b/m;

    .line 147
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->p:Lcom/keniu/security/b/m;

    .line 149
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/keniu/security/b/e;->b(Landroid/content/Context;)Lcom/keniu/security/b/l;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Z)Lcom/keniu/security/b/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 168
    if-eqz p1, :cond_1

    .line 170
    sget-object v0, Lcom/keniu/security/b/e;->q:Lcom/keniu/security/b/c;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/keniu/security/b/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/b/c;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/keniu/security/b/e;->q:Lcom/keniu/security/b/c;

    .line 172
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->q:Lcom/keniu/security/b/c;

    .line 174
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/keniu/security/b/e;->d(Landroid/content/Context;)Lcom/keniu/security/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/keniu/security/b/o;
    .locals 1
    .parameter

    .prologue
    .line 155
    sget-object v0, Lcom/keniu/security/b/e;->r:Lcom/keniu/security/b/p;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/keniu/security/b/p;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/b/e;->r:Lcom/keniu/security/b/p;

    .line 157
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->r:Lcom/keniu/security/b/p;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/keniu/security/b/b;
    .locals 1
    .parameter

    .prologue
    .line 162
    sget-object v0, Lcom/keniu/security/b/e;->n:Lcom/keniu/security/b/c;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/keniu/security/b/c;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/b/e;->n:Lcom/keniu/security/b/c;

    .line 164
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->n:Lcom/keniu/security/b/c;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/keniu/security/b/r;
    .locals 2
    .parameter

    .prologue
    .line 180
    sget-object v0, Lcom/keniu/security/b/e;->s:Lcom/keniu/security/b/s;

    if-nez v0, :cond_0

    .line 181
    sget v0, Lcom/keniu/security/b/e;->a:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/keniu/security/b/t;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/t;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v0, Lcom/keniu/security/b/e;->s:Lcom/keniu/security/b/s;

    .line 182
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->s:Lcom/keniu/security/b/s;

    return-object v0

    .line 181
    :cond_1
    new-instance v0, Lcom/keniu/security/b/s;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/s;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Lcom/keniu/security/b/u;
    .locals 1
    .parameter

    .prologue
    .line 187
    sget-object v0, Lcom/keniu/security/b/e;->t:Lcom/keniu/security/b/v;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/keniu/security/b/v;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/b/e;->t:Lcom/keniu/security/b/v;

    .line 189
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->t:Lcom/keniu/security/b/v;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Lcom/keniu/security/c/b;
    .locals 3
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/keniu/security/b/e;->f:Lcom/keniu/security/c/b;

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lcom/keniu/security/b/e;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/keniu/security/b/e;->f:Lcom/keniu/security/c/b;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/keniu/security/c/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/c/b;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/keniu/security/b/e;->f:Lcom/keniu/security/c/b;

    .line 67
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/keniu/security/b/e;->f:Lcom/keniu/security/c/b;

    return-object v0

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static h(Landroid/content/Context;)Lcom/keniu/security/c/b;
    .locals 3
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/keniu/security/b/e;->d:Lcom/keniu/security/c/b;

    if-nez v0, :cond_1

    .line 74
    sget-object v0, Lcom/keniu/security/b/e;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/keniu/security/b/e;->d:Lcom/keniu/security/c/b;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/keniu/security/c/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/keniu/security/c/b;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lcom/keniu/security/b/e;->d:Lcom/keniu/security/c/b;

    .line 78
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    sget-object v0, Lcom/keniu/security/b/e;->d:Lcom/keniu/security/c/b;

    return-object v0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static i(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/a;
    .locals 2
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/keniu/security/b/e;->h:Lcom/jxphone/mosecurity/b/a;

    if-nez v0, :cond_1

    .line 85
    sget-object v0, Lcom/keniu/security/b/e;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lcom/keniu/security/b/e;->h:Lcom/jxphone/mosecurity/b/a;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lcom/jxphone/mosecurity/b/a;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/b/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/keniu/security/b/e;->h:Lcom/jxphone/mosecurity/b/a;

    .line 89
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/keniu/security/b/e;->h:Lcom/jxphone/mosecurity/b/a;

    return-object v0

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static j(Landroid/content/Context;)Lcom/jxphone/mosecurity/b/f;
    .locals 2
    .parameter

    .prologue
    .line 95
    sget-object v0, Lcom/keniu/security/b/e;->j:Lcom/jxphone/mosecurity/b/f;

    if-nez v0, :cond_1

    .line 96
    sget-object v0, Lcom/keniu/security/b/e;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/keniu/security/b/e;->j:Lcom/jxphone/mosecurity/b/f;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/jxphone/mosecurity/b/f;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/b/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/keniu/security/b/e;->j:Lcom/jxphone/mosecurity/b/f;

    .line 100
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    sget-object v0, Lcom/keniu/security/b/e;->j:Lcom/jxphone/mosecurity/b/f;

    return-object v0

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static k(Landroid/content/Context;)Lcom/keniu/security/b/g;
    .locals 1
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/keniu/security/b/e;->l:Lcom/keniu/security/b/h;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/keniu/security/b/h;

    invoke-direct {v0, p0}, Lcom/keniu/security/b/h;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keniu/security/b/e;->l:Lcom/keniu/security/b/h;

    .line 121
    :cond_0
    sget-object v0, Lcom/keniu/security/b/e;->l:Lcom/keniu/security/b/h;

    return-object v0
.end method
