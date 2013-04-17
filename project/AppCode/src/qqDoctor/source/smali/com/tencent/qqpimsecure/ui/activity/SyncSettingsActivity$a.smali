.class public final Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcw;

.field private f:Lho;

.field private g:Landroid/view/View$OnClickListener;

.field private synthetic h:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->h:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;

    const v0, 0x7f0300df

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lafe;

    invoke-direct {v0, p0}, Lafe;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Lho;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->f:Lho;

    return-object v0
.end method

.method private a()V
    .locals 5

    const v4, 0x7f0b013d

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbw;->a(Landroid/content/Context;)Lbw;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->e:Lcw;

    invoke-virtual {v2}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs;

    if-eqz v0, :cond_1

    iget v3, v0, Lcs;->h:I

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->b:Landroid/widget/TextView;

    const v2, 0x7f0b013c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->h:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;

    const v3, 0x7f0b013e

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcs;->c:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)V
    .locals 4

    const/4 v3, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b013a

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0045

    new-instance v2, Laff;

    invoke-direct {v2, p0, v0}, Laff;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lafg;

    invoke-direct {v2, v0}, Lafg;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;)V
    .locals 3

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->a()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbw;->a(Landroid/content/Context;)Lbw;

    move-result-object v0

    invoke-virtual {v0}, Lbw;->a()I

    invoke-static {}, Lde;->d()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->f:Lho;

    invoke-virtual {v1}, Lho;->bf()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->f:Lho;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lho;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->h:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;

    const v1, 0x7f0b0139

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->h:Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->f:Lho;

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->e:Lcw;

    const v0, 0x7f0802c6

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0802cb

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0802c8

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->c:Landroid/view/View;

    const v0, 0x7f0802c4

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c7

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c9

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->e:Lcw;

    invoke-virtual {v0}, Lcw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->e:Lcw;

    invoke-virtual {v0}, Lcw;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0138

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->e:Lcw;

    invoke-virtual {v0}, Lcw;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_1
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0137

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->e:Lcw;

    invoke-virtual {v0}, Lcw;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_3
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const-string v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b00c9

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
