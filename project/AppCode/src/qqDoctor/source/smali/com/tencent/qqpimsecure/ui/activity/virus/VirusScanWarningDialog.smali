.class public Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "AUTO_SCAN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->requestWindowFeature(I)Z

    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->setContentView(I)V

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b054e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b054f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0550

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->a:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanWarningDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
