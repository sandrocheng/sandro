.class public final Latz;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Latz$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lho;

.field private c:Lhq;

.field private d:Lhq;

.field private e:Lhq;

.field private f:Lki;

.field private g:Lbw;

.field private h:Lvk;

.field private i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

.field private j:Lrb;

.field private k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private m:Lcf;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Law;

.field private s:Z

.field private t:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Llf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, -0x3e8

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    const-string v0, "InterceptContactView"

    iput-object v0, p0, Latz;->a:Ljava/lang/String;

    iput-boolean v2, p0, Latz;->n:Z

    iput v1, p0, Latz;->p:I

    iput v1, p0, Latz;->q:I

    const/4 v0, 0x0

    iput-object v0, p0, Latz;->r:Law;

    iput-boolean v2, p0, Latz;->s:Z

    new-instance v0, Laui;

    invoke-direct {v0, p0}, Laui;-><init>(Latz;)V

    iput-object v0, p0, Latz;->t:Ldv;

    iput p2, p0, Latz;->o:I

    new-instance v0, Law;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    iget-object v2, p0, Latz;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Law;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Latz;->r:Law;

    return-void
.end method

.method static synthetic A(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic B(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic C(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic D(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic E(Latz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic F(Latz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic G(Latz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic H(Latz;)Lki;
    .locals 1

    iget-object v0, p0, Latz;->f:Lki;

    return-object v0
.end method

.method static synthetic I(Latz;)I
    .locals 1

    iget v0, p0, Latz;->o:I

    return v0
.end method

.method static synthetic J(Latz;)Lvk;
    .locals 1

    iget-object v0, p0, Latz;->h:Lvk;

    return-object v0
.end method

.method static synthetic K(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic L(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method private a()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080064

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f080065

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Latz$a;

    invoke-direct {v5, p0}, Latz$a;-><init>(Latz;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x22

    invoke-virtual {v4, v5, v8, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    const v3, 0x7f0b00ef

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v2, 0x7f0b0045

    new-instance v3, Laud;

    invoke-direct {v3, p0, v0, v1}, Laud;-><init>(Latz;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v2, v3, v9}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v2, Laue;

    invoke-direct {v2, v1}, Laue;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v9}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Latz;I)V
    .locals 0

    invoke-direct {p0, p1}, Latz;->c(I)V

    return-void
.end method

.method static synthetic a(Latz;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Latz;->a:Ljava/lang/String;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Latz;->r:Law;

    invoke-virtual {v0, p1}, Law;->a(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic a(Latz;)Z
    .locals 1

    iget-boolean v0, p0, Latz;->s:Z

    return v0
.end method

.method static synthetic b(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private b(I)V
    .locals 9

    const v8, 0x7f0b010d

    const v7, 0x7f0b0033

    const/4 v1, 0x1

    const/4 v6, 0x2

    const/16 v0, 0x3a

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Latz;->d:Lhq;

    invoke-virtual {v0}, Lhq;->c()I

    move-result v0

    iget-object v2, p0, Latz;->e:Lhq;

    invoke-virtual {v2}, Lhq;->c()I

    move-result v2

    add-int/2addr v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b010e

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Latz;->b:Lho;

    invoke-virtual {v0}, Lho;->al()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0112

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Laum;

    invoke-direct {v1, p0, v0}, Laum;-><init>(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v8, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Laun;

    invoke-direct {v1, v0}, Laun;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v7, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Latz;->b:Lho;

    invoke-virtual {v0}, Lho;->am()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b00ef

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v0, 0x7f080029

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Latz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0116

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080013

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    new-instance v1, Lauo;

    invoke-direct {v1, p0, v0, v2}, Lauo;-><init>(Latz;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v8, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Laup;

    invoke-direct {v0, v2}, Laup;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v7, v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x3ed

    invoke-direct {p0, v0}, Latz;->c(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x3ee

    invoke-direct {p0, v0}, Latz;->c(I)V

    goto/16 :goto_0
.end method

.method static synthetic c(Latz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(I)V
    .locals 5

    new-instance v0, Lcl;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latz;->m:Lcf;

    iget-object v0, p0, Latz;->m:Lcf;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v3, Lkh;

    iget-object v4, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v3}, Lkh;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcf;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcb;)V

    iput p1, p0, Latz;->p:I

    iget-object v0, p0, Latz;->r:Law;

    invoke-virtual {v0}, Law;->a()V

    return-void
.end method

.method static synthetic d(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;
    .locals 1

    iget-object v0, p0, Latz;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    return-object v0
.end method

.method private d(I)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Latz;->a:Ljava/lang/String;

    const/16 v0, -0x3e8

    iput v0, p0, Latz;->p:I

    iput-boolean v2, p0, Latz;->n:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const/16 v0, 0x3ed

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_0
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Lauq;

    invoke-direct {v2, p0, p1}, Lauq;-><init>(Latz;I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Laut;

    invoke-direct {v0, p0, p1}, Laut;-><init>(Latz;I)V

    invoke-virtual {v0}, Laut;->start()V

    new-instance v0, Laub;

    invoke-direct {v0, p0, p1}, Laub;-><init>(Latz;I)V

    invoke-virtual {v0}, Laub;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0
.end method

.method static synthetic e(Latz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Latz;)Lrb;
    .locals 1

    iget-object v0, p0, Latz;->j:Lrb;

    return-object v0
.end method

.method static synthetic h(Latz;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Latz;)Lhq;
    .locals 1

    iget-object v0, p0, Latz;->c:Lhq;

    return-object v0
.end method

.method static synthetic j(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Latz;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Latz;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic l(Latz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Latz;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Latz;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic n(Latz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Latz;)Lho;
    .locals 1

    iget-object v0, p0, Latz;->b:Lho;

    return-object v0
.end method

.method static synthetic q(Latz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic s(Latz;)Lcf;
    .locals 1

    iget-object v0, p0, Latz;->m:Lcf;

    return-object v0
.end method

.method static synthetic t(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic u(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic v(Latz;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Latz;->n:Z

    return v0
.end method

.method static synthetic w(Latz;)Z
    .locals 1

    iget-boolean v0, p0, Latz;->n:Z

    return v0
.end method

.method static synthetic x(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Latz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Latz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic z(Latz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Latz;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/ContactSelectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "type"

    iget v2, p0, Latz;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Latz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final a(Z)V
    .locals 13

    const v12, 0x7f09001d

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x8

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v0, 0x7f080015

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v0, 0x7f080017

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const v0, 0x7f080018

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08001a

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v3, 0x7f080019

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v4, 0x7f08001b

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v3, v8}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    invoke-virtual {v4, v8}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    new-instance v7, Ladn;

    invoke-direct {v7, v2}, Ladn;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget v7, p0, Latz;->o:I

    if-eqz v7, :cond_0

    invoke-virtual {v3, v10}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    invoke-virtual {v4, v10}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7f08001d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget v1, p0, Latz;->o:I

    if-nez v1, :cond_3

    const v1, 0x7f0b00b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    const v0, 0x7f080014

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080016

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b000a

    invoke-virtual {v7, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v7, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v10, 0x7f0b000a

    new-instance v0, Laug;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v7}, Laug;-><init>(Latz;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;ZLandroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v7, v10, v0, v11}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lauh;

    invoke-direct {v1, v7}, Lauh;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v7, v0, v1, v11}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->getButton(I)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    :cond_2
    new-instance v0, Ladn;

    invoke-direct {v0, v2, v1}, Ladn;-><init>(Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/ButtonView;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_3
    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v9

    goto :goto_1
.end method

.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 8

    new-instance v0, Laid;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v4, p0, Latz;->mDataList:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v2}, Laid;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method public final getFooterView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 4

    const/16 v3, 0x3eb

    iget-object v0, p0, Latz;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Laid;

    iget-object v1, p0, Latz;->t:Ldv;

    invoke-virtual {v0, v1}, Laid;->a(Ldv;)V

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Latz;->o:I

    if-nez v0, :cond_0

    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b006b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llf;->name:Ljava/lang/String;

    iput v3, v0, Llf;->b:I

    iget-object v1, p0, Latz;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    iget-object v1, p0, Latz;->c:Lhq;

    invoke-virtual {v1}, Lhq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Llf;

    invoke-direct {v0}, Llf;-><init>()V

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llf;->name:Ljava/lang/String;

    iput v3, v0, Llf;->b:I

    iget-object v1, p0, Latz;->mDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    iget-object v1, p0, Latz;->c:Lhq;

    invoke-virtual {v1}, Lhq;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v2, 0x1

    const/16 v1, -0x3e8

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "JOB_KEY"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "selecteddata"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Latz;->o:I

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v6, Llf;

    invoke-direct {v6}, Llf;-><init>()V

    aget-object v7, v0, v3

    iput-object v7, v6, Llf;->phonenum:Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, v6, Llf;->name:Ljava/lang/String;

    iput-boolean v1, v6, Llf;->enableForCalling:Z

    iput-boolean v1, v6, Llf;->enableForSMS:Z

    iget v0, p0, Latz;->o:I

    iput v0, v6, Llf;->b:I

    iget v0, p0, Latz;->o:I

    if-nez v0, :cond_2

    new-instance v0, Lvk$a;

    iget-object v7, v6, Llf;->phonenum:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-direct {v0, v7, v3, v8}, Lvk$a;-><init>(Ljava/lang/String;ZI)V

    iput-object v0, v6, Llf;->a:Ljava/lang/Object;

    :cond_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    iget-object v0, p0, Latz;->h:Lvk;

    iget v1, p0, Latz;->o:I

    invoke-virtual {v0, v4, v1}, Lvk;->a(Ljava/util/List;I)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    iget v1, p0, Latz;->o:I

    if-nez v1, :cond_5

    const/16 v1, 0x65f2

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x65f3

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    invoke-virtual {p0}, Latz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {p0}, Latz;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerForContextMenu(Landroid/view/View;)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Latz;->b:Lho;

    new-instance v0, Lhq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Latz;->d:Lhq;

    new-instance v0, Lhq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Latz;->e:Lhq;

    iget v0, p0, Latz;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Latz;->d:Lhq;

    iput-object v0, p0, Latz;->c:Lhq;

    :goto_0
    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbw;->a(Landroid/content/Context;)Lbw;

    move-result-object v0

    iput-object v0, p0, Latz;->g:Lbw;

    new-instance v0, Lcl;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latz;->m:Lcf;

    iget-object v0, p0, Latz;->m:Lcf;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BWLIST:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    new-instance v3, Lkh;

    iget-object v4, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v3}, Lkh;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcf;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcb;)V

    new-instance v0, Lrb;

    invoke-virtual {p0}, Latz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lrb;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Latz;->j:Lrb;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Latz;->f:Lki;

    new-instance v0, Lvk;

    invoke-virtual {p0}, Latz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    new-instance v2, Laua;

    invoke-direct {v2, p0}, Laua;-><init>(Latz;)V

    invoke-direct {v0, v1, v2}, Lvk;-><init>(Landroid/app/Activity;Ldv;)V

    iput-object v0, p0, Latz;->h:Lvk;

    return-void

    :cond_0
    iget-object v0, p0, Latz;->e:Lhq;

    iput-object v0, p0, Latz;->c:Lhq;

    goto :goto_0
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v2, -0x2

    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    :goto_0
    if-ne v0, v2, :cond_6

    iget-object v0, p0, Latz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Latz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    :goto_1
    iget-object v0, p0, Latz;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-gez v1, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Latz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Latz;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Latz;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    if-eqz v0, :cond_1

    iget v2, v0, Llf;->b:I

    if-eqz v2, :cond_5

    iget v0, v0, Llf;->b:I

    if-ne v0, v4, :cond_1

    :cond_5
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v2, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latz;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Latz;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Latz;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v4, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Latz;->mContext:Landroid/content/Context;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Latz;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v2, p0, Latz;->mContext:Landroid/content/Context;

    const v3, 0x7f0b018c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v2, 0x4

    iput v2, v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Latz;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    iget-object v0, p0, Latz;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    new-instance v1, Lauj;

    invoke-direct {v1, p0}, Lauj;-><init>(Latz;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Latz;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b043e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Latz;->i:Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_2

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 11

    const/16 v3, -0x3e8

    const/16 v5, 0x3ed

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v4, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x1001

    if-eq v2, v0, :cond_0

    if-nez v1, :cond_2

    iget v0, p0, Latz;->p:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Latz;->p:I

    invoke-direct {p0, v0}, Latz;->d(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Latz;->a()V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f4

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Latz;->p:I

    iput v0, p0, Latz;->q:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->bf()I

    move-result v1

    if-ne v9, v1, :cond_5

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FIRST_TIME"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    if-ne v2, v1, :cond_6

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FIRST_TIME"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v4, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/16 v2, 0x1001

    if-eq v2, v0, :cond_0

    const/16 v0, 0x200b

    if-ne v0, v1, :cond_8

    iget v0, p0, Latz;->p:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Latz;->p:I

    invoke-direct {p0, v0}, Latz;->d(I)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x200f

    if-ne v0, v1, :cond_9

    invoke-direct {p0}, Latz;->a()V

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0154

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x2010

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f4

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llf;

    if-eqz v0, :cond_a

    iget-object v1, p0, Latz;->j:Lrb;

    iget-object v2, p0, Latz;->c:Lhq;

    iget-object v3, p0, Latz;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Lrb;->a(Llf;Lhq;Landroid/os/Handler;)V

    :goto_2
    iget-boolean v0, p0, Latz;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Latz;->onResume()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Latz;->a:Ljava/lang/String;

    goto :goto_2

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llf;

    if-eqz v0, :cond_b

    iget-object v1, p0, Latz;->c:Lhq;

    invoke-virtual {v1, v0}, Lhq;->b(Llf;)Z

    :goto_3
    iget-boolean v0, p0, Latz;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Latz;->onResume()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Latz;->a:Ljava/lang/String;

    goto :goto_3

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Latz;->d(I)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v5, v0, :cond_c

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v1, p0, Latz;->m:Lcf;

    invoke-interface {v1}, Lcf;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v1, p0, Latz;->m:Lcf;

    invoke-interface {v1}, Lcf;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v4, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_d
    iget-object v0, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v4, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_e
    iget-boolean v0, p0, Latz;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b00ef

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Latz;->g:Lbw;

    invoke-virtual {v3, v4, v0}, Lbw;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs;

    if-ne v5, v1, :cond_f

    iget-object v1, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b00fd

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0068

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Latz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0109

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v0, Lcs;->e:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Latz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b010a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    iget v6, v0, Lcs;->g:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Latz;->mContext:Landroid/content/Context;

    const v4, 0x7f0b010b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcs;->f:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Latz;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v5, v0, Lcs;->d:J

    iget-wide v7, v0, Lcs;->c:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00fc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    iget-wide v4, v0, Lcs;->i:J

    iget-wide v6, v0, Lcs;->j:J

    add-long/2addr v4, v6

    invoke-static {v4, v5}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0045

    new-instance v2, Lauc;

    invoke-direct {v2, p0}, Lauc;-><init>(Latz;)V

    invoke-virtual {v0, v1, v2, v9}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    invoke-virtual {p0}, Latz;->onResume()V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b00fe

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0067

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_10
    if-ne v1, v5, :cond_11

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_11
    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :sswitch_7
    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v4, p0, Latz;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_12
    iget-object v0, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_13

    iget-object v0, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v4, p0, Latz;->l:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcf$a;

    sget-object v1, Lcf$a;->c:Lcf$a;

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012d

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    :cond_14
    sget-object v1, Lcf$a;->b:Lcf$a;

    if-ne v0, v1, :cond_15

    iget-object v1, p0, Latz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b012e

    invoke-static {v1, v2}, Lha;->a(Landroid/content/Context;I)V

    :cond_15
    sget-object v1, Lcf$a;->d:Lcf$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b012f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_8
    iget-boolean v0, p0, Latz;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Latz;->onResume()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0xbb8 -> :sswitch_4
        0xbb9 -> :sswitch_5
        0xbba -> :sswitch_6
        0xbbb -> :sswitch_7
        0xfa1 -> :sswitch_3
        0xfa2 -> :sswitch_2
        0x2019 -> :sswitch_0
        0x201a -> :sswitch_1
    .end sparse-switch
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget v1, v0, Llf;->b:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v2, p0, Latz;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Latz;->o:I

    if-nez v3, :cond_0

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v5

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v5, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v6

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v6, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v7, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v7

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v9, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v0, v0, v8

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v8, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lauf;

    invoke-direct {v0, p0, v1}, Lauf;-><init>(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b0040

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    :goto_1
    return-void

    :cond_0
    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    const/4 v4, 0x1

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v7, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v5

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v5, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v6

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v6, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    const/4 v4, 0x7

    aget-object v4, v0, v4

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v9, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    const/16 v4, 0x8

    aget-object v0, v0, v4

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v8, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Latz;->j:Lrb;

    iget v2, v0, Llf;->b:I

    new-instance v3, Laul;

    invoke-direct {v3, p0}, Laul;-><init>(Latz;)V

    invoke-virtual {v1, v0, v2, v3}, Lrb;->a(Llf;ILdv;)V

    goto :goto_1
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v3

    :sswitch_0
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Latz;->b(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Latz;->b(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    iget v0, p0, Latz;->o:I

    if-nez v0, :cond_0

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b010f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0110

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Latz;->j:Lrb;

    iget-object v1, p0, Latz;->c:Lhq;

    iget-object v2, p0, Latz;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lrb;->a(Lhq;Landroid/os/Handler;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x3a -> :sswitch_0
        0x3b -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Latz;->s:Z

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onPause()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/16 v5, 0x13

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    const/16 v2, 0x3a

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0533

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020210

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0x3b

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0534

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f020211

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b052c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v5, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final onResume()V
    .locals 8

    const/16 v7, -0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Latz;->s:Z

    invoke-virtual {p0}, Latz;->loadDataList()V

    invoke-virtual {p0}, Latz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laid;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Latz;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Laid;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Latz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6}, Latz;->setReloadData(Z)V

    iget v0, p0, Latz;->o:I

    if-nez v0, :cond_1

    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Latz;->c:Lhq;

    invoke-virtual {v2}, Lhq;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Latz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->updateInfoBarText(Ljava/lang/String;)V

    iget-object v0, p0, Latz;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v5, :cond_3

    iget v0, p0, Latz;->o:I

    if-nez v0, :cond_2

    const v0, 0x7f0b058b

    invoke-virtual {p0, v0}, Latz;->setEmptyText(I)V

    :goto_1
    iget v0, p0, Latz;->q:I

    if-eq v0, v7, :cond_0

    iget-object v0, p0, Latz;->m:Lcf;

    invoke-interface {v0}, Lcf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput v7, p0, Latz;->q:I

    iget-object v0, p0, Latz;->r:Law;

    invoke-virtual {v0}, Law;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Latz;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01d8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0b058c

    invoke-virtual {p0, v0}, Latz;->setEmptyText(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Latz;->hideEmptyView()V

    goto :goto_1
.end method

.method public final refreshListData()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Latz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Laid;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v3, p0, Latz;->mDataList:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;IZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Laid;->setDataList(Ljava/util/List;)V

    invoke-virtual {p0}, Latz;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, v6}, Latz;->setReloadData(Z)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    iget v0, p0, Latz;->o:I

    if-nez v0, :cond_0

    const v0, 0x7f0b02a5

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b02a4

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    goto :goto_0
.end method
