.class public final Lde;
.super Landroid/app/Dialog;


# instance fields
.field private a:Ldm;

.field private b:Landroid/view/View;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/tencent/powermanager/uilib/button/ButtonView;

.field private g:Lcom/tencent/powermanager/uilib/button/ButtonView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/high16 v0, 0x7f07

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde;->o:Z

    iput v1, p0, Lde;->p:I

    iput-boolean v1, p0, Lde;->q:Z

    iput-boolean v1, p0, Lde;->r:Z

    iput-object p1, p0, Lde;->c:Landroid/content/Context;

    iput v1, p0, Lde;->p:I

    iput-boolean v1, p0, Lde;->q:Z

    iput-boolean v1, p0, Lde;->r:Z

    iget-object v0, p0, Lde;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde;->b:Landroid/view/View;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lde;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde;->d:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lde;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    const v1, 0x7f080071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde;->n:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde;->p:I

    iput-boolean v0, p0, Lde;->q:Z

    iput-boolean v0, p0, Lde;->r:Z

    iget-object v0, p0, Lde;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lde;->i:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lde;->l:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lde;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lde;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lde;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_3
    return-void
.end method

.method public final a(ILandroid/view/View$OnClickListener;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lde;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lde;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lde;->p:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lde;->q:Z

    new-instance v1, Lcom/tencent/powermanager/uilib/button/ButtonView;

    iget-object v2, p0, Lde;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p3}, Lcom/tencent/powermanager/uilib/button/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lde;->f:Lcom/tencent/powermanager/uilib/button/ButtonView;

    iget-object v1, p0, Lde;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lde;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lde;->f:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lde;->f:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v0, p2}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lde;->f:Lcom/tencent/powermanager/uilib/button/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lde;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lde;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde;->f:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lde;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lde;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lde;->p:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lde;->r:Z

    new-instance v1, Lcom/tencent/powermanager/uilib/button/ButtonView;

    iget-object v2, p0, Lde;->c:Landroid/content/Context;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/tencent/powermanager/uilib/button/ButtonView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lde;->g:Lcom/tencent/powermanager/uilib/button/ButtonView;

    iget-object v1, p0, Lde;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lde;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lde;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lde;->g:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lde;->g:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v0, p1}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lde;->g:Lcom/tencent/powermanager/uilib/button/ButtonView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lde;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lde;->m:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde;->g:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lde;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ldm;)V
    .locals 0

    iput-object p1, p0, Lde;->a:Ldm;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lde;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lde;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lde;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lde;->e:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lde;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lde;->i:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lde;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lde;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lde;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde;->o:Z

    return-void
.end method

.method public final dismiss()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lde;->p:I

    iput-boolean v0, p0, Lde;->q:Z

    iput-boolean v0, p0, Lde;->r:Z

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lde;->b:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lde;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lde;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x4

    iget-boolean v0, p0, Lde;->o:Z

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lde;->a:Ldm;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lde;->a:Ldm;

    invoke-interface {v0, p0}, Ldm;->a(Landroid/app/Dialog;)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setCancelable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lde;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lde;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x5f

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v1, p0, Lde;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Lde;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lde;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lde;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lde;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lde;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lde;->d:Landroid/widget/TextView;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lde;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lde;->h:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lde;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final show()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget v0, p0, Lde;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-boolean v1, p0, Lde;->q:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lde;->f:Lcom/tencent/powermanager/uilib/button/ButtonView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde;->f:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lde;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lde;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde;->g:Lcom/tencent/powermanager/uilib/button/ButtonView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lde;->g:Lcom/tencent/powermanager/uilib/button/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/powermanager/uilib/button/ButtonView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
