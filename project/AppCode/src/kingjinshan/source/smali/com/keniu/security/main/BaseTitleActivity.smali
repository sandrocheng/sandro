.class public Lcom/keniu/security/main/BaseTitleActivity;
.super Landroid/app/Activity;
.source "BaseTitleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/BaseTitleActivity;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0, p2}, Lcom/keniu/security/main/BaseTitleActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    return-void
.end method

.method protected a(Landroid/os/Bundle;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/BaseTitleActivity;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0, p2}, Lcom/keniu/security/main/BaseTitleActivity;->setContentView(I)V

    .line 19
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/BaseTitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 20
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 22
    return-void
.end method
