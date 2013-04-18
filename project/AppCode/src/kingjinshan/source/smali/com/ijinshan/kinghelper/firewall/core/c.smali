.class public final Lcom/ijinshan/kinghelper/firewall/core/c;
.super Lcom/keniu/security/commui/c;
.source "FirewallHideNumberTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->a:Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;

    .line 53
    invoke-direct {p0, p2}, Lcom/keniu/security/commui/c;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 57
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->c:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3f666666

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 58
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->c:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x41a0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 59
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 60
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->e:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->e:Landroid/view/View;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->g:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->e:Landroid/view/View;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->h:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/core/c;->a(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/LinearLayout;

    if-ne v0, v1, :cond_0

    .line 74
    check-cast p1, Landroid/widget/LinearLayout;

    .line 75
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ijinshan/kinghelper/firewall/core/c;->a(Landroid/view/View;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 85
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 87
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->t()V

    .line 88
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(ZZ)V

    .line 89
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/core/c;->c()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/c;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/core/c;->c()V

    .line 93
    :cond_1
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/core/c;->c()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method
