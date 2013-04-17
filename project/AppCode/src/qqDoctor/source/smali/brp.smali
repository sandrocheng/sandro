.class public final Lbrp;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrp$1;,
        Lbrp$a;
    }
.end annotation


# instance fields
.field private A:Lsq;

.field private B:Ljl;

.field private C:Lacj;

.field private D:Lacj$a;

.field private E:Lacr;

.field private F:Lmu;

.field private G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ResultModel;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation
.end field

.field private J:Lacr$a;

.field private K:I

.field private L:Landroid/os/Handler;

.field private M:J

.field private N:Z

.field private O:LQQPIM/VirusUpdateInfo;

.field private P:Z

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation
.end field

.field private S:J

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/ListView;

.field private u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

.field private v:Lamh;

.field private w:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

.field private x:Lcom/tencent/tmsecure/module/software/SoftwareManager;

.field private y:Lho;

.field private z:Lkm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0300ea

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrp;->H:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrp;->I:Ljava/util/List;

    iput v1, p0, Lbrp;->K:I

    iput-boolean v1, p0, Lbrp;->N:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrp;->Q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrp;->R:Ljava/util/List;

    return-void
.end method

.method public static synthetic A(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic B(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic C(Lbrp;)Lacr$a;
    .locals 1

    iget-object v0, p0, Lbrp;->J:Lacr$a;

    return-object v0
.end method

.method public static synthetic D(Lbrp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic E(Lbrp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbrp;->H:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic F(Lbrp;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbrp;->P:Z

    return v0
.end method

.method public static synthetic G(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic H(Lbrp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic I(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic J(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic K(Lbrp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic L(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic M(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic N(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic O(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic P(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Q(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic R(Lbrp;)Lacr;
    .locals 1

    iget-object v0, p0, Lbrp;->E:Lacr;

    return-object v0
.end method

.method static synthetic S(Lbrp;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic T(Lbrp;)V
    .locals 0

    invoke-direct {p0}, Lbrp;->g()V

    return-void
.end method

.method static synthetic U(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic V(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic W(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic X(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Y(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Z(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(I)I
    .locals 1

    invoke-static {p0}, Lbrp;->b(I)I

    move-result v0

    return v0
.end method

.method private static a(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    iget-object v0, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    if-ne v0, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static synthetic a(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .locals 1

    invoke-static {p0, p1, p2}, Lbrp;->b(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbrp;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;
    .locals 1

    iget-object v0, p0, Lbrp;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    return-object v0
.end method

.method private a(Landroid/content/Context;LQQPIM/VirusUpdateInfo;)V
    .locals 8

    const v2, 0x7f0b087a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lbrp;->N:Z

    const v0, 0x7f0b02de

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, LQQPIM/VirusUpdateInfo;->level:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v2, 0x7f0b02df

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, LQQPIM/VirusUpdateInfo;->version:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p2, LQQPIM/VirusUpdateInfo;->newestvirus:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/4 v0, 0x3

    iget-object v4, p2, LQQPIM/VirusUpdateInfo;->description:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v2, p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0a25

    new-instance v1, Lbrx;

    invoke-direct {v1, p0, v2}, Lbrx;-><init>(Lbrp;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbrz;

    invoke-direct {v1, v2}, Lbrz;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lbsa;

    invoke-direct {v0, v2}, Lbsa;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :try_start_0
    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0b0879

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    const v0, 0x7f0b0878

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lbrp$a;)V
    .locals 3

    const-string v0, ""

    sget-object v1, Lbrp$1;->a:[I

    invoke-virtual {p1}, Lbrp$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b02ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b02c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b02c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b068e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b04b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbrp;->E:Lacr;

    sget-object v2, Lacr$c;->e:Lacr$c;

    invoke-virtual {v1, v2}, Lacr;->a(Lacr$c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static synthetic a(Lbrp;I)V
    .locals 2

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static synthetic a(Lbrp;ILjava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lbrp;->b(I)I

    move-result v2

    const-string v3, "SAVE_ICON"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "MESSAGE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "COLOR"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lbrp;->L:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lbrp;Landroid/content/Context;LQQPIM/VirusUpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbrp;->a(Landroid/content/Context;LQQPIM/VirusUpdateInfo;)V

    return-void
.end method

.method public static synthetic a(Lbrp;Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 3

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p3, v0, Landroid/os/Message;->arg1:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic a(Lbrp;Ljava/lang/String;)V
    .locals 11

    const-wide/32 v9, 0x240c8400

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lbrp;->W:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v3, p1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lbrp;->W:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    new-instance v4, Ljava/util/Date;

    iget-object v0, p0, Lbrp;->z:Lkm;

    iget-object v0, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v5, "last_time_of_update"

    const-wide/16 v6, -0x1

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    const/4 v0, 0x4

    :goto_1
    packed-switch v0, :pswitch_data_0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "why periodTypeUpdate = ?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbrp;->z:Lkm;

    iget-object v0, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v7, "ever_update"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    goto :goto_1

    :cond_3
    const-wide/32 v7, 0x36ee80

    cmp-long v0, v5, v7

    if-gtz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const-wide/32 v7, 0xf731400

    cmp-long v0, v5, v7

    if-gtz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    cmp-long v0, v5, v9

    if-gez v0, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    cmp-long v0, v5, v9

    if-ltz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0301

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->getVirusBaseVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-static {v4}, La;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0302

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {v4}, La;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0303

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v4}, La;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0304

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {v4}, La;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lbrp;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0305

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v1

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :pswitch_5
    invoke-static {v4}, La;->a(Ljava/util/Date;)Ljava/lang/String;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0306

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static synthetic a(Lbrp;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbrp;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lbrp;Lms;)V
    .locals 0

    invoke-direct {p0, p1}, Lbrp;->a(Lms;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MESSAGE"

    invoke-virtual {v3, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lbrp;->b(I)I

    move-result v1

    const-string v2, "SAVE_ICON"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lbrp;->L:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lbrp;->x:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v2, p1, v6}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/software/AppEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const/4 v1, 0x2

    move-object v0, p1

    :cond_0
    :goto_1
    if-nez v2, :cond_2

    iget-object v5, p0, Lbrp;->x:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-virtual {v5, p2, v6}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->getApkInfo(Ljava/lang/String;I)Lcom/tencent/tmsecure/module/software/AppEntity;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/tencent/tmsecure/module/software/AppEntity;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x3

    move-object v1, v2

    :goto_2
    const-string v2, "MESSAGE_DRAWABLE_TYPE"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "MESSAGE_DRAWABLE_VALUE"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    move-object p2, v0

    move v0, v1

    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v2, v0

    goto :goto_0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method private a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lbrp;->H:Ljava/util/List;

    iget-object v0, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrp;->Q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrp;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrp;->F:Lmu;

    const/4 v1, 0x1

    iput v1, v0, Lmu;->b:I

    iget-object v1, p0, Lbrp;->F:Lmu;

    iget-object v0, p0, Lbrp;->F:Lmu;

    iget v0, v0, Lmu;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04c5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lmu;->h:Ljava/lang/String;

    iget-object v0, p0, Lbrp;->F:Lmu;

    iput-object p1, v0, Lmu;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    iget-object v2, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v2, p0, Lbrp;->F:Lmu;

    iget v3, v2, Lmu;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmu;->g:I

    iget-object v2, p0, Lbrp;->R:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lbrp;->F:Lmu;

    iget v0, v0, Lmu;->g:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04c6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbrp;->F:Lmu;

    iget v0, v0, Lmu;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04cf

    iget-object v3, p0, Lbrp;->F:Lmu;

    iget v3, v3, Lmu;->e:I

    add-int/2addr v2, v3

    const v3, 0x7f0b04ca

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04c7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbrp;->J:Lacr$a;

    sget-object v2, Lacr$a;->a:Lacr$a;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04c8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04c9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lbrp;->F:Lmu;

    iget v3, v2, Lmu;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lmu;->d:I

    iget-object v2, p0, Lbrp;->Q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lbrp;->F:Lmu;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lmu;->f:I

    if-eqz p2, :cond_7

    iget-object v0, p0, Lbrp;->F:Lmu;

    new-instance v1, Lmu;

    invoke-direct {v1}, Lmu;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmu;->c:Ljava/lang/String;

    iget v2, v0, Lmu;->g:I

    iput v2, v1, Lmu;->g:I

    iget v2, v0, Lmu;->e:I

    iput v2, v1, Lmu;->e:I

    iget v2, v0, Lmu;->d:I

    iput v2, v1, Lmu;->d:I

    iget v2, v0, Lmu;->f:I

    iput v2, v1, Lmu;->f:I

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v2

    iput-object v2, p0, Lbrp;->B:Ljl;

    iget-object v2, p0, Lbrp;->B:Ljl;

    invoke-virtual {v2, v1}, Ljl;->a(Lmu;)J

    move-result-wide v1

    iget-object v3, v0, Lmu;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lbrp;->B:Ljl;

    iget-object v0, v0, Lmu;->i:Ljava/util/List;

    invoke-virtual {v3, v0, v1, v2}, Ljl;->a(Ljava/util/List;J)J

    :cond_6
    iget-object v0, p0, Lbrp;->F:Lmu;

    iput-wide v1, v0, Lmu;->a:J

    :cond_7
    new-instance v0, Lamh;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lbrp;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lamh;-><init>(Landroid/content/Context;Lbrp;Ljava/util/List;)V

    iput-object v0, p0, Lbrp;->v:Lamh;

    iget-object v0, p0, Lbrp;->v:Lamh;

    invoke-direct {p0}, Lbrp;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamh;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbrp;->v:Lamh;

    invoke-virtual {v0}, Lamh;->notifyDataSetChanged()V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lbrp;->v:Lamh;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lbrp;->v:Lamh;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Lms;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p1, Lms;->b:I

    iget-object v0, p0, Lbrp;->H:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbrp;->F:Lmu;

    iget-object v1, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lmu;->e:I

    iget-object v0, p0, Lbrp;->F:Lmu;

    iget-object v1, p0, Lbrp;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Lmu;->f:I

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lbrp;->K:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrp;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lbrp;->K:I

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lbrp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b02af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v4}, Lbrp;->b(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbrp;->l:Landroid/widget/LinearLayout;

    const v2, 0x7f02028c

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    :goto_0
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_2

    move v2, v1

    :goto_1
    if-eqz p1, :cond_3

    iget v0, p0, Lbrp;->K:I

    int-to-float v0, v0

    :goto_2
    invoke-direct {v3, v1, v1, v2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lbrr;

    invoke-direct {v0, p0, p1}, Lbrr;-><init>(Lbrp;Z)V

    invoke-virtual {v3, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lbrp;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_1
    iget-object v0, p0, Lbrp;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lbrp;->K:I

    int-to-float v0, v0

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method static synthetic aa(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ab(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ac(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ad(Lbrp;)V
    .locals 2

    new-instance v0, Lmu;

    invoke-direct {v0}, Lmu;-><init>()V

    iput-object v0, p0, Lbrp;->F:Lmu;

    iget-object v0, p0, Lbrp;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrp;->w:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbrp;->G:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbrp;->w:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic ae(Lbrp;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->J:Lacr$a;

    sget-object v1, Lacr$a;->a:Lacr$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->b:Landroid/widget/TextView;

    const v1, 0x7f0b02b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic af(Lbrp;)V
    .locals 4

    const/4 v3, 0x5

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lbrp;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    iget-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lbrp;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic ag(Lbrp;)V
    .locals 4

    iget-object v0, p0, Lbrp;->E:Lacr;

    iget-object v1, p0, Lbrp;->J:Lacr$a;

    invoke-virtual {v0, v1}, Lacr;->a(Lacr$a;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbrp;->F:Lmu;

    iget v2, v2, Lmu;->d:I

    iget-object v3, p0, Lbrp;->F:Lmu;

    iget v3, v3, Lmu;->g:I

    invoke-static {v1, v2, v3}, Lbrp;->b(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic ah(Lbrp;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbrp;->M:J

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lbrs;

    invoke-direct {v1, p0}, Lbrs;-><init>(Lbrp;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic ai(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aj(Lbrp;)J
    .locals 2

    iget-wide v0, p0, Lbrp;->M:J

    return-wide v0
.end method

.method static synthetic ak(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic al(Lbrp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbrp;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private static b(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020192

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020190

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020193

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic b(Lbrp;I)I
    .locals 0

    iput p1, p0, Lbrp;->V:I

    return p1
.end method

.method private static b(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;
    .locals 9

    const/16 v8, 0x22

    const/high16 v0, -0x1

    const/high16 v1, -0x100

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    if-lez p1, :cond_0

    move v2, v0

    :goto_0
    if-lez p2, :cond_1

    :goto_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1, v3, v6, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v1, v2, v7, v0, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lbrp;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lbrp;->r:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic c(Lbrp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    sget-object v0, Lbrp$a;->a:Lbrp$a;

    invoke-direct {p0, v0}, Lbrp;->a(Lbrp$a;)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrp;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic d(Lbrp;)V
    .locals 9

    const v6, 0x7f020193

    const v8, 0x7f020190

    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v2, 0x0

    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->h:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02af

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lbrp;->F:Lmu;

    iget v4, v4, Lmu;->d:I

    iget-object v5, p0, Lbrp;->F:Lmu;

    iget v5, v5, Lmu;->g:I

    invoke-static {v1, v4, v5}, Lbrp;->b(Ljava/lang/String;II)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lbrp;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v1, 0x7f0b02f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090035

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    const v1, 0x7f0b02f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget-object v0, Lbrp$a;->b:Lbrp$a;

    invoke-direct {p0, v0}, Lbrp;->a(Lbrp$a;)V

    iget-object v0, p0, Lbrp;->q:Landroid/widget/TextView;

    const v1, 0x7f0b04c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_2
    iget-object v0, p0, Lbrp;->v:Lamh;

    invoke-direct {p0}, Lbrp;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lamh;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbrp;->v:Lamh;

    invoke-virtual {v0}, Lamh;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lbrp;->y:Lho;

    invoke-virtual {v0}, Lho;->aB()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v1, 0x7f0b02f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090034

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    const v1, 0x7f0b02f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    sget-object v0, Lbrp$a;->c:Lbrp$a;

    invoke-direct {p0, v0}, Lbrp;->a(Lbrp$a;)V

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v1, 0x7f0b02f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lbrp;->V:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbrp;->q:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Lbrp;->P:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v1, 0x7f0b02f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090034

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    const v1, 0x7f0b02f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v1, 0x7f0b02e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090035

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    const v1, 0x7f0b02ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lbrp;->H:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lbrp;->a(Ljava/util/List;I)I

    move-result v0

    iget-object v1, p0, Lbrp;->H:Ljava/util/List;

    invoke-static {v1, v7}, Lbrp;->a(Ljava/util/List;I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lbrp;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v0, :cond_7

    iget-object v1, p0, Lbrp;->k:Landroid/widget/TextView;

    const v4, 0x7f0b02eb

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lbrp;->j:Landroid/widget/ImageView;

    const v4, 0x7f020192

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lbrp;->m:Landroid/widget/TextView;

    const v4, 0x7f0b02ec

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v1, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v1, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Lbrp;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f02028d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    sget-object v0, Lbrp$a;->d:Lbrp$a;

    invoke-direct {p0, v0}, Lbrp;->a(Lbrp$a;)V

    :goto_4
    iget-object v0, p0, Lbrp;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_7
    if-lez v1, :cond_b

    iget-object v4, p0, Lbrp;->I:Ljava/util/List;

    move v1, v2

    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    iget-object v0, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    move v0, v3

    :goto_6
    if-eqz v0, :cond_a

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_7
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090034

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    const v1, 0x7f0b02ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    sget-object v0, Lbrp$a;->e:Lbrp$a;

    invoke-direct {p0, v0}, Lbrp;->a(Lbrp$a;)V

    iget-object v0, p0, Lbrp;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v1, 0x7f0b02ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    sget-object v0, Lbrp$a;->e:Lbrp$a;

    invoke-direct {p0, v0}, Lbrp;->a(Lbrp$a;)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v1, 0x7f0b02f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090035

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    const v1, 0x7f0b02f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbrp;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_4
.end method

.method private e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lms;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbrp;->Q:Ljava/util/List;

    iget-object v3, p0, Lbrp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v2, p0, Lbrp;->R:Ljava/util/List;

    iget-object v3, p0, Lbrp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02d3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v5}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic e(Lbrp;)V
    .locals 0

    invoke-direct {p0}, Lbrp;->d()V

    return-void
.end method

.method private f()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lbrp;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lbrp;->U:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbrp;->U:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Lbrp;->S:J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    iget-boolean v0, p0, Lbrp;->T:Z

    :cond_1
    return-void
.end method

.method static synthetic f(Lbrp;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lbrp;->F:Lmu;

    iget v0, v0, Lmu;->b:I

    if-ne v0, v5, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lbrp;->Q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbrp;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    iget-object v3, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-eqz v3, :cond_1

    iget-object v3, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    if-ne v3, v5, :cond_0

    :cond_1
    iget v3, v0, Lms;->b:I

    if-nez v3, :cond_0

    :try_start_0
    iget-object v3, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lbrp;->a(Lms;)V

    invoke-direct {p0}, Lbrp;->g()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-direct {p0, v0}, Lbrp;->a(Lms;)V

    invoke-direct {p0}, Lbrp;->g()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private g()V
    .locals 10

    const/4 v9, 0x0

    new-instance v2, Ljl;

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Ljl;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbrp;->F:Lmu;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "riskFound"

    iget v4, v0, Lmu;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "virusCured"

    iget v4, v0, Lmu;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "virusFound"

    iget v4, v0, Lmu;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "waitingDealing"

    iget v4, v0, Lmu;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, v2, Ljl;->a:Lhs;

    const-string v4, "virus_record"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "id = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lmu;->a:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v1, v0, v9}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v2, Ljl;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "appName"

    iget-object v5, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "featureName"

    iget-object v5, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pkgName"

    iget-object v5, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "riskInfo"

    iget-object v5, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "state"

    iget v5, v0, Lms;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "type"

    iget-object v5, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v5, v5, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "handled"

    iget v5, v0, Lms;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "handleResult"

    iget v5, v0, Lms;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v2, Ljl;->a:Lhs;

    const-string v5, "virus_result"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "id = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v0, Lms;->a:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v3, v0, v9}, Lhs;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, v2, Ljl;->a:Lhs;

    invoke-virtual {v0}, Lhs;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method static synthetic g(Lbrp;)Z
    .locals 1

    iget-boolean v0, p0, Lbrp;->N:Z

    return v0
.end method

.method static synthetic h(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lbrp;)LQQPIM/VirusUpdateInfo;
    .locals 1

    iget-object v0, p0, Lbrp;->O:LQQPIM/VirusUpdateInfo;

    return-object v0
.end method

.method static synthetic j(Lbrp;)V
    .locals 12

    const-wide/32 v10, 0x240c8400

    const v9, 0x7f090033

    const v8, 0x7f020192

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Date;

    iget-object v3, p0, Lbrp;->z:Lkm;

    iget-object v3, v3, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v4, "last_time_of_whole_scan"

    const-wide/16 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, La;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iget-object v4, p0, Lbrp;->n:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "why periodTypeScan = ?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lbrp;->z:Lkm;

    iget-object v0, v0, Lkm;->b:Landroid/content/SharedPreferences;

    const-string v6, "ever_whole_scan"

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const-wide/32 v6, 0xf731400

    cmp-long v0, v4, v6

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    cmp-long v0, v4, v10

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    cmp-long v0, v4, v10

    if-ltz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    const v4, 0x7f020193

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02b6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02b7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    const v4, 0x7f020190

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02b9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02ba

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02bb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    iget-object v4, p0, Lbrp;->mContext:Landroid/content/Context;

    const v5, 0x7f0b02bc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic k(Lbrp;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lbrp;->f()V

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->f()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbrp;->z:Lkm;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v4, "last_time_of_whole_scan"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbrp;->z:Lkm;

    iget-object v0, v0, Lkm;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ever_whole_scan"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lbrp;->B:Ljl;

    if-nez v0, :cond_0

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iput-object v0, p0, Lbrp;->B:Ljl;

    :cond_0
    iget-object v0, p0, Lbrp;->B:Ljl;

    iget-object v0, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v2, "scan_time_modified"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x7

    new-array v3, v0, [I

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-ne v2, v0, :cond_1

    aput v5, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aput v1, v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lbrp;->B:Ljl;

    invoke-virtual {v0, v3}, Ljl;->a([I)V

    :cond_3
    const/4 v0, 0x0

    iget-object v2, p0, Lbrp;->mContext:Landroid/content/Context;

    const v3, 0x7f0b04cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lbrp;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->j()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lbrp;->a(Ljava/util/List;Z)V

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic l(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lbrp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lbrp;->G:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lbrp;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;
    .locals 1

    iget-object v0, p0, Lbrp;->w:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    return-object v0
.end method

.method public static synthetic o(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic p(Lbrp;)J
    .locals 2

    iget-wide v0, p0, Lbrp;->S:J

    return-wide v0
.end method

.method public static synthetic q(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic r(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic s(Lbrp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbrp;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic t(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic u(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic v(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic w(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic x(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic y(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic z(Lbrp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lbrp;->C:Lacj;

    if-nez v0, :cond_0

    new-instance v0, Lacj;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lacj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbrp;->C:Lacj;

    :cond_0
    iget-object v0, p0, Lbrp;->D:Lacj$a;

    if-nez v0, :cond_1

    new-instance v0, Lbrw;

    invoke-direct {v0, p0}, Lbrw;-><init>(Lbrp;)V

    iput-object v0, p0, Lbrp;->D:Lacj$a;

    iget-object v0, p0, Lbrp;->C:Lacj;

    iget-object v1, p0, Lbrp;->D:Lacj$a;

    invoke-virtual {v0, v1}, Lacj;->a(Lacj$a;)V

    :cond_1
    iget-object v0, p0, Lbrp;->C:Lacj;

    invoke-virtual {v0, p1}, Lacj;->a(Ljava/util/List;)V

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lbrp;->E:Lacr;

    invoke-virtual {v2}, Lacr;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const v2, 0x7f0b04d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01f3

    new-instance v2, Lbru;

    invoke-direct {v2, p0, v0}, Lbru;-><init>(Lbrp;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b01f4

    new-instance v2, Lbrv;

    invoke-direct {v2, v0}, Lbrv;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public final c()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    return-object v0
.end method

.method public final onBackClick()V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lbrp;->E:Lacr;

    invoke-virtual {v2}, Lacr;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lbrp;->b()V

    :goto_2
    return-void

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    goto :goto_2
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lbrp;->E:Lacr;

    invoke-virtual {v2}, Lacr;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lacr$a;->a:Lacr$a;

    iput-object v1, p0, Lbrp;->J:Lacr$a;

    invoke-direct {p0, v0}, Lbrp;->a(Z)V

    iput-boolean v0, p0, Lbrp;->T:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lbrp;->S:J

    iput-boolean v0, p0, Lbrp;->U:Z

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65d4

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lbrp;->E:Lacr;

    invoke-virtual {v2}, Lacr;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lbrp;->b()V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Lbrp;->a(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lbrp;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    iget-object v3, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    iget-object v3, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    :cond_7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v1}, Lbrp;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    iget-object v2, p0, Lbrp;->J:Lacr$a;

    sget-object v3, Lacr$a;->a:Lacr$a;

    if-ne v2, v3, :cond_b

    const/16 v2, 0x667f

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->c()V

    iget-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setEnabled(Z)V

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lbrp;->J:Lacr$a;

    sget-object v3, Lacr$a;->b:Lacr$a;

    if-ne v2, v3, :cond_a

    const/16 v2, 0x6680

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    goto :goto_4
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const v0, 0x7f0802f2

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbrp;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v1, 0x7f04001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lbrp;->r:Landroid/view/animation/Animation;

    const v0, 0x7f0802fd

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbrp;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f080301

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbrp;->h:Landroid/widget/ListView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrp;->G:Ljava/util/List;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbrp;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lbrp;->G:Ljava/util/List;

    invoke-virtual {p0}, Lbrp;->getImageLoaderService()Lsl;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;Ljava/util/List;Lsl;)V

    iput-object v0, p0, Lbrp;->w:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iget-object v0, p0, Lbrp;->w:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->setmTitleEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lbrp;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lbrp;->w:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f080302

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbrp;->q:Landroid/widget/TextView;

    const v0, 0x7f08023c

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iput-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030114

    iget-object v2, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080376

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPinnedHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    iget-object v1, p0, Lbrp;->v:Lamh;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lbrp;->u:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f080303

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbrp;->s:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lbrp;->W:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const v0, 0x7f080304

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbrp;->t:Landroid/widget/ListView;

    iget-object v0, p0, Lbrp;->t:Landroid/widget/ListView;

    iget-object v1, p0, Lbrp;->W:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbrp;->t:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbrp;->j:Landroid/widget/ImageView;

    const v0, 0x7f0802f5

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbrp;->k:Landroid/widget/TextView;

    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbrp;->m:Landroid/widget/TextView;

    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbrp;->n:Landroid/widget/TextView;

    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbrp;->c:Landroid/widget/FrameLayout;

    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbrp;->b:Landroid/widget/TextView;

    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, p0, Lbrp;->d:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0802fc

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0802fb

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbrp;->f:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802fe

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbrp;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f0802ff

    invoke-virtual {p0, v0}, Lbrp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbrp;->p:Landroid/widget/TextView;

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iput-object v0, p0, Lbrp;->x:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {}, Lf;->d()Lkm;

    move-result-object v0

    iput-object v0, p0, Lbrp;->z:Lkm;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbrp;->y:Lho;

    new-instance v0, Lacr;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lacr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbrp;->E:Lacr;

    iget-object v0, p0, Lbrp;->E:Lacr;

    new-instance v1, Lacr$d;

    invoke-direct {v1, p0}, Lacr$d;-><init>(Lbrp;)V

    invoke-virtual {v0, v1}, Lacr;->a(Lacr$d;)V

    new-instance v0, Lbrq;

    invoke-direct {v0, p0}, Lbrq;-><init>(Lbrp;)V

    iput-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    invoke-virtual {p0}, Lbrp;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_FROM_NOTIFICATION"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65cb

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lbrp;->C:Lacj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrp;->C:Lacj;

    invoke-virtual {v0}, Lacj;->a()V

    :cond_0
    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->i()V

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->b()V

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v3

    iget-object v0, p0, Lbrp;->W:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x65d5

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    sget-object v0, Lacr$a;->b:Lacr$a;

    iput-object v0, p0, Lbrp;->J:Lacr$a;

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lbrp;->a(Z)V

    iput-boolean v2, p0, Lbrp;->T:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lbrp;->S:J

    iput-boolean v1, p0, Lbrp;->U:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lbrp;->b()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    const/16 v0, 0x65d6

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lbrp;->A:Lsq;

    if-nez v0, :cond_4

    new-instance v0, Lsq;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbrp;->A:Lsq;

    iget-object v0, p0, Lbrp;->A:Lsq;

    new-instance v1, Lbrt;

    invoke-direct {v1, p0}, Lbrt;-><init>(Lbrp;)V

    invoke-virtual {v0, v1}, Lsq;->a(Lsq$a;)V

    :cond_4
    iget-object v0, p0, Lbrp;->A:Lsq;

    invoke-virtual {v0}, Lsq;->c()V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x6655

    invoke-virtual {v3, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/ProfessionalKillerListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Ljk;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljk;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljk;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v1, 0x65d7

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScanRecordListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x667e

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/VirusScheduleScanActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lbrp;->E:Lacr;

    invoke-virtual {v2}, Lacr;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbrp;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbrp;->b()V

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v2, 0x65d6

    invoke-virtual {v0, v2}, Lnd;->a(I)V

    iget-object v0, p0, Lbrp;->A:Lsq;

    if-nez v0, :cond_3

    new-instance v0, Lsq;

    iget-object v2, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lsq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbrp;->A:Lsq;

    iget-object v0, p0, Lbrp;->A:Lsq;

    new-instance v2, Lbrt;

    invoke-direct {v2, p0}, Lbrt;-><init>(Lbrp;)V

    invoke-virtual {v0, v2}, Lsq;->a(Lsq$a;)V

    :cond_3
    iget-object v0, p0, Lbrp;->A:Lsq;

    invoke-virtual {v0}, Lsq;->c()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 6

    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v0, "AUTO_SCAN"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.tencent.action.virus_scan"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lbrp;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->performClick()Z

    move v0, v1

    :goto_0
    const-string v1, "AUTO_SCAN"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "update_data"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbrp;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lbrp;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    :cond_1
    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lbrp;->f()V

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->c()V

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->b()V

    invoke-direct {p0}, Lbrp;->d()V

    :cond_4
    const-string v0, "data"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmu;

    iput-object v0, p0, Lbrp;->F:Lmu;

    iget-object v0, p0, Lbrp;->F:Lmu;

    iget-object v0, v0, Lmu;->i:Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lbrp;->a(Ljava/util/List;Z)V

    iget-object v0, p0, Lbrp;->E:Lacr;

    sget-object v2, Lacr$c;->e:Lacr$c;

    invoke-virtual {v0, v2}, Lacr;->a(Lacr$c;)V

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "update_data"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "update_data"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, LQQPIM/VirusUpdateInfo;

    iput-object v0, p0, Lbrp;->O:LQQPIM/VirusUpdateInfo;

    iget-object v0, p0, Lbrp;->O:LQQPIM/VirusUpdateInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbrp;->E:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02b2

    invoke-static {v0, v4}, Lha;->b(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lbrp;->N:Z

    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lbrp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbrp;->O:LQQPIM/VirusUpdateInfo;

    invoke-direct {p0, v0, v1}, Lbrp;->a(Landroid/content/Context;LQQPIM/VirusUpdateInfo;)V

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbrp;->L:Landroid/os/Handler;

    const/16 v1, 0xb

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method public final onShowPopOptionMenu()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onShowPopOptionMenu()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x667d

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0b0070

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    iget-object v0, p0, Lbrp;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lbrp;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v3, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0201ce

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lbrp;->mContext:Landroid/content/Context;

    const v6, 0x7f0b02b3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lbrp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x2

    iget-object v3, p0, Lbrp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020308

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lbrp;->mContext:Landroid/content/Context;

    const v6, 0x7f0b02cd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object v1, p0, Lbrp;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lbrp;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonPopStyle(Ljava/util/List;)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
