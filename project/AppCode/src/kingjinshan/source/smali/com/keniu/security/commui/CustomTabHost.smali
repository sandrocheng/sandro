.class public Lcom/keniu/security/commui/CustomTabHost;
.super Landroid/widget/TabHost;
.source "CustomTabHost.java"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commui/CustomTabHost;->a:Landroid/view/animation/Animation;

    .line 26
    const v0, 0x7f04000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commui/CustomTabHost;->b:Landroid/view/animation/Animation;

    .line 27
    const v0, 0x7f040008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commui/CustomTabHost;->c:Landroid/view/animation/Animation;

    .line 28
    const v0, 0x7f04000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commui/CustomTabHost;->d:Landroid/view/animation/Animation;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/keniu/security/commui/CustomTabHost;->e:I

    return v0
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 43
    return-void
.end method

.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/keniu/security/commui/CustomTabHost;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keniu/security/commui/CustomTabHost;->e:I

    .line 38
    invoke-super {p0, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 39
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentTab()I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    iget v1, p0, Lcom/keniu/security/commui/CustomTabHost;->e:I

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/commui/CustomTabHost;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 66
    iget v1, p0, Lcom/keniu/security/commui/CustomTabHost;->e:I

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_5

    .line 67
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commui/CustomTabHost;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    :cond_1
    :goto_1
    return-void

    .line 54
    :cond_2
    if-nez v0, :cond_3

    iget v1, p0, Lcom/keniu/security/commui/CustomTabHost;->e:I

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_3

    .line 55
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/commui/CustomTabHost;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 56
    :cond_3
    if-le p1, v0, :cond_4

    .line 57
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/commui/CustomTabHost;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 58
    :cond_4
    if-ge p1, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/commui/CustomTabHost;->d:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 68
    :cond_5
    if-nez v0, :cond_6

    iget v1, p0, Lcom/keniu/security/commui/CustomTabHost;->e:I

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_6

    .line 69
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commui/CustomTabHost;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 70
    :cond_6
    if-le p1, v0, :cond_7

    .line 71
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commui/CustomTabHost;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 72
    :cond_7
    if-ge p1, v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/keniu/security/commui/CustomTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/commui/CustomTabHost;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method
