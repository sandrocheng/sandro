.class public Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;
.super Lcom/jxphone/mosecurity/activity/TabContactActivity;
.source "FriendSmsActivity.java"


# instance fields
.field private l:Lcom/jxphone/mosecurity/logic/a/j;

.field private final m:Landroid/os/Handler;

.field private final n:Lcom/keniu/security/e/e;

.field private o:Lcom/jxphone/mosecurity/activity/friend/au;

.field private p:Landroid/widget/ListView;

.field private q:Lcom/jxphone/mosecurity/activity/friend/ax;

.field private r:Z

.field private s:Landroid/widget/FrameLayout;

.field private t:Landroid/view/View;

.field private u:Landroid/view/MenuItem;

.field private v:Landroid/view/MenuItem;

.field private w:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;-><init>()V

    .line 73
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/aj;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/aj;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->m:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/keniu/security/e/e;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->m:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/keniu/security/e/e;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->n:Lcom/keniu/security/e/e;

    .line 84
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/ax;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ax;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->q:Lcom/jxphone/mosecurity/activity/friend/ax;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    .line 658
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/ap;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ap;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->w:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Lcom/jxphone/mosecurity/c/b;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b050e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f07000a

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/am;

    invoke-direct {v2, p0, p1}, Lcom/jxphone/mosecurity/activity/friend/am;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Lcom/jxphone/mosecurity/c/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/jxphone/mosecurity/c/b;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 562
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b050e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f07000a

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/am;

    invoke-direct {v2, p0, p1}, Lcom/jxphone/mosecurity/activity/friend/am;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Lcom/jxphone/mosecurity/c/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p()V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 747
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    .line 749
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    if-nez v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/au;->getCount()I

    move-result v0

    move v1, v3

    .line 751
    :goto_0
    if-ge v1, v0, :cond_0

    .line 752
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v2, v1}, Lcom/jxphone/mosecurity/activity/friend/au;->a(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v2

    .line 753
    iput-boolean v3, v2, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 751
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->u:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 756
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->v:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    if-nez v1, :cond_3

    move v1, v4

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/au;->notifyDataSetChanged()V

    .line 760
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/au;->notifyDataSetInvalidated()V

    .line 762
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 765
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 766
    return-void

    :cond_2
    move v1, v3

    .line 755
    goto :goto_1

    :cond_3
    move v1, v3

    .line 756
    goto :goto_2

    .line 762
    :cond_4
    const/16 v1, 0x8

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    .line 149
    if-nez v0, :cond_0

    move v0, v2

    .line 151
    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    return-object v0
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/activity/friend/au;->a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b050e

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    const v2, 0x7f0b0668

    invoke-virtual {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ao;

    invoke-direct {v2, p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/ao;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/ao;->start()V

    :cond_0
    return-void
.end method

.method private b(Lcom/jxphone/mosecurity/c/b;)V
    .locals 4
    .parameter

    .prologue
    .line 615
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 616
    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 617
    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 619
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 628
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 623
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/c;

    const/4 v2, 0x0

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a([Lcom/jxphone/mosecurity/c/c;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v0, v2}, Lcom/jxphone/mosecurity/logic/a/j;->a(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/c;

    const/4 v2, 0x0

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a([Lcom/jxphone/mosecurity/c/c;)I

    goto :goto_0
.end method

.method private c(Lcom/jxphone/mosecurity/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 634
    if-eqz p1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/activity/friend/au;->a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;

    move-result-object v0

    .line 637
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 638
    const v2, 0x7f0b050e

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 639
    const v2, 0x7f0b0668

    invoke-virtual {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 640
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 641
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 642
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 643
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 645
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ao;

    invoke-direct {v2, p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/ao;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/ao;->start()V

    .line 656
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/logic/a/j;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    return-object v0
.end method

.method static synthetic e(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Z)V

    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 125
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p:Landroid/widget/ListView;

    .line 126
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ak;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/ak;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/al;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/al;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 129
    :cond_0
    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->s:Landroid/widget/FrameLayout;

    .line 131
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d6

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->s:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    const v1, 0x7f080317

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 137
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    const v1, 0x7f080318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/l;

    move-result-object v0

    .line 157
    array-length v1, v0

    if-nez v1, :cond_0

    .line 158
    const v0, 0x7f0b044a

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o()V

    .line 165
    :cond_1
    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/au;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->i:Z

    invoke-direct {v1, p0, p0, v0, v2}, Lcom/jxphone/mosecurity/activity/friend/au;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/l;Z)V

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    .line 166
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->m()V

    goto :goto_0
.end method

.method private q()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 242
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 243
    const-string v1, "isDummy"

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/ak;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/ak;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/al;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/al;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 270
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f0c0007

    return v0
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    .line 107
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->l:Lcom/jxphone/mosecurity/logic/a/j;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->n:Lcom/keniu/security/e/e;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->a(Lcom/keniu/security/e/c;)V

    .line 108
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o()V

    .line 109
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->p()V

    .line 110
    return-void
.end method

.method protected final n()I
    .locals 1

    .prologue
    .line 121
    const v0, 0x7f0b0659

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0b066d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->q:Lcom/jxphone/mosecurity/activity/friend/ax;

    invoke-virtual {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ax;->a(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 178
    const v1, 0x7f080423

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->u:Landroid/view/MenuItem;

    .line 179
    const v1, 0x7f080424

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->v:Landroid/view/MenuItem;

    .line 180
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->q:Lcom/jxphone/mosecurity/activity/friend/ax;

    invoke-virtual {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/ax;->b(Landroid/content/Context;)V

    .line 115
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onDestroy()V

    .line 116
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->n:Lcom/keniu/security/e/e;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/j;->b(Lcom/keniu/security/e/c;)V

    .line 117
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 233
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->r:Z

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Z)V

    .line 235
    const/4 v0, 0x1

    .line 238
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const v1, 0x7f080317

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return v2

    .line 201
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Z)V

    .line 203
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 205
    const v1, 0x7f0b0510

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->u:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 208
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->v:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 211
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->a(Z)V

    .line 213
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 215
    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->u:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 218
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->v:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x7f080423
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->o:Lcom/jxphone/mosecurity/activity/friend/au;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/activity/friend/au;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    move v1, v5

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->u:Landroid/view/MenuItem;

    if-nez v1, :cond_2

    move v3, v5

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 190
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->v:Landroid/view/MenuItem;

    if-nez v1, :cond_3

    move v1, v5

    :goto_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 193
    return v0

    :cond_1
    move v1, v4

    .line 187
    goto :goto_0

    :cond_2
    move v3, v4

    .line 189
    goto :goto_1

    :cond_3
    move v1, v4

    .line 190
    goto :goto_2
.end method
