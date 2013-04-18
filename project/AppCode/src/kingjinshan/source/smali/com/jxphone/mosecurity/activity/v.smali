.class abstract Lcom/jxphone/mosecurity/activity/v;
.super Lcom/jxphone/mosecurity/activity/BaseActivity;
.source "KnFrameActivity.java"


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/BaseActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/v;->b:Z

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/v;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 45
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/v;->b:Z

    if-eqz v0, :cond_0

    .line 46
    const v0, 0x7f030098

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/v;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/v;->d:Landroid/view/ViewGroup;

    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/v;->j()I

    move-result v0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/v;->d:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/v;->b:Z

    .line 71
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/v;->c:Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/v;->e()V

    .line 73
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/v;->b:Z

    return v0
.end method

.method protected i()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f030099

    return v0
.end method

.method protected j()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f03009a

    return v0
.end method

.method protected k()I
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f030098

    return v0
.end method

.method protected final l()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/v;->b:Z

    if-eqz v0, :cond_0

    .line 82
    iput-boolean v1, p0, Lcom/jxphone/mosecurity/activity/v;->b:Z

    .line 83
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/v;->e()V

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/v;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/v;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/v;->setContentView(I)V

    .line 28
    const v0, 0x7f08016e

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/v;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/v;->d:Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/v;->e()V

    .line 37
    return-void

    .line 30
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Is R.id.MainFrame a ViewGroup?"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The main view must include a ViewGroup with id=\"@+id/R.id.MainFrame\", check the return value of func mainFrameLayoutId()."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
