.class public final Lcom/avast/a/a/a/aj;
.super Lcom/google/a/p;
.source "AvastToWeb.java"

# interfaces
.implements Lcom/avast/a/a/a/al;


# static fields
.field private static final a:Lcom/avast/a/a/a/aj;


# instance fields
.field private A:Lcom/avast/a/a/a/ad;

.field private B:I

.field private C:Ljava/lang/Object;

.field private D:Z

.field private E:B

.field private F:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Z

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Object;

.field private p:I

.field private q:I

.field private r:Lcom/avast/a/a/a/s;

.field private s:Lcom/avast/a/a/a/y;

.field private t:Lcom/avast/a/a/a/a/ad;

.field private u:Lcom/avast/a/a/a/am;

.field private v:Lcom/avast/a/a/a/m;

.field private w:Lcom/avast/a/a/a/ag;

.field private x:Z

.field private y:Ljava/lang/Object;

.field private z:Lcom/avast/a/a/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2613
    new-instance v0, Lcom/avast/a/a/a/aj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/avast/a/a/a/aj;-><init>(Z)V

    sput-object v0, Lcom/avast/a/a/a/aj;->a:Lcom/avast/a/a/a/aj;

    .line 2614
    sget-object v0, Lcom/avast/a/a/a/aj;->a:Lcom/avast/a/a/a/aj;

    invoke-direct {v0}, Lcom/avast/a/a/a/aj;->aC()V

    .line 2615
    return-void
.end method

.method private constructor <init>(Lcom/avast/a/a/a/ak;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 132
    invoke-direct {p0, p1}, Lcom/google/a/p;-><init>(Lcom/google/a/o;)V

    .line 742
    iput-byte v0, p0, Lcom/avast/a/a/a/aj;->E:B

    .line 890
    iput v0, p0, Lcom/avast/a/a/a/aj;->F:I

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/avast/a/a/a/ak;Lcom/avast/a/a/a/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/avast/a/a/a/aj;-><init>(Lcom/avast/a/a/a/ak;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Lcom/google/a/p;-><init>()V

    .line 742
    iput-byte v0, p0, Lcom/avast/a/a/a/aj;->E:B

    .line 890
    iput v0, p0, Lcom/avast/a/a/a/aj;->F:I

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/avast/a/a/a/aj;->c:I

    return p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/a/ad;)Lcom/avast/a/a/a/a/ad;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->t:Lcom/avast/a/a/a/a/ad;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/ad;)Lcom/avast/a/a/a/ad;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->A:Lcom/avast/a/a/a/ad;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/ag;)Lcom/avast/a/a/a/ag;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->w:Lcom/avast/a/a/a/ag;

    return-object p1
.end method

.method public static a()Lcom/avast/a/a/a/aj;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/avast/a/a/a/aj;->a:Lcom/avast/a/a/a/aj;

    return-object v0
.end method

.method public static a(Lcom/avast/a/a/a/aj;)Lcom/avast/a/a/a/ak;
    .locals 1
    .parameter

    .prologue
    .line 1090
    invoke-static {}, Lcom/avast/a/a/a/aj;->aj()Lcom/avast/a/a/a/ak;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/avast/a/a/a/ak;->a(Lcom/avast/a/a/a/aj;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/am;)Lcom/avast/a/a/a/am;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->u:Lcom/avast/a/a/a/am;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/m;)Lcom/avast/a/a/a/m;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->v:Lcom/avast/a/a/a/m;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/p;)Lcom/avast/a/a/a/p;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->z:Lcom/avast/a/a/a/p;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/s;)Lcom/avast/a/a/a/s;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->r:Lcom/avast/a/a/a/s;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Lcom/avast/a/a/a/y;)Lcom/avast/a/a/a/y;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->s:Lcom/avast/a/a/a/y;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/avast/a/a/a/aj;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/avast/a/a/a/aj;->l:Z

    return p1
.end method

.method private aA()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->y:Ljava/lang/Object;

    .line 630
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 631
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 633
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->y:Ljava/lang/Object;

    .line 636
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private aB()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->C:Ljava/lang/Object;

    .line 692
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 693
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 695
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->C:Ljava/lang/Object;

    .line 698
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private aC()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 713
    iput v1, p0, Lcom/avast/a/a/a/aj;->c:I

    .line 714
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->d:Ljava/lang/Object;

    .line 715
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->e:Ljava/lang/Object;

    .line 716
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->f:Ljava/lang/Object;

    .line 717
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->g:Ljava/lang/Object;

    .line 718
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->h:Ljava/lang/Object;

    .line 719
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->i:Ljava/lang/Object;

    .line 720
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->j:Ljava/lang/Object;

    .line 721
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->k:Ljava/lang/Object;

    .line 722
    iput-boolean v1, p0, Lcom/avast/a/a/a/aj;->l:Z

    .line 723
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->m:Ljava/lang/Object;

    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->n:Ljava/lang/Object;

    .line 725
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->o:Ljava/lang/Object;

    .line 726
    iput v1, p0, Lcom/avast/a/a/a/aj;->p:I

    .line 727
    iput v1, p0, Lcom/avast/a/a/a/aj;->q:I

    .line 728
    invoke-static {}, Lcom/avast/a/a/a/s;->a()Lcom/avast/a/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->r:Lcom/avast/a/a/a/s;

    .line 729
    invoke-static {}, Lcom/avast/a/a/a/y;->a()Lcom/avast/a/a/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->s:Lcom/avast/a/a/a/y;

    .line 730
    invoke-static {}, Lcom/avast/a/a/a/a/ad;->a()Lcom/avast/a/a/a/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->t:Lcom/avast/a/a/a/a/ad;

    .line 731
    invoke-static {}, Lcom/avast/a/a/a/am;->a()Lcom/avast/a/a/a/am;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->u:Lcom/avast/a/a/a/am;

    .line 732
    invoke-static {}, Lcom/avast/a/a/a/m;->a()Lcom/avast/a/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->v:Lcom/avast/a/a/a/m;

    .line 733
    invoke-static {}, Lcom/avast/a/a/a/ag;->a()Lcom/avast/a/a/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->w:Lcom/avast/a/a/a/ag;

    .line 734
    iput-boolean v1, p0, Lcom/avast/a/a/a/aj;->x:Z

    .line 735
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->y:Ljava/lang/Object;

    .line 736
    invoke-static {}, Lcom/avast/a/a/a/p;->a()Lcom/avast/a/a/a/p;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->z:Lcom/avast/a/a/a/p;

    .line 737
    invoke-static {}, Lcom/avast/a/a/a/ad;->a()Lcom/avast/a/a/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->A:Lcom/avast/a/a/a/ad;

    .line 738
    iput v1, p0, Lcom/avast/a/a/a/aj;->B:I

    .line 739
    const-string v0, ""

    iput-object v0, p0, Lcom/avast/a/a/a/aj;->C:Ljava/lang/Object;

    .line 740
    iput-boolean v1, p0, Lcom/avast/a/a/a/aj;->D:Z

    .line 741
    return-void
.end method

.method public static aj()Lcom/avast/a/a/a/ak;
    .locals 1

    .prologue
    .line 1087
    invoke-static {}, Lcom/avast/a/a/a/ak;->D()Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method private ap()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->d:Ljava/lang/Object;

    .line 178
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 179
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 181
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->d:Ljava/lang/Object;

    .line 184
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private aq()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->e:Ljava/lang/Object;

    .line 210
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 213
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->e:Ljava/lang/Object;

    .line 216
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ar()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->f:Ljava/lang/Object;

    .line 242
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 243
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 245
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->f:Ljava/lang/Object;

    .line 248
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private as()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->g:Ljava/lang/Object;

    .line 274
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 275
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->g:Ljava/lang/Object;

    .line 280
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private at()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->h:Ljava/lang/Object;

    .line 306
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 307
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 309
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->h:Ljava/lang/Object;

    .line 312
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private au()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->i:Ljava/lang/Object;

    .line 338
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 339
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 341
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->i:Ljava/lang/Object;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private av()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->j:Ljava/lang/Object;

    .line 370
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 371
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 373
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->j:Ljava/lang/Object;

    .line 376
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private aw()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->k:Ljava/lang/Object;

    .line 402
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 403
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 405
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->k:Ljava/lang/Object;

    .line 408
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ax()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->m:Ljava/lang/Object;

    .line 444
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 445
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 447
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->m:Ljava/lang/Object;

    .line 450
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private ay()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->n:Ljava/lang/Object;

    .line 476
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 477
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 479
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->n:Ljava/lang/Object;

    .line 482
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method private az()Lcom/google/a/c;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->o:Ljava/lang/Object;

    .line 508
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 509
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/c;->a(Ljava/lang/String;)Lcom/google/a/c;

    move-result-object v0

    .line 511
    iput-object v0, p0, Lcom/avast/a/a/a/aj;->o:Ljava/lang/Object;

    .line 514
    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/a/c;

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/a/a/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/avast/a/a/a/aj;->p:I

    return p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/avast/a/a/a/aj;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/avast/a/a/a/aj;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/avast/a/a/a/aj;->q:I

    return p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->f:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/avast/a/a/a/aj;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/avast/a/a/a/aj;->D:Z

    return p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/avast/a/a/a/aj;->B:I

    return p1
.end method

.method static synthetic d(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/aj;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/avast/a/a/a/aj;->b:I

    return p1
.end method

.method static synthetic e(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->h:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic f(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->i:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->j:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic h(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic i(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->m:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic j(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->n:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic k(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->o:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic l(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->y:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic m(Lcom/avast/a/a/a/aj;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/avast/a/a/a/aj;->C:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public synthetic A()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->al()Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B()Lcom/google/a/ab;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->ak()Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->n:Ljava/lang/Object;

    .line 462
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 463
    check-cast v0, Ljava/lang/String;

    .line 471
    :goto_0
    return-object v0

    .line 465
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 467
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->n:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 471
    goto :goto_0
.end method

.method public D()Z
    .locals 2

    .prologue
    .line 490
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public E()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->o:Ljava/lang/Object;

    .line 494
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 495
    check-cast v0, Ljava/lang/String;

    .line 503
    :goto_0
    return-object v0

    .line 497
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 499
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->o:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 503
    goto :goto_0
.end method

.method public F()Z
    .locals 2

    .prologue
    .line 522
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public G()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/avast/a/a/a/aj;->p:I

    return v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 532
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public I()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/avast/a/a/a/aj;->q:I

    return v0
.end method

.method public J()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 542
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public K()Lcom/avast/a/a/a/s;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->r:Lcom/avast/a/a/a/s;

    return-object v0
.end method

.method public L()Z
    .locals 2

    .prologue
    const/high16 v1, 0x1

    .line 552
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()Lcom/avast/a/a/a/y;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->s:Lcom/avast/a/a/a/y;

    return-object v0
.end method

.method public N()Z
    .locals 2

    .prologue
    const/high16 v1, 0x2

    .line 562
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Lcom/avast/a/a/a/a/ad;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->t:Lcom/avast/a/a/a/a/ad;

    return-object v0
.end method

.method public P()Z
    .locals 2

    .prologue
    const/high16 v1, 0x4

    .line 572
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Q()Lcom/avast/a/a/a/am;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->u:Lcom/avast/a/a/a/am;

    return-object v0
.end method

.method public R()Z
    .locals 2

    .prologue
    const/high16 v1, 0x8

    .line 582
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public S()Lcom/avast/a/a/a/m;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->v:Lcom/avast/a/a/a/m;

    return-object v0
.end method

.method public T()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10

    .line 592
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public U()Lcom/avast/a/a/a/ag;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->w:Lcom/avast/a/a/a/ag;

    return-object v0
.end method

.method public V()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20

    .line 602
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public W()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/avast/a/a/a/aj;->x:Z

    return v0
.end method

.method public X()Z
    .locals 2

    .prologue
    const/high16 v1, 0x40

    .line 612
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->y:Ljava/lang/Object;

    .line 616
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 617
    check-cast v0, Ljava/lang/String;

    .line 625
    :goto_0
    return-object v0

    .line 619
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 621
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 622
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->y:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 625
    goto :goto_0
.end method

.method public Z()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80

    .line 644
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/a/e;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 799
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->w()I

    .line 801
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->an()Lcom/google/a/q;

    move-result-object v0

    .line 803
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 804
    iget v1, p0, Lcom/avast/a/a/a/aj;->c:I

    invoke-virtual {p1, v2, v1}, Lcom/google/a/e;->a(II)V

    .line 806
    :cond_0
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 807
    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ap()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 809
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2

    .line 810
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aq()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 812
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_3

    .line 813
    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ar()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 815
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_4

    .line 816
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->as()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 818
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 819
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->at()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 821
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 822
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->au()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 824
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 825
    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->av()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 827
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 828
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aw()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 830
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    .line 831
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/avast/a/a/a/aj;->l:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(IZ)V

    .line 833
    :cond_9
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_a

    .line 834
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ax()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 836
    :cond_a
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b

    .line 837
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ay()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 839
    :cond_b
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c

    .line 840
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->az()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 842
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_d

    .line 843
    const/16 v1, 0xe

    iget v2, p0, Lcom/avast/a/a/a/aj;->p:I

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(II)V

    .line 845
    :cond_d
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_e

    .line 846
    const/16 v1, 0xf

    iget v2, p0, Lcom/avast/a/a/a/aj;->q:I

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(II)V

    .line 848
    :cond_e
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_f

    .line 849
    iget-object v1, p0, Lcom/avast/a/a/a/aj;->r:Lcom/avast/a/a/a/s;

    invoke-virtual {p1, v6, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 851
    :cond_f
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 852
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->s:Lcom/avast/a/a/a/y;

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 854
    :cond_10
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_11

    .line 855
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->t:Lcom/avast/a/a/a/a/ad;

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 857
    :cond_11
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_12

    .line 858
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->u:Lcom/avast/a/a/a/am;

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 860
    :cond_12
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_13

    .line 861
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->v:Lcom/avast/a/a/a/m;

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 863
    :cond_13
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_14

    .line 864
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->w:Lcom/avast/a/a/a/ag;

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 866
    :cond_14
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_15

    .line 867
    const/16 v1, 0x16

    iget-boolean v2, p0, Lcom/avast/a/a/a/aj;->x:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/a/e;->a(IZ)V

    .line 869
    :cond_15
    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/google/a/q;->a(ILcom/google/a/e;)V

    .line 870
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    const/high16 v1, 0x40

    if-ne v0, v1, :cond_16

    .line 871
    const/16 v0, 0xc8

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aA()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 873
    :cond_16
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    const/high16 v1, 0x80

    if-ne v0, v1, :cond_17

    .line 874
    const/16 v0, 0xc9

    iget-object v1, p0, Lcom/avast/a/a/a/aj;->z:Lcom/avast/a/a/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 876
    :cond_17
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v1, 0x100

    and-int/2addr v0, v1

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_18

    .line 877
    const/16 v0, 0xca

    iget-object v1, p0, Lcom/avast/a/a/a/aj;->A:Lcom/avast/a/a/a/ad;

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->b(ILcom/google/a/aa;)V

    .line 879
    :cond_18
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v1, 0x200

    and-int/2addr v0, v1

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_19

    .line 880
    const/16 v0, 0xcb

    iget v1, p0, Lcom/avast/a/a/a/aj;->B:I

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(II)V

    .line 882
    :cond_19
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    const/high16 v1, 0x400

    if-ne v0, v1, :cond_1a

    .line 883
    const/16 v0, 0xcc

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aB()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(ILcom/google/a/c;)V

    .line 885
    :cond_1a
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v1, 0x800

    and-int/2addr v0, v1

    const/high16 v1, 0x800

    if-ne v0, v1, :cond_1b

    .line 886
    const/16 v0, 0xcd

    iget-boolean v1, p0, Lcom/avast/a/a/a/aj;->D:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/a/e;->a(IZ)V

    .line 888
    :cond_1b
    return-void
.end method

.method public aa()Lcom/avast/a/a/a/p;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->z:Lcom/avast/a/a/a/p;

    return-object v0
.end method

.method public ab()Z
    .locals 2

    .prologue
    const/high16 v1, 0x100

    .line 654
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ac()Lcom/avast/a/a/a/ad;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->A:Lcom/avast/a/a/a/ad;

    return-object v0
.end method

.method public ad()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200

    .line 664
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ae()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lcom/avast/a/a/a/aj;->B:I

    return v0
.end method

.method public af()Z
    .locals 2

    .prologue
    const/high16 v1, 0x400

    .line 674
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 677
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->C:Ljava/lang/Object;

    .line 678
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 679
    check-cast v0, Ljava/lang/String;

    .line 687
    :goto_0
    return-object v0

    .line 681
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 683
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->C:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 687
    goto :goto_0
.end method

.method public ah()Z
    .locals 2

    .prologue
    const/high16 v1, 0x800

    .line 706
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ai()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/avast/a/a/a/aj;->D:Z

    return v0
.end method

.method public ak()Lcom/avast/a/a/a/ak;
    .locals 1

    .prologue
    .line 1088
    invoke-static {}, Lcom/avast/a/a/a/aj;->aj()Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public al()Lcom/avast/a/a/a/ak;
    .locals 1

    .prologue
    .line 1092
    invoke-static {p0}, Lcom/avast/a/a/a/aj;->a(Lcom/avast/a/a/a/aj;)Lcom/avast/a/a/a/ak;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/avast/a/a/a/aj;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->d:Ljava/lang/Object;

    .line 164
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Ljava/lang/String;

    .line 173
    :goto_0
    return-object v0

    .line 167
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 169
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->d:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 173
    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->e:Ljava/lang/Object;

    .line 196
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Ljava/lang/String;

    .line 205
    :goto_0
    return-object v0

    .line 199
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 201
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->e:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 205
    goto :goto_0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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
    .line 227
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->f:Ljava/lang/Object;

    .line 228
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Ljava/lang/String;

    .line 237
    :goto_0
    return-object v0

    .line 231
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 233
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->f:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 237
    goto :goto_0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 256
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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
    .line 259
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->g:Ljava/lang/Object;

    .line 260
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 261
    check-cast v0, Ljava/lang/String;

    .line 269
    :goto_0
    return-object v0

    .line 263
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 265
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 269
    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->h:Ljava/lang/Object;

    .line 292
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 293
    check-cast v0, Ljava/lang/String;

    .line 301
    :goto_0
    return-object v0

    .line 295
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 297
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->h:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 301
    goto :goto_0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public o()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->i:Ljava/lang/Object;

    .line 324
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 325
    check-cast v0, Ljava/lang/String;

    .line 333
    :goto_0
    return-object v0

    .line 327
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 329
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->i:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 333
    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 352
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->j:Ljava/lang/Object;

    .line 356
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 357
    check-cast v0, Ljava/lang/String;

    .line 365
    :goto_0
    return-object v0

    .line 359
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 361
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->j:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 365
    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public s()Ljava/lang/String;
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->k:Ljava/lang/Object;

    .line 388
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 389
    check-cast v0, Ljava/lang/String;

    .line 397
    :goto_0
    return-object v0

    .line 391
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 393
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 397
    goto :goto_0
.end method

.method public t()Z
    .locals 2

    .prologue
    .line 416
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public u()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/avast/a/a/a/aj;->l:Z

    return v0
.end method

.method public final v()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 744
    iget-byte v2, p0, Lcom/avast/a/a/a/aj;->E:B

    .line 745
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 794
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 745
    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 748
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 751
    :cond_2
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->h()Z

    move-result v2

    if-nez v2, :cond_3

    .line 752
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 755
    :cond_3
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->l()Z

    move-result v2

    if-nez v2, :cond_4

    .line 756
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 759
    :cond_4
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->J()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 760
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->K()Lcom/avast/a/a/a/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/s;->v()Z

    move-result v2

    if-nez v2, :cond_5

    .line 761
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 765
    :cond_5
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->L()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 766
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->M()Lcom/avast/a/a/a/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/y;->v()Z

    move-result v2

    if-nez v2, :cond_6

    .line 767
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 771
    :cond_6
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->N()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 772
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->O()Lcom/avast/a/a/a/a/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/a/ad;->v()Z

    move-result v2

    if-nez v2, :cond_7

    .line 773
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 777
    :cond_7
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->P()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 778
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->Q()Lcom/avast/a/a/a/am;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/am;->v()Z

    move-result v2

    if-nez v2, :cond_8

    .line 779
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 783
    :cond_8
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->ab()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 784
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->ac()Lcom/avast/a/a/a/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/a/a/a/ad;->v()Z

    move-result v2

    if-nez v2, :cond_9

    .line 785
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto :goto_1

    .line 789
    :cond_9
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->am()Z

    move-result v2

    if-nez v2, :cond_a

    .line 790
    iput-byte v1, p0, Lcom/avast/a/a/a/aj;->E:B

    goto/16 :goto_1

    .line 793
    :cond_a
    iput-byte v0, p0, Lcom/avast/a/a/a/aj;->E:B

    move v1, v0

    .line 794
    goto/16 :goto_1
.end method

.method public w()I
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 892
    iget v0, p0, Lcom/avast/a/a/a/aj;->F:I

    .line 893
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1010
    :goto_0
    return v0

    .line 895
    :cond_0
    const/4 v0, 0x0

    .line 896
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    .line 897
    iget v1, p0, Lcom/avast/a/a/a/aj;->c:I

    invoke-static {v2, v1}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 900
    :cond_1
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    .line 901
    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ap()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 904
    :cond_2
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    .line 905
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aq()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 908
    :cond_3
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    .line 909
    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ar()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 912
    :cond_4
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    .line 913
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->as()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 916
    :cond_5
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    .line 917
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->at()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 920
    :cond_6
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    .line 921
    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->au()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 924
    :cond_7
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    .line 925
    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->av()Lcom/google/a/c;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 928
    :cond_8
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    .line 929
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aw()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 932
    :cond_9
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    .line 933
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/avast/a/a/a/aj;->l:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 936
    :cond_a
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    .line 937
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ax()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 940
    :cond_b
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    .line 941
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->ay()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 944
    :cond_c
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    .line 945
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->az()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 948
    :cond_d
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    .line 949
    const/16 v1, 0xe

    iget v2, p0, Lcom/avast/a/a/a/aj;->p:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 952
    :cond_e
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    .line 953
    const/16 v1, 0xf

    iget v2, p0, Lcom/avast/a/a/a/aj;->q:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 956
    :cond_f
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    .line 957
    iget-object v1, p0, Lcom/avast/a/a/a/aj;->r:Lcom/avast/a/a/a/s;

    invoke-static {v6, v1}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 960
    :cond_10
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 961
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->s:Lcom/avast/a/a/a/y;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 964
    :cond_11
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 965
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->t:Lcom/avast/a/a/a/a/ad;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 968
    :cond_12
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_13

    .line 969
    const/16 v1, 0x13

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->u:Lcom/avast/a/a/a/am;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 972
    :cond_13
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    const/high16 v2, 0x8

    if-ne v1, v2, :cond_14

    .line 973
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->v:Lcom/avast/a/a/a/m;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 976
    :cond_14
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    const/high16 v2, 0x10

    if-ne v1, v2, :cond_15

    .line 977
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->w:Lcom/avast/a/a/a/ag;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 980
    :cond_15
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    const/high16 v2, 0x20

    if-ne v1, v2, :cond_16

    .line 981
    const/16 v1, 0x16

    iget-boolean v2, p0, Lcom/avast/a/a/a/aj;->x:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_16
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    const/high16 v2, 0x40

    if-ne v1, v2, :cond_17

    .line 985
    const/16 v1, 0xc8

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aA()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_17
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    const/high16 v2, 0x80

    if-ne v1, v2, :cond_18

    .line 989
    const/16 v1, 0xc9

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->z:Lcom/avast/a/a/a/p;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    :cond_18
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    const/high16 v2, 0x100

    if-ne v1, v2, :cond_19

    .line 993
    const/16 v1, 0xca

    iget-object v2, p0, Lcom/avast/a/a/a/aj;->A:Lcom/avast/a/a/a/ad;

    invoke-static {v1, v2}, Lcom/google/a/e;->d(ILcom/google/a/aa;)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_19
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    const/high16 v2, 0x200

    if-ne v1, v2, :cond_1a

    .line 997
    const/16 v1, 0xcb

    iget v2, p0, Lcom/avast/a/a/a/aj;->B:I

    invoke-static {v1, v2}, Lcom/google/a/e;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    :cond_1a
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x400

    and-int/2addr v1, v2

    const/high16 v2, 0x400

    if-ne v1, v2, :cond_1b

    .line 1001
    const/16 v1, 0xcc

    invoke-direct {p0}, Lcom/avast/a/a/a/aj;->aB()Lcom/google/a/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/e;->b(ILcom/google/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    :cond_1b
    iget v1, p0, Lcom/avast/a/a/a/aj;->b:I

    const/high16 v2, 0x800

    and-int/2addr v1, v2

    const/high16 v2, 0x800

    if-ne v1, v2, :cond_1c

    .line 1005
    const/16 v1, 0xcd

    iget-boolean v2, p0, Lcom/avast/a/a/a/aj;->D:Z

    invoke-static {v1, v2}, Lcom/google/a/e;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_1c
    invoke-virtual {p0}, Lcom/avast/a/a/a/aj;->ao()I

    move-result v1

    add-int/2addr v0, v1

    .line 1009
    iput v0, p0, Lcom/avast/a/a/a/aj;->F:I

    goto/16 :goto_0
.end method

.method public x()Z
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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

.method public y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/avast/a/a/a/aj;->m:Ljava/lang/Object;

    .line 430
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 431
    check-cast v0, Ljava/lang/String;

    .line 439
    :goto_0
    return-object v0

    .line 433
    :cond_0
    check-cast v0, Lcom/google/a/c;

    .line 435
    invoke-virtual {v0}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v0}, Lcom/google/a/u;->a(Lcom/google/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iput-object v1, p0, Lcom/avast/a/a/a/aj;->m:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    .line 439
    goto :goto_0
.end method

.method public z()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/avast/a/a/a/aj;->b:I

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
