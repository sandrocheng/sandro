.class public final Lcom/ijinshan/kinghelper/firewall/core/l;
.super Lcom/keniu/security/commui/c;
.source "FirewallSmsTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->a:Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;

    .line 54
    invoke-direct {p0, p2}, Lcom/keniu/security/commui/c;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 58
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->c:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x41a0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 60
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 61
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->e:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->e:Landroid/view/View;

    const v1, 0x7f08038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->e:Landroid/view/View;

    const v1, 0x7f08038a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->g:Landroid/widget/Button;

    .line 75
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/core/l;->a(Landroid/view/View;)V

    .line 76
    return-void

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 84
    check-cast p1, Landroid/widget/LinearLayout;

    .line 85
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ijinshan/kinghelper/firewall/core/l;->a(Landroid/view/View;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 95
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/l;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/core/l;->c()V

    .line 98
    :cond_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/core/l;->c()V

    .line 104
    const/4 v0, 0x1

    return v0
.end method
