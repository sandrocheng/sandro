.class public final Lcom/c/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static d:Lcom/c/a/a/a;


# instance fields
.field private e:Lcom/c/a/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/c/a/a/d;->a(Landroid/content/Context;)Lcom/c/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    .line 23
    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/c/a/a/a;
    .locals 1
    .parameter

    .prologue
    .line 31
    sget-object v0, Lcom/c/a/a/a;->d:Lcom/c/a/a/a;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/c/a/a/a;

    invoke-direct {v0, p0}, Lcom/c/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/c/a/a/a;->d:Lcom/c/a/a/a;

    .line 35
    :cond_0
    sget-object v0, Lcom/c/a/a/a;->d:Lcom/c/a/a/a;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0, p1}, Lcom/c/a/a/d;->a(Landroid/location/Location;)V

    .line 185
    return-void
.end method

.method private a(Landroid/location/Criteria;)Z
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {p1}, Lcom/c/a/a/d;->a(Landroid/location/Criteria;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0, p1}, Lcom/c/a/a/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->a()I

    move-result v0

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->c()I

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->d()Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->e()Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->f()Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->g()Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->h()Z

    move-result v0

    return v0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->i()Z

    move-result v0

    return v0
.end method

.method private m()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-static {}, Lcom/c/a/a/d;->j()Z

    move-result v0

    return v0
.end method

.method private n()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0}, Lcom/c/a/a/d;->k()I

    move-result v0

    return v0
.end method

.method private o()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0}, Lcom/c/a/a/d;->l()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final a(Landroid/location/LocationListener;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0, p1}, Lcom/c/a/a/d;->a(Landroid/location/LocationListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0}, Lcom/c/a/a/d;->m()V

    .line 140
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0}, Lcom/c/a/a/d;->n()V

    .line 148
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/c/a/a/a;->e:Lcom/c/a/a/d;

    invoke-virtual {v0}, Lcom/c/a/a/d;->o()V

    .line 176
    return-void
.end method

.method protected final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    return-void
.end method
