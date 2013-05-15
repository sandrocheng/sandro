.class public Lcom/dolphin/browser/addons/h;
.super Ljava/lang/Object;
.source "Browser.java"


# instance fields
.field private A:Ljava/util/HashSet;

.field private B:Ljava/util/HashSet;

.field public a:Lcom/dolphin/browser/addons/a;

.field public b:Lcom/dolphin/browser/addons/cb;

.field public c:Lcom/dolphin/browser/addons/ab;

.field public d:Lcom/dolphin/browser/addons/bt;

.field public e:Lcom/dolphin/browser/addons/by;

.field public f:Lcom/dolphin/browser/addons/g;

.field public g:Lcom/dolphin/browser/addons/ad;

.field public h:Lcom/dolphin/browser/addons/bs;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private k:I

.field private l:Lcom/dolphin/browser/addons/bv;

.field private m:Lcom/dolphin/browser/addons/bp;

.field private n:Lcom/dolphin/browser/addons/x;

.field private o:Landroid/os/Handler;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Landroid/graphics/Bitmap;

.field private s:I

.field private t:Lcom/dolphin/browser/addons/bo;

.field private u:Ljava/util/HashSet;

.field private v:Ljava/util/HashSet;

.field private w:Z

.field private x:Landroid/graphics/Bitmap;

.field private y:Lcom/dolphin/browser/addons/bo;

.field private z:Ljava/util/HashSet;


# direct methods
.method constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v1, p0, Lcom/dolphin/browser/addons/h;->p:Z

    .line 108
    iput v1, p0, Lcom/dolphin/browser/addons/h;->s:I

    .line 110
    new-instance v0, Lcom/dolphin/browser/addons/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/i;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->a:Lcom/dolphin/browser/addons/a;

    .line 200
    new-instance v0, Lcom/dolphin/browser/addons/p;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/p;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->b:Lcom/dolphin/browser/addons/cb;

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->u:Ljava/util/HashSet;

    .line 244
    new-instance v0, Lcom/dolphin/browser/addons/q;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/q;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->c:Lcom/dolphin/browser/addons/ab;

    .line 267
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->v:Ljava/util/HashSet;

    .line 296
    iput-boolean v1, p0, Lcom/dolphin/browser/addons/h;->w:Z

    .line 299
    new-instance v0, Lcom/dolphin/browser/addons/r;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/r;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->d:Lcom/dolphin/browser/addons/bt;

    .line 345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->z:Ljava/util/HashSet;

    .line 374
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->A:Ljava/util/HashSet;

    .line 375
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->B:Ljava/util/HashSet;

    .line 376
    new-instance v0, Lcom/dolphin/browser/addons/s;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/s;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->e:Lcom/dolphin/browser/addons/by;

    .line 465
    new-instance v0, Lcom/dolphin/browser/addons/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/t;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->f:Lcom/dolphin/browser/addons/g;

    .line 516
    new-instance v0, Lcom/dolphin/browser/addons/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/u;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->g:Lcom/dolphin/browser/addons/ad;

    .line 545
    new-instance v0, Lcom/dolphin/browser/addons/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/v;-><init>(Lcom/dolphin/browser/addons/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->h:Lcom/dolphin/browser/addons/bs;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Browser "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->i:Ljava/lang/String;

    .line 44
    iput p1, p0, Lcom/dolphin/browser/addons/h;->j:I

    .line 45
    new-instance v0, Lcom/dolphin/browser/addons/w;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/addons/w;-><init>(Lcom/dolphin/browser/addons/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/h;->o:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/h;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->r:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private a(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->l:Lcom/dolphin/browser/addons/bv;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/dolphin/browser/addons/bv;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/addons/h;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->l:Lcom/dolphin/browser/addons/bv;

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/dolphin/browser/addons/bv;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/h;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/dolphin/browser/addons/h;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/addons/h;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/addons/h;)I
    .locals 1
    .parameter

    .prologue
    .line 108
    iget v0, p0, Lcom/dolphin/browser/addons/h;->s:I

    return v0
.end method

.method static synthetic d(Lcom/dolphin/browser/addons/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/dolphin/browser/addons/h;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->u:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->v:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/x;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->n:Lcom/dolphin/browser/addons/x;

    return-object v0
.end method

.method static synthetic h(Lcom/dolphin/browser/addons/h;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->x:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/browser/addons/h;)Z
    .locals 1
    .parameter

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/dolphin/browser/addons/h;->w:Z

    return v0
.end method

.method static synthetic j(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->z:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic k(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->B:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic l(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;
    .locals 1
    .parameter

    .prologue
    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->A:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic m(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bp;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->m:Lcom/dolphin/browser/addons/bp;

    return-object v0
.end method

.method static synthetic n(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bo;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->t:Lcom/dolphin/browser/addons/bo;

    return-object v0
.end method

.method static synthetic o(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bo;
    .locals 1
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/dolphin/browser/addons/h;->y:Lcom/dolphin/browser/addons/bo;

    return-object v0
.end method


# virtual methods
.method a()Lcom/dolphin/browser/addons/af;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/dolphin/browser/addons/j;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/j;-><init>(Lcom/dolphin/browser/addons/h;)V

    return-object v0
.end method

.method a(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput p1, p0, Lcom/dolphin/browser/addons/h;->k:I

    .line 75
    return-void
.end method

.method a(Lcom/dolphin/browser/addons/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/dolphin/browser/addons/h;->m:Lcom/dolphin/browser/addons/bp;

    .line 589
    return-void
.end method

.method a(Lcom/dolphin/browser/addons/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/dolphin/browser/addons/h;->l:Lcom/dolphin/browser/addons/bv;

    .line 593
    return-void
.end method

.method a(Lcom/dolphin/browser/addons/x;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/dolphin/browser/addons/h;->n:Lcom/dolphin/browser/addons/x;

    .line 585
    return-void
.end method

.method b()Lcom/dolphin/browser/addons/aj;
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/dolphin/browser/addons/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/k;-><init>(Lcom/dolphin/browser/addons/h;)V

    return-object v0
.end method

.method c()Lcom/dolphin/browser/addons/ao;
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/dolphin/browser/addons/l;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/l;-><init>(Lcom/dolphin/browser/addons/h;)V

    return-object v0
.end method

.method d()Lcom/dolphin/browser/addons/az;
    .locals 1

    .prologue
    .line 347
    new-instance v0, Lcom/dolphin/browser/addons/m;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/m;-><init>(Lcom/dolphin/browser/addons/h;)V

    return-object v0
.end method

.method e()Lcom/dolphin/browser/addons/bk;
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/dolphin/browser/addons/n;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/n;-><init>(Lcom/dolphin/browser/addons/h;)V

    return-object v0
.end method

.method f()Lcom/dolphin/browser/addons/bm;
    .locals 1

    .prologue
    .line 429
    new-instance v0, Lcom/dolphin/browser/addons/o;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/addons/o;-><init>(Lcom/dolphin/browser/addons/h;)V

    return-object v0
.end method
