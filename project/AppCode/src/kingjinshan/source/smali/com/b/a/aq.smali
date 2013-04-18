.class public final Lcom/b/a/aq;
.super Lcom/b/a/dr;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/b/a/au;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x9

.field public static final e:I = 0x3e7

.field private static final f:Lcom/b/a/aq;

.field private static final p:J


# instance fields
.field private g:I

.field private h:Lcom/b/a/as;

.field private i:Z

.field private k:Z

.field private l:Ljava/lang/Object;

.field private m:Ljava/util/List;

.field private n:B

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11862
    new-instance v0, Lcom/b/a/aq;

    invoke-direct {v0}, Lcom/b/a/aq;-><init>()V

    .line 11863
    sput-object v0, Lcom/b/a/aq;->f:Lcom/b/a/aq;

    sget-object v1, Lcom/b/a/as;->a:Lcom/b/a/as;

    iput-object v1, v0, Lcom/b/a/aq;->h:Lcom/b/a/as;

    iput-boolean v2, v0, Lcom/b/a/aq;->i:Z

    iput-boolean v2, v0, Lcom/b/a/aq;->k:Z

    const-string v1, ""

    iput-object v1, v0, Lcom/b/a/aq;->l:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/aq;->m:Ljava/util/List;

    .line 11864
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 10979
    invoke-direct {p0}, Lcom/b/a/dr;-><init>()V

    .line 11163
    iput-byte v0, p0, Lcom/b/a/aq;->n:B

    .line 11207
    iput v0, p0, Lcom/b/a/aq;->o:I

    .line 10979
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/ar;)V
    .locals 1
    .parameter

    .prologue
    .line 10972
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/b/a/aq;-><init>(Lcom/b/a/ar;B)V

    return-void
.end method

.method private constructor <init>(Lcom/b/a/ar;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 10977
    invoke-direct {p0, p1}, Lcom/b/a/dr;-><init>(Lcom/b/a/dq;)V

    .line 11163
    iput-byte v0, p0, Lcom/b/a/aq;->n:B

    .line 11207
    iput v0, p0, Lcom/b/a/aq;->o:I

    .line 10978
    return-void
.end method

.method static synthetic a(Lcom/b/a/aq;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10972
    iput p1, p0, Lcom/b/a/aq;->g:I

    return p1
.end method

.method private static a(Lcom/b/a/i;)Lcom/b/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 11249
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ar;->a(Lcom/b/a/i;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    invoke-static {p0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11255
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ar;->a(Lcom/b/a/i;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    invoke-static {p0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;)Lcom/b/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 11303
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ar;->a(Lcom/b/a/m;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    invoke-static {p0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11309
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ar;->e(Lcom/b/a/m;Lcom/b/a/df;)Lcom/b/a/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lcom/b/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 11271
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ar;->a(Ljava/io/InputStream;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    invoke-static {p0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11277
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ar;->a(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    invoke-static {p0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Lcom/b/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 11260
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ar;->a([B)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    invoke-static {p0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method private static a([BLcom/b/a/df;)Lcom/b/a/aq;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 11266
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ar;->a([BLcom/b/a/df;)Lcom/b/a/c;

    move-result-object p0

    check-cast p0, Lcom/b/a/ar;

    invoke-static {p0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/b/a/aq;)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11316
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ar;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/aq;Lcom/b/a/as;)Lcom/b/a/as;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10972
    iput-object p1, p0, Lcom/b/a/aq;->h:Lcom/b/a/as;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/aq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10972
    iput-object p1, p0, Lcom/b/a/aq;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/aq;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10972
    iput-object p1, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/b/a/aq;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10972
    iput-boolean p1, p0, Lcom/b/a/aq;->i:Z

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Lcom/b/a/aq;
    .locals 2
    .parameter

    .prologue
    .line 11282
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    .line 11283
    invoke-virtual {v0, p0}, Lcom/b/a/ar;->b(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11284
    invoke-static {v0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    .line 11286
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/io/InputStream;Lcom/b/a/df;)Lcom/b/a/aq;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 11293
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    .line 11294
    invoke-virtual {v0, p0, p1}, Lcom/b/a/ar;->b(Ljava/io/InputStream;Lcom/b/a/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11295
    invoke-static {v0}, Lcom/b/a/ar;->a(Lcom/b/a/ar;)Lcom/b/a/aq;

    move-result-object v0

    .line 11297
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/b/a/dp;)Lcom/b/a/ar;
    .locals 1
    .parameter

    .prologue
    .line 11323
    new-instance v0, Lcom/b/a/ar;

    invoke-direct {v0, p0}, Lcom/b/a/ar;-><init>(Lcom/b/a/dp;)V

    .line 11324
    return-object v0
.end method

.method static synthetic b(Lcom/b/a/aq;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 10972
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/aq;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10972
    iput-boolean p1, p0, Lcom/b/a/aq;->k:Z

    return p1
.end method

.method public static e()Lcom/b/a/aq;
    .locals 1

    .prologue
    .line 10983
    sget-object v0, Lcom/b/a/aq;->f:Lcom/b/a/aq;

    return-object v0
.end method

.method public static final f()Lcom/b/a/cj;
    .locals 1

    .prologue
    .line 10992
    invoke-static {}, Lcom/b/a/p;->x()Lcom/b/a/cj;

    move-result-object v0

    return-object v0
.end method

.method public static s()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11313
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method private static t()Lcom/b/a/aq;
    .locals 1

    .prologue
    .line 10987
    sget-object v0, Lcom/b/a/aq;->f:Lcom/b/a/aq;

    return-object v0
.end method

.method private u()Lcom/b/a/i;
    .locals 2

    .prologue
    .line 11124
    iget-object v0, p0, Lcom/b/a/aq;->l:Ljava/lang/Object;

    .line 11125
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11126
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/i;->a(Ljava/lang/String;)Lcom/b/a/i;

    move-result-object v0

    .line 11128
    iput-object v0, p0, Lcom/b/a/aq;->l:Ljava/lang/Object;

    .line 11131
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/b/a/i;

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11157
    sget-object v0, Lcom/b/a/as;->a:Lcom/b/a/as;

    iput-object v0, p0, Lcom/b/a/aq;->h:Lcom/b/a/as;

    .line 11158
    iput-boolean v1, p0, Lcom/b/a/aq;->i:Z

    .line 11159
    iput-boolean v1, p0, Lcom/b/a/aq;->k:Z

    .line 11160
    const-string v0, ""

    iput-object v0, p0, Lcom/b/a/aq;->l:Ljava/lang/Object;

    .line 11161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    .line 11162
    return-void
.end method

.method private static w()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11314
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method private x()Lcom/b/a/ar;
    .locals 1

    .prologue
    .line 11318
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/b/a/ar;->a(Lcom/b/a/aq;)Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final B()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11243
    invoke-super {p0}, Lcom/b/a/dr;->B()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic D()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10972
    invoke-direct {p0}, Lcom/b/a/aq;->x()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic E()Lcom/b/a/ew;
    .locals 1

    .prologue
    .line 10972
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic F()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10972
    invoke-direct {p0}, Lcom/b/a/aq;->x()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic G()Lcom/b/a/ey;
    .locals 1

    .prologue
    .line 10972
    invoke-static {}, Lcom/b/a/ar;->u()Lcom/b/a/ar;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic H()Lcom/b/a/ex;
    .locals 1

    .prologue
    .line 10972
    sget-object v0, Lcom/b/a/aq;->f:Lcom/b/a/aq;

    return-object v0
.end method

.method public final bridge synthetic I()Lcom/b/a/ev;
    .locals 1

    .prologue
    .line 10972
    sget-object v0, Lcom/b/a/aq;->f:Lcom/b/a/aq;

    return-object v0
.end method

.method public final a(I)Lcom/b/a/cb;
    .locals 1
    .parameter

    .prologue
    .line 11149
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cb;

    return-object p0
.end method

.method protected final synthetic a(Lcom/b/a/dp;)Lcom/b/a/ew;
    .locals 1
    .parameter

    .prologue
    .line 10972
    new-instance v0, Lcom/b/a/ar;

    invoke-direct {v0, p1}, Lcom/b/a/ar;-><init>(Lcom/b/a/dp;)V

    return-object v0
.end method

.method public final a(Lcom/b/a/n;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11184
    invoke-virtual {p0}, Lcom/b/a/aq;->b()I

    .line 11186
    invoke-virtual {p0}, Lcom/b/a/aq;->K()Lcom/b/a/ds;

    move-result-object v1

    .line 11188
    iget v0, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 11189
    iget-object v0, p0, Lcom/b/a/aq;->h:Lcom/b/a/as;

    invoke-virtual {v0}, Lcom/b/a/as;->H_()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/b/a/n;->c(II)V

    .line 11191
    :cond_0
    iget v0, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 11192
    iget-boolean v0, p0, Lcom/b/a/aq;->i:Z

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->a(IZ)V

    .line 11194
    :cond_1
    iget v0, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 11195
    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/b/a/aq;->k:Z

    invoke-virtual {p1, v0, v2}, Lcom/b/a/n;->a(IZ)V

    .line 11197
    :cond_2
    iget v0, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v0, v0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    .line 11198
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/b/a/aq;->u()Lcom/b/a/i;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/b/a/n;->a(ILcom/b/a/i;)V

    .line 11200
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 11201
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-virtual {p1, v3, v0}, Lcom/b/a/n;->b(ILcom/b/a/ex;)V

    .line 11200
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 11203
    :cond_4
    invoke-virtual {v1, p1}, Lcom/b/a/ds;->a(Lcom/b/a/n;)V

    .line 11204
    invoke-virtual {p0}, Lcom/b/a/aq;->b_()Lcom/b/a/gg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/gg;->a(Lcom/b/a/n;)V

    .line 11205
    return-void
.end method

.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11165
    iget-byte v0, p0, Lcom/b/a/aq;->n:B

    .line 11166
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 11179
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 11166
    goto :goto_0

    :cond_1
    move v0, v2

    .line 11168
    :goto_1
    invoke-virtual {p0}, Lcom/b/a/aq;->r()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 11169
    invoke-virtual {p0, v0}, Lcom/b/a/aq;->a(I)Lcom/b/a/cb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/cb;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11170
    iput-byte v2, p0, Lcom/b/a/aq;->n:B

    move v0, v2

    .line 11171
    goto :goto_0

    .line 11168
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11174
    :cond_3
    invoke-virtual {p0}, Lcom/b/a/aq;->J()Z

    move-result v0

    if-nez v0, :cond_4

    .line 11175
    iput-byte v2, p0, Lcom/b/a/aq;->n:B

    move v0, v2

    .line 11176
    goto :goto_0

    .line 11178
    :cond_4
    iput-byte v3, p0, Lcom/b/a/aq;->n:B

    move v0, v3

    .line 11179
    goto :goto_0
.end method

.method public final b()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 11209
    iget v0, p0, Lcom/b/a/aq;->o:I

    .line 11210
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 11236
    :goto_0
    return v0

    .line 11213
    :cond_0
    iget v0, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_5

    .line 11214
    iget-object v0, p0, Lcom/b/a/aq;->h:Lcom/b/a/as;

    invoke-virtual {v0}, Lcom/b/a/as;->H_()I

    move-result v0

    invoke-static {v2, v0}, Lcom/b/a/n;->e(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 11217
    :goto_1
    iget v1, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 11218
    iget-boolean v1, p0, Lcom/b/a/aq;->i:Z

    invoke-static {v4}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 11221
    :cond_1
    iget v1, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 11222
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/b/a/aq;->k:Z

    invoke-static {v1}, Lcom/b/a/n;->p(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 11225
    :cond_2
    iget v1, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 11226
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/b/a/aq;->u()Lcom/b/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/b/a/n;->c(ILcom/b/a/i;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    move v1, v3

    move v2, v0

    .line 11229
    :goto_2
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 11230
    const/16 v3, 0x3e7

    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ex;

    invoke-static {v3, v0}, Lcom/b/a/n;->e(ILcom/b/a/ex;)I

    move-result v0

    add-int/2addr v0, v2

    .line 11229
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 11233
    :cond_4
    invoke-virtual {p0}, Lcom/b/a/aq;->L()I

    move-result v0

    add-int/2addr v0, v2

    .line 11234
    invoke-virtual {p0}, Lcom/b/a/aq;->b_()Lcom/b/a/gg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/gg;->b()I

    move-result v1

    add-int/2addr v0, v1

    .line 11235
    iput v0, p0, Lcom/b/a/aq;->o:I

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public final b(I)Lcom/b/a/cg;
    .locals 1
    .parameter

    .prologue
    .line 11153
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/b/a/cg;

    return-object p0
.end method

.method protected final g()Lcom/b/a/dv;
    .locals 1

    .prologue
    .line 10997
    invoke-static {}, Lcom/b/a/p;->y()Lcom/b/a/dv;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lcom/b/a/as;
    .locals 1

    .prologue
    .line 11080
    iget-object v0, p0, Lcom/b/a/aq;->h:Lcom/b/a/as;

    return-object v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 11087
    iget v0, p0, Lcom/b/a/aq;->g:I

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

.method public final k()Z
    .locals 1

    .prologue
    .line 11090
    iget-boolean v0, p0, Lcom/b/a/aq;->i:Z

    return v0
.end method

.method public final k_()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11077
    iget v0, p0, Lcom/b/a/aq;->g:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 11097
    iget v0, p0, Lcom/b/a/aq;->g:I

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

.method public final l_()Z
    .locals 1

    .prologue
    .line 11100
    iget-boolean v0, p0, Lcom/b/a/aq;->k:Z

    return v0
.end method

.method public final m_()Z
    .locals 2

    .prologue
    .line 11107
    iget v0, p0, Lcom/b/a/aq;->g:I

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

.method public final o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 11110
    iget-object v1, p0, Lcom/b/a/aq;->l:Ljava/lang/Object;

    .line 11111
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 11112
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    move-object v1, p0

    .line 11120
    :goto_0
    return-object v1

    .line 11114
    :cond_0
    check-cast v1, Lcom/b/a/i;

    .line 11116
    invoke-virtual {v1}, Lcom/b/a/i;->b()Ljava/lang/String;

    move-result-object v2

    .line 11117
    invoke-static {v1}, Lcom/b/a/ep;->a(Lcom/b/a/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11118
    iput-object v2, p0, Lcom/b/a/aq;->l:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 11120
    goto :goto_0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    .prologue
    .line 11139
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    return-object v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    .prologue
    .line 11143
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    return-object v0
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 11146
    iget-object v0, p0, Lcom/b/a/aq;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
