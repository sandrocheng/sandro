.class public Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private d:Landroid/widget/TextView;

.field private e:Lhq;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->finish()V

    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->f:Ljava/lang/String;

    iput-object v1, v0, Llf;->phonenum:Ljava/lang/String;

    iput-boolean v2, v0, Llf;->enableForCalling:Z

    iput-boolean v2, v0, Llf;->enableForSMS:Z

    const/4 v1, 0x0

    iput v1, v0, Llf;->b:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->e:Lhq;

    invoke-virtual {v1, v0}, Lhq;->a(Llf;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7f0b01ba

    invoke-static {p0, v0}, Lha;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->M(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->requestWindowFeature(I)Z

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->setContentView(I)V

    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->f:Ljava/lang/String;

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0493

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->f:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lhq;

    invoke-direct {v0, v4}, Lhq;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->e:Lhq;

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/DoubleCallDialog;->finish()V

    return-void
.end method
