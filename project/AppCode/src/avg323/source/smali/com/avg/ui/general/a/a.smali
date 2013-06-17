.class public abstract Lcom/avg/ui/general/a/a;
.super Landroid/support/v4/app/i;


# static fields
.field public static r:Z


# instance fields
.field private n:Landroid/widget/Button;

.field private o:Landroid/support/v4/app/o;

.field private p:Landroid/content/ServiceConnection;

.field public s:[Ljava/lang/String;

.field public t:Z

.field protected u:Lcom/avg/toolkit/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/avg/ui/general/a/a;->r:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    iput-object v0, p0, Lcom/avg/ui/general/a/a;->n:Landroid/widget/Button;

    iput-object v0, p0, Lcom/avg/ui/general/a/a;->s:[Ljava/lang/String;

    iput-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    new-instance v0, Lcom/avg/ui/general/a/b;

    invoke-direct {v0, p0}, Lcom/avg/ui/general/a/b;-><init>(Lcom/avg/ui/general/a/a;)V

    iput-object v0, p0, Lcom/avg/ui/general/a/a;->p:Landroid/content/ServiceConnection;

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->n:Landroid/widget/Button;

    new-instance v1, Lcom/avg/ui/general/a/e;

    invoke-direct {v1, p0}, Lcom/avg/ui/general/a/e;-><init>(Lcom/avg/ui/general/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(I)V
.end method

.method public a(IF)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-direct {v2, v3, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(IZ)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/avg/ui/general/d;->options:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avg/ui/general/a/a;->n:Landroid/widget/Button;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->n:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/avg/ui/general/c;->btn_menu_actionbar:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/avg/ui/general/d;->buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/avg/ui/general/d;->buttons:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/avg/ui/general/a/a;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0, p3}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Landroid/support/v4/app/z;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    invoke-virtual {p0, p2}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/z;->a(I)Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->a()I

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p0, p3}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/view/Menu;II)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->openOptionsMenu()V

    return-void
.end method

.method protected a(Lcom/avg/toolkit/ads/WebViewAdsManager;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-static {}, Lcom/avg/ui/general/o;->c()Z

    move-result v5

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/avg/toolkit/ads/WebViewAdsManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected a(ZIILjava/lang/String;ZI)V
    .locals 3

    invoke-virtual {p0, p6}, Lcom/avg/ui/general/a/a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/avg/ui/general/d;->home:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v2, Lcom/avg/ui/general/a/c;

    invoke-direct {v2, p0, v0, p3, p2}, Lcom/avg/ui/general/a/c;-><init>(Lcom/avg/ui/general/a/a;Landroid/widget/Button;II)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p1, :cond_0

    new-instance v2, Lcom/avg/ui/general/a/d;

    invoke-direct {v2, p0}, Lcom/avg/ui/general/a/d;-><init>(Lcom/avg/ui/general/a/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    sget v0, Lcom/avg/ui/general/d;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p6, p5}, Lcom/avg/ui/general/a/a;->a(IZ)V

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/avg/ui/general/a/a;->k()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->r()V

    goto :goto_0
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public c(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avg/ui/general/a/a;->n:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/z;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    invoke-virtual {v1}, Landroid/support/v4/app/z;->a()I

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 0

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->finish()V

    return-void
.end method

.method protected h()V
    .locals 7

    const/4 v2, 0x0

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/avg/ui/general/a/a;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v0, Lcom/avg/ui/general/b/e;

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;IZ[Ljava/lang/String;Z)V

    new-instance v1, Lcom/avg/ui/general/a/g;

    invoke-direct {v1, p0}, Lcom/avg/ui/general/a/g;-><init>(Lcom/avg/ui/general/a/a;)V

    invoke-virtual {v6, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->g()V

    return-void
.end method

.method protected abstract j()Ljava/lang/Class;
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->f()Landroid/support/v4/app/o;

    move-result-object v0

    iput-object v0, p0, Lcom/avg/ui/general/a/a;->o:Landroid/support/v4/app/o;

    sget-boolean v0, Lcom/avg/ui/general/a/a;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avg/ui/general/a/a;->requestWindowFeature(I)Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->g()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/i;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public p()V
    .locals 3

    invoke-virtual {p0}, Lcom/avg/ui/general/a/a;->j()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->p:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/avg/ui/general/a/a;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    return-void
.end method

.method public q()V
    .locals 1

    iget-boolean v0, p0, Lcom/avg/ui/general/a/a;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->p:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/avg/ui/general/a/a;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/ui/general/a/a;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avg/ui/general/a/a;->u:Lcom/avg/toolkit/e/a;

    :cond_0
    return-void
.end method

.method protected r()V
    .locals 2

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->n:Landroid/widget/Button;

    new-instance v1, Lcom/avg/ui/general/a/f;

    invoke-direct {v1, p0}, Lcom/avg/ui/general/a/f;-><init>(Lcom/avg/ui/general/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public s()Lcom/avg/toolkit/e/a;
    .locals 1

    iget-object v0, p0, Lcom/avg/ui/general/a/a;->u:Lcom/avg/toolkit/e/a;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/avg/ui/general/a/a;->t:Z

    return v0
.end method
