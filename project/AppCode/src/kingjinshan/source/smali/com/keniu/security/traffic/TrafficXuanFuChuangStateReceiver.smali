.class public Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TrafficXuanFuChuangStateReceiver.java"


# static fields
.field private static S:I = 0x0

.field protected static final a:I = 0x0

.field protected static final b:I = 0x2

.field protected static final c:I = 0x1

.field protected static final d:I = 0x3

.field protected static final e:I

.field public static f:I

.field public static g:I

.field public static h:Lcom/keniu/security/traffic/db;

.field public static j:Landroid/widget/LinearLayout;

.field public static k:Landroid/widget/FrameLayout;


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:J

.field private E:J

.field private F:J

.field private G:Landroid/view/LayoutInflater;

.field private H:Lcom/keniu/security/traffic/ClickableGridView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Ljava/util/Vector;

.field private N:Landroid/widget/ImageView;

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/LinearLayout;

.field private T:Landroid/os/Handler;

.field public final i:I

.field public l:Lcom/keniu/security/traffic/dc;

.field private m:Landroid/view/WindowManager;

.field private n:Landroid/view/WindowManager$LayoutParams;

.field private final o:F

.field private final p:F

.field private final q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private volatile x:Landroid/content/Context;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    sput v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f:I

    .line 61
    sput v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    .line 72
    new-instance v0, Lcom/keniu/security/traffic/db;

    invoke-direct {v0}, Lcom/keniu/security/traffic/db;-><init>()V

    sput-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h:Lcom/keniu/security/traffic/db;

    .line 74
    sput-object v2, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    .line 75
    sput-object v2, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    .line 89
    sput v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->S:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    .line 51
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->o:F

    .line 52
    const/high16 v0, 0x4270

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->p:F

    .line 53
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->q:F

    .line 54
    iput v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r:F

    .line 55
    iput v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s:F

    .line 56
    iput v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t:F

    .line 57
    iput v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u:F

    .line 58
    iput v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v:F

    .line 59
    iput v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w:F

    .line 73
    const/4 v0, 0x2

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->i:I

    .line 327
    new-instance v0, Lcom/keniu/security/traffic/dv;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/dv;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->l:Lcom/keniu/security/traffic/dc;

    .line 598
    new-instance v0, Lcom/keniu/security/traffic/dx;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/dx;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->T:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->F:J

    return-wide v0
.end method

.method static synthetic B(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->E:J

    return-wide v0
.end method

.method static synthetic C(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->R:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic D(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->M:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic E(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->T:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r:F

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v:F

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->B:J

    return-wide p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Lcom/keniu/security/traffic/ClickableGridView;)Lcom/keniu/security/traffic/ClickableGridView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->H:Lcom/keniu/security/traffic/ClickableGridView;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->M:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s:F

    return v0
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w:F

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->A:J

    return-wide p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic b(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t:F

    return v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->D:J

    return-wide p1
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u:F

    return v0
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->F:J

    return-wide p1
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic d(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V
    .locals 10
    .parameter

    .prologue
    const-wide/32 v8, 0x36ee80

    const/4 v7, 0x0

    const/4 v3, -0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 43
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->G:Landroid/view/LayoutInflater;

    const v1, 0x7f030122

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sput-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080413

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->R:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080414

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ClickableGridView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->H:Lcom/keniu/security/traffic/ClickableGridView;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->H:Lcom/keniu/security/traffic/ClickableGridView;

    invoke-virtual {v0, v6}, Lcom/keniu/security/traffic/ClickableGridView;->setVisibility(I)V

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080178

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080410

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080415

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->P:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->P:Landroid/widget/ImageView;

    new-instance v1, Lcom/keniu/security/traffic/dz;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dz;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080411

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080412

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x4140

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    sget-object v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u7f51\u7edc\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    const-string v1, "\u672c\u6b21\u8fde\u63a5\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->t:J

    sub-long v0, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, v0, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5c0f\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-long/2addr v0, v8

    const-wide/32 v3, 0xea60

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->C:J

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->E:J

    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h()V

    invoke-static {}, Lcom/keniu/security/traffic/z;->d()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    const-string v1, "\u60a8\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u7f51\u7edc\uff1a2G/3G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    const-string v1, "\u672c\u6708\u5df2\u7528\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    sget-wide v1, Lcom/keniu/security/traffic/dd;->a:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    sget-wide v1, Lcom/keniu/security/traffic/dd;->a:J

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    new-instance v1, Lcom/keniu/security/traffic/ea;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ea;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    const-string v1, "\u663e\u793a\u5f53\u524d\u8fd0\u884c\u7684\u53ef\u8054\u7f51\u7a0b\u5e8f\u56fe\u6807\n\u70b9\u51fb\u8fdb\u5165\u8054\u7f51\u76d1\u63a7\u9875\u9762"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v0, Lcom/keniu/security/traffic/eb;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/eb;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0}, Lcom/keniu/security/traffic/eb;->start()V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u540e\u53f0\u53ef\u8054\u7f51\u7528\u6237\u8fdb\u7a0b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r:F

    return v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->r:F

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->S:I

    return v0
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->C:J

    return-wide p1
.end method

.method static synthetic e(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s:F

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->s:F

    return v0
.end method

.method static synthetic f()I
    .locals 2

    .prologue
    .line 43
    sget v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->S:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->S:I

    return v0
.end method

.method static synthetic f(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->E:J

    return-wide p1
.end method

.method static synthetic g(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->v:F

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->S:I

    return v0
.end method

.method static synthetic h(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->w:F

    return v0
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 576
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h:Lcom/keniu/security/traffic/db;

    const-wide/16 v1, 0x3e8

    iget-object v3, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->l:Lcom/keniu/security/traffic/dc;

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/keniu/security/traffic/db;->a(IJLcom/keniu/security/traffic/dc;)Z

    .line 577
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->l:Lcom/keniu/security/traffic/dc;

    invoke-interface {v0, v4}, Lcom/keniu/security/traffic/dc;->a(I)Z

    .line 579
    return-void
.end method

.method static synthetic i(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t:F

    return v0
.end method

.method private i()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x36ee80

    const/4 v7, 0x0

    const/4 v3, -0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 645
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 793
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->G:Landroid/view/LayoutInflater;

    const v1, 0x7f030122

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 649
    sput-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 650
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080413

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->R:Landroid/widget/LinearLayout;

    .line 652
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    .line 654
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    .line 656
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080414

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ClickableGridView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->H:Lcom/keniu/security/traffic/ClickableGridView;

    .line 658
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->H:Lcom/keniu/security/traffic/ClickableGridView;

    invoke-virtual {v0, v6}, Lcom/keniu/security/traffic/ClickableGridView;->setVisibility(I)V

    .line 659
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080178

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    .line 660
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080410

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    .line 662
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080415

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->P:Landroid/widget/ImageView;

    .line 664
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->P:Landroid/widget/ImageView;

    new-instance v1, Lcom/keniu/security/traffic/dz;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dz;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 675
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    .line 677
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080411

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    .line 679
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f080412

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    .line 682
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 683
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 684
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 687
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 688
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 689
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 691
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x4140

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 692
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 694
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 695
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 696
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 698
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    sget-object v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 703
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u7f51\u7edc\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    const-string v1, "\u672c\u6b21\u8fde\u63a5\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 707
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->t:J

    sub-long v0, v1, v3

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long v3, v0, v8

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5c0f\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-long/2addr v0, v8

    const-wide/32 v3, 0xea60

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 756
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->C:J

    .line 757
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->E:J

    .line 758
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h()V

    .line 759
    invoke-static {}, Lcom/keniu/security/traffic/z;->d()Z

    move-result v0

    if-nez v0, :cond_4

    .line 760
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    const-string v1, "\u60a8\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301\u6b64\u529f\u80fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/util/at;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020225

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 728
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    const-string v1, "\u5f53\u524d\u7f51\u7edc\uff1a2G/3G"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    const-string v1, "\u672c\u6708\u5df2\u7528\uff1a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    sget-wide v1, Lcom/keniu/security/traffic/dd;->a:J

    invoke-static {v1, v2}, Lcom/keniu/security/util/ax;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 735
    sget-wide v1, Lcom/keniu/security/traffic/dd;->a:J

    iget-wide v3, v0, Lcom/keniu/security/traffic/y;->d:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 737
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    new-instance v1, Lcom/keniu/security/traffic/ea;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ea;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 764
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Lcom/keniu/security/a;->L()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 766
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    const-string v1, "\u663e\u793a\u5f53\u524d\u8fd0\u884c\u7684\u53ef\u8054\u7f51\u7a0b\u5e8f\u56fe\u6807\n\u70b9\u51fb\u8fdb\u5165\u8054\u7f51\u76d1\u63a7\u9875\u9762"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :goto_2
    new-instance v0, Lcom/keniu/security/traffic/eb;

    invoke-direct {v0, p0}, Lcom/keniu/security/traffic/eb;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0}, Lcom/keniu/security/traffic/eb;->start()V

    goto/16 :goto_0

    .line 768
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u540e\u53f0\u53ef\u8054\u7f51\u7528\u6237\u8fdb\u7a0b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic j(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u:F

    return v0
.end method

.method static synthetic k(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->t:F

    return v0
.end method

.method static synthetic l(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)F
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->u:F

    return v0
.end method

.method static synthetic m(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->B:J

    return-wide v0
.end method

.method static synthetic o(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->A:J

    return-wide v0
.end method

.method static synthetic p(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Lcom/keniu/security/traffic/ClickableGridView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->H:Lcom/keniu/security/traffic/ClickableGridView;

    return-object v0
.end method

.method static synthetic r(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->K:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->Q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic w(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic x(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic y(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->D:J

    return-wide v0
.end method

.method static synthetic z(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->C:J

    return-wide v0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->a(I)V

    .line 168
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->b(I)V

    .line 170
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h:Lcom/keniu/security/traffic/db;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/db;->a()V

    .line 172
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    sget-object v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 174
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    .line 178
    :cond_0
    return-void
.end method

.method protected final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    float-to-int v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 590
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    float-to-int v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 591
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sput v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f:I

    .line 592
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sput v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    .line 594
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    sget-object v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h:Lcom/keniu/security/traffic/db;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/db;->a()V

    .line 184
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    sget-object v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 186
    const/4 v0, 0x0

    sput-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    .line 187
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->d()V

    .line 191
    :cond_0
    return-void
.end method

.method protected final c()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 199
    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 200
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.keniu.security.traffic.TrafficTabActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 203
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected final d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 211
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 214
    :cond_0
    sput v4, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->S:I

    .line 216
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->G:Landroid/view/LayoutInflater;

    const v1, 0x7f030092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 218
    sput-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 220
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->y:Landroid/widget/ImageView;

    .line 222
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->z:Landroid/widget/TextView;

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->aq()I

    move-result v0

    sput v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f:I

    .line 227
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/a;->ar()I

    move-result v0

    sput v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    .line 232
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keniu/security/traffic/ds;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/ds;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 255
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keniu/security/traffic/dt;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/dt;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/keniu/security/traffic/du;

    invoke-direct {v1, p0}, Lcom/keniu/security/traffic/du;-><init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 306
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 307
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 311
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 312
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 315
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 316
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 317
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 321
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    sget-object v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->n:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    invoke-static {}, Lcom/keniu/security/traffic/z;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->A:J

    .line 324
    invoke-direct {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->h()V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 94
    iput-object p1, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->x:Landroid/content/Context;

    .line 95
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->m:Landroid/view/WindowManager;

    .line 98
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->G:Landroid/view/LayoutInflater;

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string v0, "com.keniu.security.traffic.XUANFUCHUANG_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->d()V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->b()V

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->a()V

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 115
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 116
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->y:Landroid/widget/ImageView;

    .line 118
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->z:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->l:Lcom/keniu/security/traffic/dc;

    invoke-interface {v0, v3}, Lcom/keniu/security/traffic/dc;->a(I)Z

    .line 122
    :cond_4
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 126
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040d

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    .line 136
    sget-object v0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->k:Landroid/widget/FrameLayout;

    const v1, 0x7f08040e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->N:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->l:Lcom/keniu/security/traffic/dc;

    invoke-interface {v0, v3}, Lcom/keniu/security/traffic/dc;->a(I)Z

    goto :goto_0

    .line 143
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 145
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->f:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->a(I)V

    .line 146
    invoke-static {p1}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    sget v1, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->g:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/a;->b(I)V

    goto/16 :goto_0

    .line 147
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.keniu.security.traffic.UPDATE_XUANFUCHUANG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    const-string v1, "kn_traffis_xuanfuchuang_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 154
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangStateReceiver;->d()V

    goto/16 :goto_0
.end method
