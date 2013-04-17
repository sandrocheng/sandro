.class public Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_1

    new-instance v10, Landroid/content/Intent;

    const-class v0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanActivity;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x1000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Lmu;

    const-wide/16 v1, 0x0

    const-string v4, ""

    iget-object v9, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->a:Ljava/util/List;

    move v5, v3

    move v7, v3

    move v8, v6

    invoke-direct/range {v0 .. v9}, Lmu;-><init>(JILjava/lang/String;IIIILjava/util/List;)V

    const-string v1, "data"

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v10}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->requestWindowFeature(I)Z

    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmu;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lmu;->i:Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->d:Landroid/widget/TextView;

    const v1, 0x7f0b02e2

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusNotivicationResultDialog;->finish()V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
