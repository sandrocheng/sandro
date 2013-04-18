.class public Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;
.super Lcom/jxphone/mosecurity/activity/TabContactActivity;
.source "FriendCallLogActivity.java"


# instance fields
.field private l:Lcom/jxphone/mosecurity/logic/a/g;

.field private m:Lcom/jxphone/mosecurity/activity/friend/z;

.field private final n:Landroid/os/Handler;

.field private final o:Lcom/keniu/security/e/a;

.field private p:Landroid/widget/ListView;

.field private q:Lcom/jxphone/mosecurity/activity/friend/y;

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
    .line 71
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;-><init>()V

    .line 76
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/n;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/n;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->n:Landroid/os/Handler;

    .line 82
    new-instance v0, Lcom/keniu/security/e/a;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->n:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/keniu/security/e/a;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->o:Lcom/keniu/security/e/a;

    .line 84
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/y;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/y;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->q:Lcom/jxphone/mosecurity/activity/friend/y;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    .line 683
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/t;

    invoke-direct {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/t;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->w:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)Landroid/app/Dialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b050e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f07000b

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/q;

    invoke-direct {v2, p0, p1}, Lcom/jxphone/mosecurity/activity/friend/q;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)V

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
    .line 596
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b050e

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    move-result-object v0

    const v1, 0x7f07000b

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/q;

    invoke-direct {v2, p0, p1}, Lcom/jxphone/mosecurity/activity/friend/q;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p()V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 773
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    .line 775
    const-string v0, "setMultiChoceMode>>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMuiltChoseMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    if-nez v0, :cond_1

    .line 778
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/z;->getCount()I

    move-result v0

    move v1, v3

    .line 779
    :goto_0
    if-ge v1, v0, :cond_0

    .line 780
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v2, v1}, Lcom/jxphone/mosecurity/activity/friend/z;->a(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v2

    .line 781
    iput-boolean v3, v2, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->u:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 784
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->v:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    if-nez v1, :cond_3

    move v1, v4

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/z;->notifyDataSetChanged()V

    .line 788
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/z;->notifyDataSetInvalidated()V

    .line 790
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    iget-boolean v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 793
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 794
    return-void

    :cond_2
    move v1, v3

    .line 783
    goto :goto_1

    :cond_3
    move v1, v3

    .line 784
    goto :goto_2

    .line 790
    :cond_4
    const/16 v1, 0x8

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-static {p0, v2}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    move v0, v2

    .line 113
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

.method static synthetic a(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    return-object v0
.end method

.method static synthetic b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/activity/friend/z;->a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b050e

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    const v2, 0x7f0b0668

    invoke-virtual {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->getString(I)Ljava/lang/String;

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

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/s;

    invoke-direct {v2, p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/s;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/s;->start()V

    :cond_0
    return-void
.end method

.method private b(Lcom/jxphone/mosecurity/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 650
    if-eqz p1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v0, p1}, Lcom/jxphone/mosecurity/activity/friend/z;->a(Lcom/jxphone/mosecurity/c/b;)Ljava/util/List;

    move-result-object v0

    .line 654
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 655
    const v2, 0x7f0b050e

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 656
    const v2, 0x7f0b0668

    invoke-virtual {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 657
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 658
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 659
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 660
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 662
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/s;

    invoke-direct {v2, p0, v0, v1}, Lcom/jxphone/mosecurity/activity/friend/s;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/s;->start()V

    .line 673
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1, v2}, Lcom/jxphone/mosecurity/logic/a/g;->b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/c;

    const/4 v2, 0x0

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a([Lcom/jxphone/mosecurity/c/c;)I

    goto :goto_0
.end method

.method private c(Lcom/jxphone/mosecurity/c/b;)V
    .locals 4
    .parameter

    .prologue
    .line 676
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1, v2}, Lcom/jxphone/mosecurity/logic/a/g;->b(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)I

    .line 681
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/jxphone/mosecurity/c/c;

    const/4 v2, 0x0

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a([Lcom/jxphone/mosecurity/c/c;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/logic/a/g;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    return-object v0
.end method

.method static synthetic e(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Z)V

    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 143
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p:Landroid/widget/ListView;

    .line 144
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/o;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/o;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/p;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/p;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 147
    :cond_0
    const v0, 0x7f08016e

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->s:Landroid/widget/FrameLayout;

    .line 149
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d6

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->s:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    const v1, 0x7f080317

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 155
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    const v1, 0x7f080318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->s:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 163
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a(Lcom/jxphone/mosecurity/c/c;)[Lcom/jxphone/mosecurity/c/j;

    move-result-object v0

    .line 168
    array-length v1, v0

    if-nez v1, :cond_0

    .line 169
    const v0, 0x7f0b0449

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->o()V

    .line 175
    :cond_1
    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/z;

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->i:Z

    invoke-direct {v1, p0, p0, v0, v2}, Lcom/jxphone/mosecurity/activity/friend/z;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Landroid/content/Context;[Lcom/jxphone/mosecurity/c/j;Z)V

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    .line 176
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    invoke-virtual {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m()V

    goto :goto_0
.end method

.method private q()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 259
    const-string v1, "isDummy"

    iget-boolean v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/o;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/o;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p:Landroid/widget/ListView;

    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/p;

    invoke-direct {v1, p0}, Lcom/jxphone/mosecurity/activity/friend/p;-><init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 288
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f0c0007

    return v0
.end method

.method protected final f()V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    .line 119
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->l:Lcom/jxphone/mosecurity/logic/a/g;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->o:Lcom/keniu/security/e/a;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->a(Lcom/keniu/security/e/c;)V

    .line 120
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->o()V

    .line 121
    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->p()V

    .line 122
    return-void
.end method

.method protected final i()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f030099

    return v0
.end method

.method protected final n()I
    .locals 1

    .prologue
    .line 139
    const v0, 0x7f0b064b

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->requestWindowFeature(I)Z

    .line 95
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0b066c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->q:Lcom/jxphone/mosecurity/activity/friend/y;

    invoke-virtual {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/y;->a(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 188
    const v1, 0x7f080423

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->u:Landroid/view/MenuItem;

    .line 189
    const v1, 0x7f080424

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->v:Landroid/view/MenuItem;

    .line 190
    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->q:Lcom/jxphone/mosecurity/activity/friend/y;

    invoke-virtual {v0, p0}, Lcom/jxphone/mosecurity/activity/friend/y;->b(Landroid/content/Context;)V

    .line 132
    invoke-super {p0}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onDestroy()V

    .line 133
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->i:Z

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->o:Lcom/keniu/security/e/a;

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/g;->b(Lcom/keniu/security/e/c;)V

    .line 135
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 208
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 209
    iget-boolean v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->r:Z

    if-eqz v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Z)V

    move v0, v1

    .line 221
    :goto_0
    return v0

    .line 216
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const v1, 0x7f080317

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    return v2

    .line 228
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Z)V

    .line 230
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 232
    const v1, 0x7f0b0510

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 234
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->u:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 235
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->v:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->a(Z)V

    .line 240
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 242
    const v1, 0x7f0b0511

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->u:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 245
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->v:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 226
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

    .line 195
    invoke-super {p0, p1}, Lcom/jxphone/mosecurity/activity/TabContactActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->m:Lcom/jxphone/mosecurity/activity/friend/z;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/activity/friend/z;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    move v1, v5

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->u:Landroid/view/MenuItem;

    if-nez v1, :cond_2

    move v3, v5

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 200
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->v:Landroid/view/MenuItem;

    if-nez v1, :cond_3

    move v1, v5

    :goto_2
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 203
    return v0

    :cond_1
    move v1, v4

    .line 197
    goto :goto_0

    :cond_2
    move v3, v4

    .line 199
    goto :goto_1

    :cond_3
    move v1, v4

    .line 200
    goto :goto_2
.end method
