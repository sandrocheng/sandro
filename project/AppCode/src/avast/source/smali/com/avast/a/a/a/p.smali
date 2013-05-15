.class public final Lcom/avast/a/a/a/p;
.super Lcom/google/a/l;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/r;


# static fields
.field private static final a:Lcom/avast/a/a/a/p;


# instance fields
.field private A:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/avast/a/a/a/a/ag;

.field private g:Lcom/avast/a/a/a/a/ag;

.field private h:Lcom/avast/a/a/a/a/ag;

.field private i:Lcom/avast/a/a/a/a/ag;

.field private j:Lcom/avast/a/a/a/a/ag;

.field private k:Z

.field private l:Ljava/lang/Object;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/avast/a/a/a/a/c;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Lcom/avast/a/a/a/a/w;

.field private y:Z

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6462
    new-instance v0, Lcom/avast/a/a/a/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/p;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/p;->a:Lcom/avast/a/a/a/p;

    .line 6463
    sget-object v0, Lcom/avast/a/a/a/p;->a:Lcom/avast/a/a/a/p;

    invoke-direct {v0}, Lcom/avast/a/a/a/p;->ad()V

    .line 6464
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/q;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4946
    invoke-direct {p0, p1}, Lcom/google/a/l;-><init>(Lcom/google/a/n;)V

    .line 5237
    iput-byte v0, p0, Lcom/avast/a/a/a/p;->z:B

    .line 5320
    iput v0, p0, Lcom/avast/a/a/a/p;->A:I

    .line 4947
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/q;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/p;-><init>(Lcom/avast/a/a/a/q;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 4948
    invoke-direct {p0}, Lcom/google/a/l;-><init>()V

    .line 5237
    iput-byte v0, p0, Lcom/avast/a/a/a/p;->z:B

    .line 5320
    iput v0, p0, Lcom/avast/a/a/a/p;->A:I

    .line 4948
    return-void
.end method

.method public static Z()Lcom/avast/a/a/a/q;
    .locals 1

    .prologue
    .line 5496
    invoke-static {}, Lcom/avast/a/a/a/q;->e()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/p;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput p1, p0, Lcom/avast/a/a/a/p;->b:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->f:Lcom/avast/a/a/a/a/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/c;)Lcom/avast/a/a/a/a/c;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->s:Lcom/avast/a/a/a/a/c;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/w;)Lcom/avast/a/a/a/a/w;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->x:Lcom/avast/a/a/a/a/w;

    return-object p1
.end method

.method public static a()Lcom/avast/a/a/a/p;
    .locals 1

    .prologue
    .line 4952
    sget-object v0, Lcom/avast/a/a/a/p;->a:Lcom/avast/a/a/a/p;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/p;)Lcom/avast/a/a/a/q;
    .locals 1
    .parameter

    .prologue
    .line 5499
    invoke-static {}, Lcom/avast/a/a/a/p;->Z()Lcom/avast/a/a/a/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/q;->a(Lcom/avast/a/a/a/p;)Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/p;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->c:Z

    return p1
.end method

.method private ac()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 5071
    iget-object v0, p0, Lcom/avast/a/a/a/p;->l:Ljava/lang/Object;

    .line 5072
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5073
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 5075
    iput-object v0, p0, Lcom/avast/a/a/a/p;->l:Ljava/lang/Object;

    .line 5078
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ad()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5213
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->c:Z

    .line 5214
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->d:Z

    .line 5215
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->e:Z

    .line 5216
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/p;->f:Lcom/avast/a/a/a/a/ag;

    .line 5217
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/p;->g:Lcom/avast/a/a/a/a/ag;

    .line 5218
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/p;->h:Lcom/avast/a/a/a/a/ag;

    .line 5219
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/p;->i:Lcom/avast/a/a/a/a/ag;

    .line 5220
    sget-object v0, Lcom/avast/a/a/a/a/ag;->a:Lcom/avast/a/a/a/a/ag;

    iput-object v0, p0, Lcom/avast/a/a/a/p;->j:Lcom/avast/a/a/a/a/ag;

    .line 5221
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->k:Z

    .line 5222
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/p;->l:Ljava/lang/Object;

    .line 5223
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->m:Z

    .line 5224
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->n:Z

    .line 5225
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->o:Z

    .line 5226
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->p:Z

    .line 5227
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->q:Z

    .line 5228
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->r:Z

    .line 5229
    sget-object v0, Lcom/avast/a/a/a/a/c;->a:Lcom/avast/a/a/a/a/c;

    iput-object v0, p0, Lcom/avast/a/a/a/p;->s:Lcom/avast/a/a/a/a/c;

    .line 5230
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->t:Z

    .line 5231
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->u:Z

    .line 5232
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->v:Z

    .line 5233
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->w:Z

    .line 5234
    sget-object v0, Lcom/avast/a/a/a/a/w;->a:Lcom/avast/a/a/a/a/w;

    iput-object v0, p0, Lcom/avast/a/a/a/p;->x:Lcom/avast/a/a/a/a/w;

    .line 5235
    iput-boolean v1, p0, Lcom/avast/a/a/a/p;->y:Z

    .line 5236
    return-void
.end method

.method static synthetic b(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->g:Lcom/avast/a/a/a/a/ag;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->h:Lcom/avast/a/a/a/a/ag;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->e:Z

    return p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->i:Lcom/avast/a/a/a/a/ag;

    return-object p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->k:Z

    return p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/p;Lcom/avast/a/a/a/a/ag;)Lcom/avast/a/a/a/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-object p1, p0, Lcom/avast/a/a/a/p;->j:Lcom/avast/a/a/a/a/ag;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->m:Z

    return p1
.end method

.method static synthetic f(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->n:Z

    return p1
.end method

.method static synthetic g(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->o:Z

    return p1
.end method

.method static synthetic h(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->p:Z

    return p1
.end method

.method static synthetic i(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->q:Z

    return p1
.end method

.method static synthetic j(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->r:Z

    return p1
.end method

.method static synthetic k(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->t:Z

    return p1
.end method

.method static synthetic l(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->u:Z

    return p1
.end method

.method static synthetic m(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->v:Z

    return p1
.end method

.method static synthetic n(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->w:Z

    return p1
.end method

.method static synthetic o(Lcom/avast/a/a/a/p;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4941
    iput-boolean p1, p0, Lcom/avast/a/a/a/p;->y:Z

    return p1
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4941
    invoke-virtual {p0}, Lcom/avast/a/a/a/p;->ab()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 4941
    invoke-virtual {p0}, Lcom/avast/a/a/a/p;->aa()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 5099
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->n:Z

    return v0
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 5106
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Z
    .locals 1

    .prologue
    .line 5109
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->o:Z

    return v0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 5116
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    .prologue
    .line 5119
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->p:Z

    return v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 5126
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 5129
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->q:Z

    return v0
.end method

.method public J()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 5136
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()Z
    .locals 1

    .prologue
    .line 5139
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->r:Z

    return v0
.end method

.method public L()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 5146
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Lcom/avast/a/a/a/a/c;
    .locals 1

    .prologue
    .line 5149
    iget-object v0, p0, Lcom/avast/a/a/a/p;->s:Lcom/avast/a/a/a/a/c;

    return-object v0
.end method

.method public N()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 5156
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 5159
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->t:Z

    return v0
.end method

.method public P()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 5166
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Z
    .locals 1

    .prologue
    .line 5169
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->u:Z

    return v0
.end method

.method public R()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 5176
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()Z
    .locals 1

    .prologue
    .line 5179
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->v:Z

    return v0
.end method

.method public T()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 5186
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 5189
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->w:Z

    return v0
.end method

.method public V()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 5196
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W()Lcom/avast/a/a/a/a/w;
    .locals 1

    .prologue
    .line 5199
    iget-object v0, p0, Lcom/avast/a/a/a/p;->x:Lcom/avast/a/a/a/a/w;

    return-object v0
.end method

.method public X()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 5206
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()Z
    .locals 1

    .prologue
    .line 5209
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->y:Z

    return v0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5248
    invoke-virtual {p0}, Lcom/avast/a/a/a/p;->w()I

    .line 5249
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5250
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->c:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/a/e;->a(IZ)V

    .line 5252
    :cond_0
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5253
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->d:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/a/e;->a(IZ)V

    .line 5255
    :cond_1
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5256
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->e:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5258
    :cond_2
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 5259
    iget-object v0, p0, Lcom/avast/a/a/a/p;->f:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v0}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/a/e;->c(II)V

    .line 5261
    :cond_3
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    .line 5262
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/avast/a/a/a/p;->g:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 5264
    :cond_4
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 5265
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/avast/a/a/a/p;->h:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 5267
    :cond_5
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 5268
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/avast/a/a/a/p;->i:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 5270
    :cond_6
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 5271
    iget-object v0, p0, Lcom/avast/a/a/a/p;->j:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v0}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/google/a/e;->c(II)V

    .line 5273
    :cond_7
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 5274
    const/16 v0, 0x9

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->k:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5276
    :cond_8
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 5277
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/avast/a/a/a/p;->ac()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 5279
    :cond_9
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    .line 5280
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5282
    :cond_a
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    .line 5283
    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->n:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5285
    :cond_b
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    .line 5286
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->o:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5288
    :cond_c
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    .line 5289
    const/16 v0, 0xe

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->p:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5291
    :cond_d
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    .line 5292
    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->q:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5294
    :cond_e
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    .line 5295
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->r:Z

    invoke-virtual {p1, v5, v0}, Lcom/google/a/e;->a(IZ)V

    .line 5297
    :cond_f
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 5298
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/avast/a/a/a/p;->s:Lcom/avast/a/a/a/a/c;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/c;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 5300
    :cond_10
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v1, 0x2

    and-int/2addr v0, v1

    const/high16 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 5301
    const/16 v0, 0x12

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->t:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5303
    :cond_11
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v1, 0x4

    and-int/2addr v0, v1

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 5304
    const/16 v0, 0x13

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->u:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5306
    :cond_12
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    const/high16 v1, 0x8

    if-ne v0, v1, :cond_13

    .line 5307
    const/16 v0, 0x14

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->v:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5309
    :cond_13
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    const/high16 v1, 0x10

    if-ne v0, v1, :cond_14

    .line 5310
    const/16 v0, 0x15

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->w:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5312
    :cond_14
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    const/high16 v1, 0x20

    if-ne v0, v1, :cond_15

    .line 5313
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/avast/a/a/a/p;->x:Lcom/avast/a/a/a/a/w;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/w;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->c(II)V

    .line 5315
    :cond_15
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_16

    .line 5316
    const/16 v0, 0x17

    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->y:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 5318
    :cond_16
    return-void
.end method

.method public aa()Lcom/avast/a/a/a/q;
    .locals 1

    .prologue
    .line 5497
    invoke-static {}, Lcom/avast/a/a/a/p;->Z()Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public ab()Lcom/avast/a/a/a/q;
    .locals 1

    .prologue
    .line 5501
    invoke-static {p0}, Lcom/avast/a/a/a/p;->a(Lcom/avast/a/a/a/p;)Lcom/avast/a/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4964
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 4967
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->c:Z

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 4974
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

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

.method public e()Z
    .locals 1

    .prologue
    .line 4977
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->d:Z

    return v0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 4984
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

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
    .line 4987
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->e:Z

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 4994
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

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

.method public i()Lcom/avast/a/a/a/a/ag;
    .locals 1

    .prologue
    .line 4997
    iget-object v0, p0, Lcom/avast/a/a/a/p;->f:Lcom/avast/a/a/a/a/ag;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 5004
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

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

.method public k()Lcom/avast/a/a/a/a/ag;
    .locals 1

    .prologue
    .line 5007
    iget-object v0, p0, Lcom/avast/a/a/a/p;->g:Lcom/avast/a/a/a/a/ag;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 5014
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Lcom/avast/a/a/a/a/ag;
    .locals 1

    .prologue
    .line 5017
    iget-object v0, p0, Lcom/avast/a/a/a/p;->h:Lcom/avast/a/a/a/a/ag;

    return-object v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 5024
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lcom/avast/a/a/a/a/ag;
    .locals 1

    .prologue
    .line 5027
    iget-object v0, p0, Lcom/avast/a/a/a/p;->i:Lcom/avast/a/a/a/a/ag;

    return-object v0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 5034
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Lcom/avast/a/a/a/a/ag;
    .locals 1

    .prologue
    .line 5037
    iget-object v0, p0, Lcom/avast/a/a/a/p;->j:Lcom/avast/a/a/a/a/ag;

    return-object v0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 5044
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 5047
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->k:Z

    return v0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 5054
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5057
    iget-object v0, p0, Lcom/avast/a/a/a/p;->l:Ljava/lang/Object;

    .line 5058
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5059
    check-cast v0, Ljava/lang/String;

    .line 5067
    :goto_0
    return-object v0

    .line 5061
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 5063
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 5064
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5065
    iput-object v1, p0, Lcom/avast/a/a/a/p;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 5067
    goto :goto_0
.end method

.method public final v()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5239
    iget-byte v1, p0, Lcom/avast/a/a/a/p;->z:B

    .line 5240
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    .line 5243
    :goto_0
    return v0

    .line 5240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5242
    :cond_1
    iput-byte v0, p0, Lcom/avast/a/a/a/p;->z:B

    goto :goto_0
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5322
    iget v0, p0, Lcom/avast/a/a/a/p;->A:I

    .line 5323
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5419
    :goto_0
    return v0

    .line 5325
    :cond_0
    const/4 v0, 0x0

    .line 5326
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 5327
    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->c:Z

    invoke-static {v2, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5330
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 5331
    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->d:Z

    invoke-static {v3, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5334
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 5335
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->e:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5338
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 5339
    iget-object v1, p0, Lcom/avast/a/a/a/p;->f:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5342
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 5343
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/avast/a/a/a/p;->g:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5346
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 5347
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/avast/a/a/a/p;->h:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5350
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 5351
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/avast/a/a/a/p;->i:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5354
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 5355
    iget-object v1, p0, Lcom/avast/a/a/a/p;->j:Lcom/avast/a/a/a/a/ag;

    invoke-virtual {v1}, Lcom/avast/a/a/a/a/ag;->a()I

    move-result v1

    invoke-static {v5, v1}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5358
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 5359
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->k:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5362
    :cond_9
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 5363
    const/16 v1, 0xa

    invoke-direct {p0}, Lcom/avast/a/a/a/p;->ac()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5366
    :cond_a
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 5367
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->m:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5370
    :cond_b
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 5371
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->n:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5374
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 5375
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->o:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5378
    :cond_d
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 5379
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->p:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5382
    :cond_e
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 5383
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->q:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5386
    :cond_f
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 5387
    iget-boolean v1, p0, Lcom/avast/a/a/a/p;->r:Z

    invoke-static {v6, v1}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5390
    :cond_10
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 5391
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/avast/a/a/a/p;->s:Lcom/avast/a/a/a/a/c;

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/c;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5394
    :cond_11
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 5395
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->t:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5398
    :cond_12
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 5399
    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->u:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5402
    :cond_13
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 5403
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->v:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5406
    :cond_14
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_15

    .line 5407
    const/16 v1, 0x15

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->w:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5410
    :cond_15
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_16

    .line 5411
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/avast/a/a/a/p;->x:Lcom/avast/a/a/a/a/w;

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/w;->a()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/a/e;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5414
    :cond_16
    iget v1, p0, Lcom/avast/a/a/a/p;->b:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_17

    .line 5415
    const/16 v1, 0x17

    iget-boolean v2, p0, Lcom/avast/a/a/a/p;->y:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5418
    :cond_17
    iput v0, p0, Lcom/avast/a/a/a/p;->A:I

    goto/16 :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 5086
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 5089
    iget-boolean v0, p0, Lcom/avast/a/a/a/p;->m:Z

    return v0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 5096
    iget v0, p0, Lcom/avast/a/a/a/p;->b:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
