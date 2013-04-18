.class public final Lcom/jxphone/mosecurity/logic/h;
.super Ljava/lang/Object;
.source "LogicFactory.java"


# static fields
.field private static a:Lcom/jxphone/mosecurity/logic/v;

.field private static b:Lcom/jxphone/mosecurity/logic/u;

.field private static c:Lcom/jxphone/mosecurity/logic/w;

.field private static d:Lcom/jxphone/mosecurity/logic/s;

.field private static e:Lcom/jxphone/mosecurity/logic/i;

.field private static f:Lcom/jxphone/mosecurity/logic/a;

.field private static g:Lcom/jxphone/mosecurity/logic/s;

.field private static h:Lcom/jxphone/mosecurity/logic/i;

.field private static i:Lcom/jxphone/mosecurity/logic/a;

.field private static j:Lcom/jxphone/mosecurity/logic/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->a:Lcom/jxphone/mosecurity/logic/v;

    .line 24
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->b:Lcom/jxphone/mosecurity/logic/u;

    .line 25
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->c:Lcom/jxphone/mosecurity/logic/w;

    .line 26
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->d:Lcom/jxphone/mosecurity/logic/s;

    .line 27
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->e:Lcom/jxphone/mosecurity/logic/i;

    .line 28
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->f:Lcom/jxphone/mosecurity/logic/a;

    .line 29
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->g:Lcom/jxphone/mosecurity/logic/s;

    .line 30
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->h:Lcom/jxphone/mosecurity/logic/i;

    .line 31
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->i:Lcom/jxphone/mosecurity/logic/a;

    .line 32
    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->j:Lcom/jxphone/mosecurity/logic/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/jxphone/mosecurity/logic/a/h;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->j:Lcom/jxphone/mosecurity/logic/r;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/jxphone/mosecurity/logic/r;

    invoke-direct {v0}, Lcom/jxphone/mosecurity/logic/r;-><init>()V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->j:Lcom/jxphone/mosecurity/logic/r;

    .line 113
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->j:Lcom/jxphone/mosecurity/logic/r;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;
    .locals 1
    .parameter

    .prologue
    .line 37
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->d:Lcom/jxphone/mosecurity/logic/s;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/jxphone/mosecurity/logic/s;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/s;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->d:Lcom/jxphone/mosecurity/logic/s;

    .line 39
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->d:Lcom/jxphone/mosecurity/logic/s;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/j;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    if-eqz p1, :cond_1

    .line 45
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->g:Lcom/jxphone/mosecurity/logic/s;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/jxphone/mosecurity/logic/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/jxphone/mosecurity/logic/s;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->g:Lcom/jxphone/mosecurity/logic/s;

    .line 47
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->g:Lcom/jxphone/mosecurity/logic/s;

    .line 49
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/g;
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->e:Lcom/jxphone/mosecurity/logic/i;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/jxphone/mosecurity/logic/i;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/i;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->e:Lcom/jxphone/mosecurity/logic/i;

    .line 57
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->e:Lcom/jxphone/mosecurity/logic/i;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/g;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    if-eqz p1, :cond_1

    .line 63
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->h:Lcom/jxphone/mosecurity/logic/i;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/jxphone/mosecurity/logic/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/jxphone/mosecurity/logic/i;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->h:Lcom/jxphone/mosecurity/logic/i;

    .line 65
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->h:Lcom/jxphone/mosecurity/logic/i;

    .line 67
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;
    .locals 1
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->f:Lcom/jxphone/mosecurity/logic/a;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/jxphone/mosecurity/logic/a;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->f:Lcom/jxphone/mosecurity/logic/a;

    .line 75
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->f:Lcom/jxphone/mosecurity/logic/a;

    return-object v0
.end method

.method public static c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    if-eqz p1, :cond_1

    .line 81
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->i:Lcom/jxphone/mosecurity/logic/a;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/jxphone/mosecurity/logic/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/jxphone/mosecurity/logic/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->i:Lcom/jxphone/mosecurity/logic/a;

    .line 83
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->i:Lcom/jxphone/mosecurity/logic/a;

    .line 85
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/l;
    .locals 1
    .parameter

    .prologue
    .line 91
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->a:Lcom/jxphone/mosecurity/logic/v;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/jxphone/mosecurity/logic/v;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->a:Lcom/jxphone/mosecurity/logic/v;

    .line 93
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->a:Lcom/jxphone/mosecurity/logic/v;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/k;
    .locals 1
    .parameter

    .prologue
    .line 98
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->b:Lcom/jxphone/mosecurity/logic/u;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/jxphone/mosecurity/logic/u;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/u;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->b:Lcom/jxphone/mosecurity/logic/u;

    .line 100
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->b:Lcom/jxphone/mosecurity/logic/u;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/m;
    .locals 1
    .parameter

    .prologue
    .line 105
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->c:Lcom/jxphone/mosecurity/logic/w;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/jxphone/mosecurity/logic/w;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/jxphone/mosecurity/logic/h;->c:Lcom/jxphone/mosecurity/logic/w;

    .line 107
    :cond_0
    sget-object v0, Lcom/jxphone/mosecurity/logic/h;->c:Lcom/jxphone/mosecurity/logic/w;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/e;
    .locals 1
    .parameter

    .prologue
    .line 117
    new-instance v0, Lcom/jxphone/mosecurity/logic/e;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/logic/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
