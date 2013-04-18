.class public final Lcom/keniu/security/util/MyAlertController;
.super Ljava/lang/Object;
.source "MyAlertController.java"


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Z

.field private F:Landroid/widget/ListAdapter;

.field private G:I

.field private H:Landroid/os/Handler;

.field private I:Z

.field a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/DialogInterface;

.field private final d:Landroid/view/Window;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/widget/ListView;

.field private h:Landroid/view/View;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/os/Message;

.field private r:Z

.field private s:Landroid/widget/Button;

.field private t:Ljava/lang/CharSequence;

.field private u:Landroid/os/Message;

.field private v:Z

.field private w:Landroid/widget/Button;

.field private x:Ljava/lang/CharSequence;

.field private y:Landroid/os/Message;

.field private z:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/util/MyAlertController;->m:Z

    .line 67
    iput-boolean v1, p0, Lcom/keniu/security/util/MyAlertController;->n:Z

    .line 74
    iput-boolean v1, p0, Lcom/keniu/security/util/MyAlertController;->r:Z

    .line 81
    iput-boolean v1, p0, Lcom/keniu/security/util/MyAlertController;->v:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    .line 106
    iput-boolean v1, p0, Lcom/keniu/security/util/MyAlertController;->I:Z

    .line 108
    new-instance v0, Lcom/keniu/security/util/ah;

    invoke-direct {v0, p0}, Lcom/keniu/security/util/ah;-><init>(Lcom/keniu/security/util/MyAlertController;)V

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    .line 164
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->b:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/keniu/security/util/MyAlertController;->c:Landroid/content/DialogInterface;

    .line 166
    iput-object p3, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    .line 167
    new-instance v0, Lcom/keniu/security/util/ao;

    invoke-direct {v0, p2}, Lcom/keniu/security/util/ao;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->H:Landroid/os/Handler;

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/util/MyAlertController;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    return p1
.end method

.method static synthetic a(Lcom/keniu/security/util/MyAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->F:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/keniu/security/util/MyAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    return-object p1
.end method

.method private a(Landroid/widget/Button;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 536
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 537
    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 538
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802b2

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802b5

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 544
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 545
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0802de

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 404
    .line 406
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 412
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->D:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 417
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move v0, v4

    .line 438
    :goto_0
    return v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    .line 421
    :goto_1
    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    .line 426
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v1

    .line 419
    goto :goto_1

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v1

    .line 435
    goto :goto_0
.end method

.method static synthetic a(Lcom/keniu/security/util/MyAlertController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/keniu/security/util/MyAlertController;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->q:Landroid/os/Message;

    return-object v0
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const v4, 0x7f0802e2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 442
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    .line 444
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 447
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f080270

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    .line 449
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f080267

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 465
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/keniu/security/util/MyAlertController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/keniu/security/util/MyAlertController;->r:Z

    return p1
.end method

.method private static c(Landroid/view/View;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 189
    :goto_0
    return v0

    .line 175
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    move v0, v2

    .line 176
    goto :goto_0

    .line 179
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 181
    :cond_2
    if-lez v0, :cond_3

    .line 182
    add-int/lit8 v0, v0, -0x1

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 184
    invoke-static {v1}, Lcom/keniu/security/util/MyAlertController;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 185
    goto :goto_0

    :cond_3
    move v0, v2

    .line 189
    goto :goto_0
.end method

.method static synthetic c(Lcom/keniu/security/util/MyAlertController;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/keniu/security/util/MyAlertController;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/keniu/security/util/MyAlertController;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/keniu/security/util/MyAlertController;->v:Z

    return p1
.end method

.method static synthetic d(Lcom/keniu/security/util/MyAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    return-object v0
.end method

.method private d()V
    .locals 10

    .prologue
    const v3, 0x7f0802e2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 336
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 338
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f080270

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f080267

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e6

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v6

    :goto_1
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802e8

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802e7

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    :goto_3
    if-ne v0, v9, :cond_b

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    :cond_1
    :goto_4
    if-eqz v0, :cond_d

    move v1, v9

    .line 341
    :goto_5
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802dd

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 343
    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->b:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v5, 0x101005d

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 346
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->D:Landroid/view/View;

    if-eqz v3, :cond_e

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/keniu/security/util/MyAlertController;->D:Landroid/view/View;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802de

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :goto_6
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802e5

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 350
    if-nez v1, :cond_2

    .line 351
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 356
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 358
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802e4

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 360
    iget-boolean v3, p0, Lcom/keniu/security/util/MyAlertController;->I:Z

    if-eqz v3, :cond_11

    .line 361
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02021c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    :goto_7
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    iget-boolean v3, p0, Lcom/keniu/security/util/MyAlertController;->m:Z

    if-eqz v3, :cond_3

    .line 367
    iget v3, p0, Lcom/keniu/security/util/MyAlertController;->i:I

    iget v4, p0, Lcom/keniu/security/util/MyAlertController;->j:I

    iget v5, p0, Lcom/keniu/security/util/MyAlertController;->k:I

    iget v6, p0, Lcom/keniu/security/util/MyAlertController;->l:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 370
    :cond_3
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 371
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 393
    :cond_4
    :goto_8
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->F:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->F:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 395
    iget v0, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    if-ltz v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    invoke-virtual {v0, v1, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 397
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 400
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    return-void

    .line 338
    :cond_6
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v8, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 339
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v9

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v1, 0x4

    goto/16 :goto_3

    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_4

    :cond_c
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_4

    :cond_d
    move v1, v6

    goto/16 :goto_5

    .line 346
    :cond_e
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v9

    :goto_9
    if-eqz v3, :cond_10

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802e0

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_f
    move v3, v6

    goto :goto_9

    :cond_10
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v4, 0x7f0802de

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 363
    :cond_11
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v4, 0x7f080267

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 374
    :cond_12
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8
.end method

.method static synthetic e(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->u:Landroid/os/Message;

    return-object v0
.end method

.method private e()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 476
    .line 480
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e6

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    .line 482
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 492
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802e8

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    .line 494
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 505
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802e7

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    .line 507
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    .line 522
    :goto_2
    if-ne v0, v4, :cond_4

    .line 523
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    .line 530
    :cond_0
    :goto_3
    if-eqz v0, :cond_6

    move v0, v4

    :goto_4
    return v0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v4

    .line 489
    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 502
    or-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_1

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 515
    or-int/lit8 v0, v1, 0x4

    goto :goto_2

    .line 524
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 525
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    .line 526
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v0, v3

    .line 530
    goto :goto_4
.end method

.method static synthetic f(Lcom/keniu/security/util/MyAlertController;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/keniu/security/util/MyAlertController;->r:Z

    return v0
.end method

.method static synthetic g(Lcom/keniu/security/util/MyAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Message;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->y:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic i(Lcom/keniu/security/util/MyAlertController;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/keniu/security/util/MyAlertController;->v:Z

    return v0
.end method

.method static synthetic j(Lcom/keniu/security/util/MyAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->c:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic k(Lcom/keniu/security/util/MyAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lcom/keniu/security/util/MyAlertController;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/util/MyAlertController;->I:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const v5, 0x7f0802e2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 194
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v9}, Landroid/view/Window;->requestFeature(I)Z

    .line 196
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    invoke-static {v0}, Lcom/keniu/security/util/MyAlertController;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const/high16 v1, 0x2

    const/high16 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0300c0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 201
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 203
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 204
    const-string v2, "density"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 206
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 207
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 208
    const/16 v4, 0xf0

    if-le v2, v4, :cond_2

    const/16 v4, 0x140

    if-gt v0, v4, :cond_9

    .line 209
    :cond_2
    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 213
    :goto_0
    const/16 v0, 0x11

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 214
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 215
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e1

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v1, v6}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f080270

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f080267

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e6

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v6

    :goto_2
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802e8

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->t:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802e7

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->x:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v1

    :goto_4
    if-ne v0, v9, :cond_f

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    :cond_4
    :goto_5
    if-eqz v0, :cond_11

    move v1, v9

    :goto_6
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v2, 0x7f0802dd

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->b:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v5, 0x101005d

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->D:Landroid/view/View;

    if-eqz v3, :cond_12

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/keniu/security/util/MyAlertController;->D:Landroid/view/View;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802de

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802e5

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v1, :cond_5

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802e4

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-boolean v3, p0, Lcom/keniu/security/util/MyAlertController;->I:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02021c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/keniu/security/util/MyAlertController;->m:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/keniu/security/util/MyAlertController;->i:I

    iget v4, p0, Lcom/keniu/security/util/MyAlertController;->j:I

    iget v5, p0, Lcom/keniu/security/util/MyAlertController;->k:I

    iget v6, p0, Lcom/keniu/security/util/MyAlertController;->l:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_6
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_7
    :goto_9
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->F:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->F:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    invoke-virtual {v0, v1, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget v1, p0, Lcom/keniu/security/util/MyAlertController;->G:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    return-void

    .line 211
    :cond_9
    const/high16 v0, 0x4396

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0

    .line 215
    :cond_a
    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v8, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v9

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->t:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->s:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    iget-object v2, p0, Lcom/keniu/security/util/MyAlertController;->x:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v1, 0x4

    goto/16 :goto_4

    :cond_f
    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    :cond_10
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/keniu/security/util/MyAlertController;->w:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/keniu/security/util/MyAlertController;->a(Landroid/widget/Button;)V

    goto/16 :goto_5

    :cond_11
    move v1, v6

    goto/16 :goto_6

    :cond_12
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    move v3, v9

    :goto_a
    if-eqz v3, :cond_14

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v3, 0x7f0802e0

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_13
    move v3, v6

    goto :goto_a

    :cond_14
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v4, 0x7f0802de

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    :cond_15
    iget-object v3, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v4, 0x7f080267

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    :cond_16
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->d:Landroid/view/Window;

    const v1, 0x7f0802e3

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public final a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 281
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->H:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 284
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_0
    iput-object p2, p0, Lcom/keniu/security/util/MyAlertController;->p:Ljava/lang/CharSequence;

    .line 288
    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->q:Landroid/os/Message;

    .line 299
    :goto_1
    return-void

    .line 292
    :pswitch_1
    iput-object p2, p0, Lcom/keniu/security/util/MyAlertController;->t:Ljava/lang/CharSequence;

    .line 293
    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->u:Landroid/os/Message;

    goto :goto_1

    .line 297
    :pswitch_2
    iput-object p2, p0, Lcom/keniu/security/util/MyAlertController;->x:Ljava/lang/CharSequence;

    .line 298
    iput-object v0, p0, Lcom/keniu/security/util/MyAlertController;->y:Landroid/os/Message;

    goto :goto_1

    :cond_0
    move-object v0, p4

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->D:Landroid/view/View;

    .line 230
    return-void
.end method

.method public final a(Landroid/view/View;IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/util/MyAlertController;->m:Z

    .line 255
    iput p2, p0, Lcom/keniu/security/util/MyAlertController;->i:I

    .line 256
    iput p3, p0, Lcom/keniu/security/util/MyAlertController;->j:I

    .line 257
    iput p4, p0, Lcom/keniu/security/util/MyAlertController;->k:I

    .line 258
    iput p5, p0, Lcom/keniu/security/util/MyAlertController;->l:I

    .line 259
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->e:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/keniu/security/util/MyAlertController;->E:Z

    .line 308
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->g:Landroid/widget/ListView;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->h:Landroid/view/View;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/keniu/security/util/MyAlertController;->m:Z

    .line 245
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/keniu/security/util/MyAlertController;->f:Ljava/lang/CharSequence;

    .line 234
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->z:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/keniu/security/util/MyAlertController;->o:Landroid/widget/Button;

    return-object v0
.end method
