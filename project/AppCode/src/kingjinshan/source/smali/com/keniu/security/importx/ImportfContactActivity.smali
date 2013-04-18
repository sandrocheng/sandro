.class public Lcom/keniu/security/importx/ImportfContactActivity;
.super Lcom/keniu/security/importx/BaseImportActivity;
.source "ImportfContactActivity.java"


# instance fields
.field private n:Landroid/view/WindowManager;

.field private o:Landroid/widget/TextView;

.field private volatile p:I

.field private final q:Lcom/keniu/security/importx/q;

.field private final r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/keniu/security/importx/BaseImportActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->p:I

    .line 34
    new-instance v0, Lcom/keniu/security/importx/q;

    invoke-direct {v0, p0}, Lcom/keniu/security/importx/q;-><init>(Lcom/keniu/security/importx/ImportfContactActivity;)V

    iput-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->q:Lcom/keniu/security/importx/q;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->r:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/importx/ImportfContactActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->p:I

    return v0
.end method

.method static synthetic a(Lcom/keniu/security/importx/ImportfContactActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/keniu/security/importx/ImportfContactActivity;->p:I

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/importx/ImportfContactActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->o:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/keniu/security/importx/ImportfContactActivity;)Lcom/keniu/security/importx/q;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->q:Lcom/keniu/security/importx/q;

    return-object v0
.end method

.method static synthetic d(Lcom/keniu/security/importx/ImportfContactActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/keniu/security/importx/ImportfContactActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->i:Z

    return v0
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 54
    invoke-virtual {p0}, Lcom/keniu/security/importx/ImportfContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300b5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->o:Landroid/widget/TextView;

    .line 56
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 62
    const/16 v1, -0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 63
    iget-object v1, p0, Lcom/keniu/security/importx/ImportfContactActivity;->n:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/keniu/security/importx/ImportfContactActivity;->o:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/importx/o;

    invoke-direct {v1, p0}, Lcom/keniu/security/importx/o;-><init>(Lcom/keniu/security/importx/ImportfContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected final e()I
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0b0444

    return v0
.end method

.method protected final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0b06a4

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final n()Lcom/keniu/security/importx/k;
    .locals 2

    .prologue
    .line 93
    invoke-static {p0}, Lcom/jxphone/mosecurity/logic/h;->d(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/l;

    move-result-object v0

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/l;->a()Ljava/util/List;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/b;

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 98
    new-instance v0, Lcom/keniu/security/importx/p;

    invoke-direct {v0, p0, p0, v1}, Lcom/keniu/security/importx/p;-><init>(Lcom/keniu/security/importx/ImportfContactActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/b;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x2

    .line 39
    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfContactActivity;->requestWindowFeature(I)Z

    .line 40
    iput-boolean v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->j:Z

    .line 41
    invoke-super {p0, p1}, Lcom/keniu/security/importx/BaseImportActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0444

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/keniu/security/importx/ImportfContactActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->n:Landroid/view/WindowManager;

    .line 45
    invoke-virtual {p0}, Lcom/keniu/security/importx/ImportfContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300b5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->o:Landroid/widget/TextView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, -0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/keniu/security/importx/ImportfContactActivity;->n:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/keniu/security/importx/ImportfContactActivity;->o:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/keniu/security/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->m:Landroid/widget/ListView;

    new-instance v1, Lcom/keniu/security/importx/o;

    invoke-direct {v1, p0}, Lcom/keniu/security/importx/o;-><init>(Lcom/keniu/security/importx/ImportfContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/keniu/security/importx/ImportfContactActivity;->n:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/keniu/security/importx/ImportfContactActivity;->o:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 132
    invoke-super {p0}, Lcom/keniu/security/importx/BaseImportActivity;->onDestroy()V

    .line 133
    return-void
.end method
