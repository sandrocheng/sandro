.class public final Lcom/b/a/bb;
.super Lcom/b/a/dr;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/bf;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x8

.field public static final c:I = 0xa

.field public static final d:I = 0x14

.field public static final e:I = 0x9

.field public static final f:I = 0x10

.field public static final g:I = 0x11

.field public static final h:I = 0x12

.field public static final i:I = 0x3e7

.field private static final k:Lcom/b/a/bb;

.field private static final x:J


# instance fields
.field private l:I

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Z

.field private p:Z

.field private q:Lcom/b/a/bd;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Ljava/util/List;

.field private v:B

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10240
    new-instance v0, Lcom/b/a/bb;

    invoke-direct {v0}, Lcom/b/a/bb;-><init>()V

    .line 10241
    sput-object v0, Lcom/b/a/bb;->k:Lcom/b/a/bb;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/bb;->m:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/bb;->n:Ljava/lang/Object;

    iput-boolean v2, v0, Lcom/b/a/bb;->o:Z

    iput-boolean v2, v0, Lcom/b/a/bb;->p:Z

    sget-object v1, Lcom/b/a/bd;->a:Lcom/b/a/bd;

    iput-object v1, v0, Lcom/b/a/bb;->q:Lcom/b/a/bd;

    iput-boolean v2, v0, Lcom/b/a/bb;->r:Z

    iput-boolean v2, v0, Lcom/b/a/bb;->s:Z

    iput-boolean v2, v0, Lcom/b/a/bb;->t:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/bb;->u:Ljava/util/List;

    .line 10242
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 9108
    invoke-direct {p0}, Lcom/b/a/dr;-><init>()V

    .line 9358
    iput-byte v0, p0, Lcom/b/a/bb;->v:B

    .line 9414
    iput v0, p0, Lcom/b/a/bb;->w:I

    .line 9108
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/bc;)V
    .locals 1
    .parameter

    .prologue
    .line 9101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/bb;-><init>(Lcom/b/a/bc;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/bc;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 9106
    invoke-direct {p0, p1}, Lcom/b/a/dr;-><init>(Lcom/b/a/dq;)V

    .line 9358
    iput-byte v0, p0, Lcom/b/a/bb;->v:B

    .line 9414
    iput v0, p0, Lcom/b/a/bb;->w:I

    .line 9107
    return-void
.end method

.method public static A()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9536
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method private static M()Lcom/b/a/bb;
    .locals 1

    .prologue
    .line 9116
    sget-object v0, Lcom/b/a/bb;->k:Lcom/b/a/bb;

    return-object v0
.end method

.method private N()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 9223
    iget-object v0, p0, Lcom/b/a/bb;->m:Ljava/lang/Object;

    .line 9224
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9225
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 9227
    iput-object v0, p0, Lcom/b/a/bb;->m:Ljava/lang/Object;

    .line 9230
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private O()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 9255
    iget-object v0, p0, Lcom/b/a/bb;->n:Ljava/lang/Object;

    .line 9256
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9257
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 9259
    iput-object v0, p0, Lcom/b/a/bb;->n:Ljava/lang/Object;

    .line 9262
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private P()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9348
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bb;->m:Ljava/lang/Object;

    .line 9349
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/bb;->n:Ljava/lang/Object;

    .line 9350
    iput-boolean v1, p0, Lcom/b/a/bb;->o:Z

    .line 9351
    iput-boolean v1, p0, Lcom/b/a/bb;->p:Z

    .line 9352
    sget-object v0, Lcom/b/a/bd;->a:Lcom/b/a/bd;

    iput-object v0, p0, Lcom/b/a/bb;->q:Lcom/b/a/bd;

    .line 9353
    iput-boolean v1, p0, Lcom/b/a/bb;->r:Z

    .line 9354
    iput-boolean v1, p0, Lcom/b/a/bb;->s:Z

    .line 9355
    iput-boolean v1, p0, Lcom/b/a/bb;->t:Z

    .line 9356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    .line 9357
    return-void
.end method

.method private static Q()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9537
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method private R()Lcom/b/a/bc;
    .locals 1

    .prologue
    .line 9541
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bc;->a(Lcom/b/a/bb;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bb;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput p1, p0, Lcom/b/a/bb;->l:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 9472
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bc;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bc;

    invoke-static {p0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9478
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bc;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bc;

    invoke-static {p0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 9526
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bc;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bc;

    invoke-static {p0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9532
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bc;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/bc;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 9494
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bc;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bc;

    invoke-static {p0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9500
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bc;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bc;

    invoke-static {p0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/bb;
    .locals 1
    .parameter

    .prologue
    .line 9483
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bc;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bc;

    invoke-static {p0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/bb;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 9489
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/bc;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/bc;

    invoke-static {p0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/bb;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9539
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/bc;->a(Lcom/b/a/bb;)Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/bb;Lcom/b/a/bd;)Lcom/b/a/bd;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-object p1, p0, Lcom/b/a/bb;->q:Lcom/b/a/bd;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/bb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-object p1, p0, Lcom/b/a/bb;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/bb;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-object p1, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/bb;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-boolean p1, p0, Lcom/b/a/bb;->o:Z

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/bb;
    .locals 2
    .parameter

    .prologue
    .line 9505
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    .line 9506
    invoke-virtual {v0, p0}, Lcom/b/a/bc;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9507
    invoke-static {v0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    .line 9509
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/bb;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 9516
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    .line 9517
    invoke-virtual {v0, p0, p1}, Lcom/b/a/bc;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9518
    invoke-static {v0}, Lcom/b/a/bc;->a(Lcom/b/a/bc;)Lcom/b/a/bb;

    move-result-object v0

    .line 9520
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/bc;
    .locals 1
    .parameter

    .prologue
    .line 9546
    new-instance v0, Lcom/b/a/bc;

    invoke-direct {v0, p0}, Lcom/b/a/bc;-><init>(Lcom/b/a/dp;)V

    .line 9547
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-object p1, p0, Lcom/b/a/bb;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/b/a/bb;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 9101
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/bb;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-boolean p1, p0, Lcom/b/a/bb;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/b/a/bb;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-boolean p1, p0, Lcom/b/a/bb;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/b/a/bb;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-boolean p1, p0, Lcom/b/a/bb;->s:Z

    return p1
.end method

.method public static e()Lcom/b/a/bb;
    .locals 1

    .prologue
    .line 9112
    sget-object v0, Lcom/b/a/bb;->k:Lcom/b/a/bb;

    return-object v0
.end method

.method static synthetic e(Lcom/b/a/bb;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9101
    iput-boolean p1, p0, Lcom/b/a/bb;->t:Z

    return p1
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 9121
    invoke-static {}, Lcom/b/a/p;->t()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9466
    invoke-super {p0}, Lcom/b/a/dr;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9101
    invoke-direct {p0}, Lcom/b/a/bb;->R()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 9101
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9101
    invoke-direct {p0}, Lcom/b/a/bb;->R()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 9101
    invoke-static {}, Lcom/b/a/bc;->E()Lcom/b/a/bc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 9101
    sget-object v0, Lcom/b/a/bb;->k:Lcom/b/a/bb;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 9101
    sget-object v0, Lcom/b/a/bb;->k:Lcom/b/a/bb;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 9340
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 9101
    new-instance v0, Lcom/b/a/bc;

    invoke-direct {v0, p1}, Lcom/b/a/bc;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 9379
    invoke-virtual {p0}, Lcom/b/a/bb;->b()I

    .line 9381
    invoke-virtual {p0}, Lcom/b/a/bb;->K()Lcom/b/a/ds;

    move-result-object v1

    .line 9383
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 9384
    invoke-direct {p0}, Lcom/b/a/bb;->N()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 9386
    :cond_0
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 9387
    invoke-direct {p0}, Lcom/b/a/bb;->O()Lcom/b/a/i;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 9389
    :cond_1
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v4, :cond_2

    .line 9390
    const/16 v0, 0x9

    iget-object v2, p0, Lcom/b/a/bb;->q:Lcom/b/a/bd;

    invoke-virtual {v2}, Lcom/b/a/bd;->H_()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/b/a/n;->c(II)V

    .line 9392
    :cond_2
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    .line 9393
    const/16 v0, 0xa

    iget-boolean v2, p0, Lcom/b/a/bb;->o:Z

    invoke-virtual {p1, v0, v2}, Lcom/b/a/n;->a(IZ)V

    .line 9395
    :cond_3
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_4

    .line 9396
    iget-boolean v0, p0, Lcom/b/a/bb;->r:Z

    invoke-virtual {p1, v4, v0}, Lcom/b/a/n;->a(IZ)V

    .line 9398
    :cond_4
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x40

    const/16 v2, 0x40

    if-ne v0, v2, :cond_5

    .line 9399
    const/16 v0, 0x11

    iget-boolean v2, p0, Lcom/b/a/bb;->s:Z

    invoke-virtual {p1, v0, v2}, Lcom/b/a/n;->a(IZ)V

    .line 9401
    :cond_5
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit16 v0, v0, 0x80

    const/16 v2, 0x80

    if-ne v0, v2, :cond_6

    .line 9402
    const/16 v0, 0x12

    iget-boolean v2, p0, Lcom/b/a/bb;->t:Z

    invoke-virtual {p1, v0, v2}, Lcom/b/a/n;->a(IZ)V

    .line 9404
    :cond_6
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v3, :cond_7

    .line 9405
    const/16 v0, 0x14

    iget-boolean v2, p0, Lcom/b/a/bb;->p:Z

    invoke-virtual {p1, v0, v2}, Lcom/b/a/n;->a(IZ)V

    .line 9407
    :cond_7
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 9408
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 9407
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 9410
    :cond_8
    invoke-virtual {v1, p1}, Lcom/b/a/ds;->a(Lcom/b/a/n;)V

    .line 9411
    invoke-virtual {p0}, Lcom/b/a/bb;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 9412
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9360
    iget-byte v0, p0, Lcom/b/a/bb;->v:B

    .line 9361
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 9374
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 9361
    goto :goto_0

    :cond_1
    move v0, v2

    .line 9363
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/bb;->z()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 9364
    invoke-virtual {p0, v0}, Lcom/b/a/bb;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9365
    iput-byte v2, p0, Lcom/b/a/bb;->v:B

    move v0, v2

    .line 9366
    goto :goto_0

    .line 9363
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9369
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/bb;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9370
    iput-byte v2, p0, Lcom/b/a/bb;->v:B

    move v0, v2

    .line 9371
    goto :goto_0

    .line 9373
    :cond_4
    iput-byte v3, p0, Lcom/b/a/bb;->v:B

    move v0, v3

    .line 9374
    goto :goto_0
.end method

.method public final b()I
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9416
    iget v0, p0, Lcom/b/a/bb;->w:I

    .line 9417
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 9459
    :goto_0
    return v0

    .line 9420
    :cond_0
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_9

    .line 9421
    invoke-direct {p0}, Lcom/b/a/bb;->N()Lcom/b/a/i;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9424
    :goto_1
    iget v1, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 9425
    invoke-direct {p0}, Lcom/b/a/bb;->O()Lcom/b/a/i;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9428
    :cond_1
    iget v1, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v5, :cond_2

    .line 9429
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/b/a/bb;->q:Lcom/b/a/bd;

    invoke-virtual {v2}, Lcom/b/a/bd;->H_()I

    move-result v2

    invoke-static {v1, v2}, Lcom/b/a/n;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9432
    :cond_2
    iget v1, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 9433
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/b/a/bb;->o:Z

    invoke-static {v1}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9436
    :cond_3
    iget v1, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 9437
    iget-boolean v1, p0, Lcom/b/a/bb;->r:Z

    invoke-static {v5}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9440
    :cond_4
    iget v1, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 9441
    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/b/a/bb;->s:Z

    invoke-static {v1}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9444
    :cond_5
    iget v1, p0, Lcom/b/a/bb;->l:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    .line 9445
    const/16 v1, 0x12

    iget-boolean v2, p0, Lcom/b/a/bb;->t:Z

    invoke-static {v1}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 9448
    :cond_6
    iget v1, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_7

    .line 9449
    const/16 v1, 0x14

    iget-boolean v2, p0, Lcom/b/a/bb;->p:Z

    invoke-static {v1}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_7
    move v1, v3

    move v2, v0

    .line 9452
    :goto_2
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 9453
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 9452
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 9456
    :cond_8
    invoke-virtual {p0}, Lcom/b/a/bb;->L()I

    move-result v0

    add-int/2addr v0, v2

    .line 9457
    invoke-virtual {p0}, Lcom/b/a/bb;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 9458
    iput v0, p0, Lcom/b/a/bb;->w:I

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_1
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 9344
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 9126
    invoke-static {}, Lcom/b/a/p;->u()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9209
    iget-object v1, p0, Lcom/b/a/bb;->m:Ljava/lang/Object;

    .line 9210
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9211
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9219
    :goto_0
    return-object v1

    .line 9213
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 9215
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 9216
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9217
    iput-object v2, p0, Lcom/b/a/bb;->m:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9219
    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 9238
    iget v0, p0, Lcom/b/a/bb;->l:I

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

.method public final k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 9241
    iget-object v1, p0, Lcom/b/a/bb;->n:Ljava/lang/Object;

    .line 9242
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9243
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 9251
    :goto_0
    return-object v1

    .line 9245
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 9247
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 9248
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9249
    iput-object v2, p0, Lcom/b/a/bb;->n:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 9251
    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 9270
    iget v0, p0, Lcom/b/a/bb;->l:I

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

.method public final o()Z
    .locals 1

    .prologue
    .line 9283
    iget-boolean v0, p0, Lcom/b/a/bb;->p:Z

    return v0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 9290
    iget v0, p0, Lcom/b/a/bb;->l:I

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

.method public final q()Lcom/b/a/bd;
    .locals 1

    .prologue
    .line 9293
    iget-object v0, p0, Lcom/b/a/bb;->q:Lcom/b/a/bd;

    return-object v0
.end method

.method public final r()Z
    .locals 2

    .prologue
    .line 9300
    iget v0, p0, Lcom/b/a/bb;->l:I

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

.method public final s()Z
    .locals 1

    .prologue
    .line 9303
    iget-boolean v0, p0, Lcom/b/a/bb;->r:Z

    return v0
.end method

.method public final t()Z
    .locals 2

    .prologue
    .line 9310
    iget v0, p0, Lcom/b/a/bb;->l:I

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

.method public final t_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9206
    iget v0, p0, Lcom/b/a/bb;->l:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 9313
    iget-boolean v0, p0, Lcom/b/a/bb;->s:Z

    return v0
.end method

.method public final u_()Z
    .locals 1

    .prologue
    .line 9273
    iget-boolean v0, p0, Lcom/b/a/bb;->o:Z

    return v0
.end method

.method public final v()Z
    .locals 2

    .prologue
    .line 9320
    iget v0, p0, Lcom/b/a/bb;->l:I

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

.method public final v_()Z
    .locals 2

    .prologue
    .line 9280
    iget v0, p0, Lcom/b/a/bb;->l:I

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

.method public final w()Z
    .locals 1

    .prologue
    .line 9323
    iget-boolean v0, p0, Lcom/b/a/bb;->t:Z

    return v0
.end method

.method public final x()Ljava/util/List;
    .locals 1

    .prologue
    .line 9330
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    return-object v0
.end method

.method public final y()Ljava/util/List;
    .locals 1

    .prologue
    .line 9334
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    return-object v0
.end method

.method public final z()I
    .locals 1

    .prologue
    .line 9337
    iget-object v0, p0, Lcom/b/a/bb;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
