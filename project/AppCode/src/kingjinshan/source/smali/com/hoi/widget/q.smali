.class public final Lcom/hoi/widget/q;
.super Lcom/keniu/security/util/ap;
.source "MyProgressDlg.java"


# instance fields
.field public a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/keniu/security/util/ap;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/hoi/widget/q;->a:I

    .line 28
    iput p2, p0, Lcom/hoi/widget/q;->f:I

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IB)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/keniu/security/util/ap;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/hoi/widget/q;->a:I

    .line 24
    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/hoi/widget/q;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/hoi/widget/q;

    invoke-direct {v0, p0, p1}, Lcom/hoi/widget/q;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hoi/widget/q;->setCancelable(Z)V

    .line 35
    return-object v0
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/hoi/widget/q;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 68
    iput p1, p0, Lcom/hoi/widget/q;->a:I

    .line 69
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/hoi/widget/q;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 63
    iput p1, p0, Lcom/hoi/widget/q;->a:I

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/hoi/widget/q;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/hoi/widget/q;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/hoi/widget/q;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/hoi/widget/q;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 77
    iget-object v0, p0, Lcom/hoi/widget/q;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p1, 0x64

    iget v3, p0, Lcom/hoi/widget/q;->a:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hoi/widget/q;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method

.method public final c(I)V
    .locals 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/hoi/widget/q;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    iget-object v0, p0, Lcom/hoi/widget/q;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p1, 0x64

    iget v3, p0, Lcom/hoi/widget/q;->a:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/hoi/widget/q;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    const v2, 0x7f0300c3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 45
    const v0, 0x7f0802eb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/hoi/widget/q;->c:Landroid/widget/ProgressBar;

    .line 46
    const v0, 0x7f0802ea

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hoi/widget/q;->b:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0802ec

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hoi/widget/q;->d:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0802ed

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hoi/widget/q;->e:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/hoi/widget/q;->c:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 50
    iget-object v0, p0, Lcom/hoi/widget/q;->d:Landroid/widget/TextView;

    const-string v3, "0%"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget v0, p0, Lcom/hoi/widget/q;->f:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/keniu/security/util/ap;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, v2}, Lcom/hoi/widget/q;->a(Landroid/view/View;)V

    .line 54
    invoke-super {p0, p1}, Lcom/keniu/security/util/ap;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method
