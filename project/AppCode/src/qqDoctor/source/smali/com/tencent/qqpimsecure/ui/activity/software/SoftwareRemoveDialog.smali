.class public Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->setContentView(I)V

    iput-object p0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->d:Landroid/content/Context;

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "20%"

    if-eqz v1, :cond_0

    const-string v2, "remainPercent"

    const v3, 0x3e4ccccd

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fc999999999999aL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "##0.0"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->a:Landroid/widget/TextView;

    const v2, 0x7f0b002b

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b089c

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lahr;

    invoke-direct {v1, p0}, Lahr;-><init>(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lahs;

    invoke-direct {v1, p0}, Lahs;-><init>(Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareRemoveDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
