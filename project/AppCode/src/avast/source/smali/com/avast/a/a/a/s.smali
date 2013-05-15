.class public final Lcom/avast/a/a/a/s;
.super Lcom/google/a/l;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/u;


# static fields
.field private static final a:Lcom/avast/a/a/a/s;


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Lcom/avast/a/a/a/a/m;

.field private e:Z

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12665
    new-instance v0, Lcom/avast/a/a/a/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/s;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/s;->a:Lcom/avast/a/a/a/s;

    .line 12666
    sget-object v0, Lcom/avast/a/a/a/s;->a:Lcom/avast/a/a/a/s;

    invoke-direct {v0}, Lcom/avast/a/a/a/s;->r()V

    .line 12667
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/t;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12063
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 12200
    iput-byte v0, p0, Lcom/avast/a/a/a/s;->h:B

    .line 12233
    iput v0, p0, Lcom/avast/a/a/a/s;->i:I

    .line 12064
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/t;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12058
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/s;-><init>(Lcom/avast/a/a/a/t;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 12065
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 12200
    iput-byte v0, p0, Lcom/avast/a/a/a/s;->h:B

    .line 12233
    iput v0, p0, Lcom/avast/a/a/a/s;->i:I

    .line 12065
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/s;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12058
    iput p1, p0, Lcom/avast/a/a/a/s;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/s;Lcom/avast/a/a/a/a/m;)Lcom/avast/a/a/a/a/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12058
    iput-object p1, p0, Lcom/avast/a/a/a/s;->d:Lcom/avast/a/a/a/a/m;

    return-object p1
.end method

.method public static a()Lcom/avast/a/a/a/s;
    .locals 1

    .prologue
    .line 12069
    sget-object v0, Lcom/avast/a/a/a/s;->a:Lcom/avast/a/a/a/s;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/t;
    .locals 1
    .parameter

    .prologue
    .line 12340
    invoke-static {}, Lcom/avast/a/a/a/s;->l()Lcom/avast/a/a/a/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/t;->a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/s;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12058
    iput-object p1, p0, Lcom/avast/a/a/a/s;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/s;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12058
    iput-boolean p1, p0, Lcom/avast/a/a/a/s;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/s;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12058
    iput-object p1, p0, Lcom/avast/a/a/a/s;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/s;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12058
    iput-object p1, p0, Lcom/avast/a/a/a/s;->g:Ljava/lang/Object;

    return-object p1
.end method

.method public static l()Lcom/avast/a/a/a/t;
    .locals 1

    .prologue
    .line 12337
    invoke-static {}, Lcom/avast/a/a/a/t;->f()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method private o()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 12098
    iget-object v0, p0, Lcom/avast/a/a/a/s;->c:Ljava/lang/Object;

    .line 12099
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12100
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 12102
    iput-object v0, p0, Lcom/avast/a/a/a/s;->c:Ljava/lang/Object;

    .line 12105
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private p()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 12150
    iget-object v0, p0, Lcom/avast/a/a/a/s;->f:Ljava/lang/Object;

    .line 12151
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12152
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 12154
    iput-object v0, p0, Lcom/avast/a/a/a/s;->f:Ljava/lang/Object;

    .line 12157
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private q()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 12182
    iget-object v0, p0, Lcom/avast/a/a/a/s;->g:Ljava/lang/Object;

    .line 12183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12184
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 12186
    iput-object v0, p0, Lcom/avast/a/a/a/s;->g:Ljava/lang/Object;

    .line 12189
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 12194
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/s;->c:Ljava/lang/Object;

    .line 12195
    sget-object v0, Lcom/avast/a/a/a/a/m;->a:Lcom/avast/a/a/a/a/m;

    iput-object v0, p0, Lcom/avast/a/a/a/s;->d:Lcom/avast/a/a/a/a/m;

    .line 12196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avast/a/a/a/s;->e:Z

    .line 12197
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/s;->f:Ljava/lang/Object;

    .line 12198
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/s;->g:Ljava/lang/Object;

    .line 12199
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 12058
    invoke-virtual {p0}, Lcom/avast/a/a/a/s;->n()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 12058
    invoke-virtual {p0}, Lcom/avast/a/a/a/s;->m()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12215
    invoke-virtual {p0}, Lcom/avast/a/a/a/s;->w()I

    .line 12216
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12217
    invoke-direct {p0}, Lcom/avast/a/a/a/s;->o()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 12219
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12220
    iget-object v0, p0, Lcom/avast/a/a/a/s;->d:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v0}, Lcom/avast/a/a/a/a/m;->a()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->c(II)V

    .line 12222
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 12223
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/avast/a/a/a/s;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 12225
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 12226
    invoke-direct {p0}, Lcom/avast/a/a/a/s;->p()Lcom/google/a/c;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 12228
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 12229
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/s;->q()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 12231
    :cond_4
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12081
    iget v1, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12084
    iget-object v0, p0, Lcom/avast/a/a/a/s;->c:Ljava/lang/Object;

    .line 12085
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12086
    check-cast v0, Ljava/lang/String;

    .line 12094
    :goto_0
    return-object v0

    .line 12088
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 12090
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 12091
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12092
    iput-object v1, p0, Lcom/avast/a/a/a/s;->c:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12094
    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 12113
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/avast/a/a/a/a/m;
    .locals 1

    .prologue
    .line 12116
    iget-object v0, p0, Lcom/avast/a/a/a/s;->d:Lcom/avast/a/a/a/a/m;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 12123
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 12126
    iget-boolean v0, p0, Lcom/avast/a/a/a/s;->e:Z

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 12133
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12136
    iget-object v0, p0, Lcom/avast/a/a/a/s;->f:Ljava/lang/Object;

    .line 12137
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12138
    check-cast v0, Ljava/lang/String;

    .line 12146
    :goto_0
    return-object v0

    .line 12140
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 12142
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 12143
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12144
    iput-object v1, p0, Lcom/avast/a/a/a/s;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12146
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 12165
    iget v0, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12168
    iget-object v0, p0, Lcom/avast/a/a/a/s;->g:Ljava/lang/Object;

    .line 12169
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12170
    check-cast v0, Ljava/lang/String;

    .line 12178
    :goto_0
    return-object v0

    .line 12172
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 12174
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 12175
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12176
    iput-object v1, p0, Lcom/avast/a/a/a/s;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 12178
    goto :goto_0
.end method

.method public m()Lcom/avast/a/a/a/t;
    .locals 1

    .prologue
    .line 12338
    invoke-static {}, Lcom/avast/a/a/a/s;->l()Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/avast/a/a/a/t;
    .locals 1

    .prologue
    .line 12342
    invoke-static {p0}, Lcom/avast/a/a/a/s;->a(Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 12202
    iget-byte v2, p0, Lcom/avast/a/a/a/s;->h:B

    .line 12203
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    .line 12210
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 12203
    goto :goto_0

    .line 12205
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/s;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12206
    iput-byte v1, p0, Lcom/avast/a/a/a/s;->h:B

    move v0, v1

    .line 12207
    goto :goto_0

    .line 12209
    :cond_2
    iput-byte v0, p0, Lcom/avast/a/a/a/s;->h:B

    goto :goto_0
.end method

.method public w()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 12235
    iget v0, p0, Lcom/avast/a/a/a/s;->i:I

    .line 12236
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 12260
    :goto_0
    return v0

    .line 12238
    :cond_0
    const/4 v0, 0x0

    .line 12239
    iget v1, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 12240
    invoke-direct {p0}, Lcom/avast/a/a/a/s;->o()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12243
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 12244
    iget-object v1, p0, Lcom/avast/a/a/a/s;->d:Lcom/avast/a/a/a/a/m;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/m;->a()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12247
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 12248
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/avast/a/a/a/s;->e:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12251
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    .line 12252
    invoke-direct {p0}, Lcom/avast/a/a/a/s;->p()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12255
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/s;->b:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 12256
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/s;->q()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12259
    :cond_5
    iput v0, p0, Lcom/avast/a/a/a/s;->i:I

    goto :goto_0
.end method
