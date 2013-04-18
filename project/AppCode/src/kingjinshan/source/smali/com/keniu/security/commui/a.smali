.class public final Lcom/keniu/security/commui/a;
.super Lcom/keniu/security/commui/c;
.source "SysToast.java"


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/keniu/security/commui/c;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 22
    iget-object v1, p0, Lcom/keniu/security/commui/a;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 26
    iget-object v0, p0, Lcom/keniu/security/commui/a;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 27
    iget-object v0, p0, Lcom/keniu/security/commui/a;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commui/a;->e:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/keniu/security/commui/a;->e:Landroid/view/View;

    const v1, 0x7f080086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keniu/security/commui/a;->a:Landroid/widget/TextView;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/commui/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method
