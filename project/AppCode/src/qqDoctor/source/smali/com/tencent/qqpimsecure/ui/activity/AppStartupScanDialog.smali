.class public Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;
    }
.end annotation


# static fields
.field private static f:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;)V
    .locals 3

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->f:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    if-nez v0, :cond_0

    sput-object p2, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->f:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "AppName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->f:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a()V

    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->f:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v1, v1, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v1, v0, Lok;->d:Lacj;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lok;->d:Lacj;

    invoke-virtual {v1}, Lacj;->a()V

    iput-object v4, v0, Lok;->d:Lacj;

    :cond_1
    iput-object v4, v0, Lok;->e:Lacj$a;

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->finish()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v1, v1, Lok;->d:Lacj;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    new-instance v2, Lacj;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v3, v3, Lok;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lacj;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lok;->d:Lacj;

    :cond_4
    iget-object v1, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v1, v1, Lok;->e:Lacj$a;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    new-instance v2, Lon;

    invoke-direct {v2, v0}, Lon;-><init>(Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;)V

    iput-object v2, v1, Lok;->e:Lacj$a;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v1, v1, Lok;->d:Lacj;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v2, v2, Lok;->e:Lacj$a;

    invoke-virtual {v1, v2}, Lacj;->a(Lacj$a;)V

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lms;

    invoke-direct {v2}, Lms;-><init>()V

    iget-object v3, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v3, v3, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iput-object v3, v2, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iget-object v2, v2, Lok;->d:Lacj;

    invoke-virtual {v2, v1}, Lacj;->b(Ljava/util/List;)V

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iput-object v4, v0, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->f:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a()V

    :cond_7
    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->f:Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;

    iget-object v1, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    iput-object v4, v1, Lok;->i:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog$a;->a:Lok;

    invoke-static {v0}, Lok;->a(Lok;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->finish()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->requestWindowFeature(I)Z

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->a:Landroid/widget/TextView;

    const v2, 0x7f0b03ef

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v2, 0x7f0b02e5

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "AppName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b02cc

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b02e4

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x22

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/AppStartupScanDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
