.class public Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;
.super Landroid/app/Activity;
.source "AutoBootHelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0800d4

    const/16 v5, 0x2c

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->requestWindowFeature(I)Z

    .line 27
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0587

    invoke-virtual {p0, v1}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    new-instance v1, Landroid/text/SpannableString;

    const v0, 0x7f0b05a2

    invoke-virtual {p0, v0}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    new-instance v0, Lcom/ijinshan/bootmanager/activity/a;

    invoke-direct {v0, p0}, Lcom/ijinshan/bootmanager/activity/a;-><init>(Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;)V

    .line 34
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 35
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 39
    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0, v6}, Lcom/ijinshan/bootmanager/activity/AutoBootHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 42
    return-void
.end method
