.class public final Lbsb;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseListView;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/view/BaseListView",
        "<",
        "Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;",
        ">;",
        "Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;"
    }
.end annotation


# static fields
.field private static p:[I

.field private static q:I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field private e:Ljl;

.field private f:Lacc;

.field private g:Lho;

.field private h:Z

.field private i:Z

.field private j:[Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private r:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;-><init>(Landroid/content/Context;)V

    new-array v0, v8, [Ljava/lang/String;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0499

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b049b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b049c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lbsb;->j:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "timing"

    aput-object v1, v0, v4

    const-string v1, "plan"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "time"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "setting"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cloud"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "install_cloud"

    aput-object v2, v0, v1

    iput-object v0, p0, Lbsb;->k:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0551

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0552

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b040c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lbsb;->l:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v5

    const-string v1, "2"

    aput-object v1, v0, v6

    iput-object v0, p0, Lbsb;->m:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0553

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0554

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0555

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0556

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0558

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0559

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lbsb;->n:[Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v4

    const-string v1, "1"

    aput-object v1, v0, v5

    const-string v1, "2"

    aput-object v1, v0, v6

    const-string v1, "3"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lbsb;->o:[Ljava/lang/String;

    new-instance v0, Lbsg;

    invoke-direct {v0, p0}, Lbsg;-><init>(Lbsb;)V

    iput-object v0, p0, Lbsb;->r:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iput-object p1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iput-object v0, p0, Lbsb;->e:Ljl;

    new-instance v0, Lacc;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lacc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbsb;->f:Lacc;

    new-array v0, v8, [I

    sput-object v0, Lbsb;->p:[I

    return-void
.end method

.method static synthetic a(Lbsb;[I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lbsb;->a([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([I)Ljava/lang/String;
    .locals 6

    const-string v1, ""

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, ""

    packed-switch v1, :pswitch_data_0

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b056a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b056b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b056c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b056d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b056e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b056f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b042b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lbsb;)Ljl;
    .locals 1

    iget-object v0, p0, Lbsb;->e:Ljl;

    return-object v0
.end method

.method static synthetic b(Lbsb;)V
    .locals 0

    invoke-direct {p0}, Lbsb;->c()V

    return-void
.end method

.method static synthetic c(Lbsb;)Lho;
    .locals 1

    iget-object v0, p0, Lbsb;->g:Lho;

    return-object v0
.end method

.method private c()V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lbsb;->e:Ljl;

    if-nez v0, :cond_0

    invoke-static {}, Lf;->e()Ljl;

    move-result-object v0

    iput-object v0, p0, Lbsb;->e:Ljl;

    :cond_0
    iget-object v0, p0, Lbsb;->g:Lho;

    if-nez v0, :cond_1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbsb;->g:Lho;

    :cond_1
    iget-object v0, p0, Lbsb;->e:Ljl;

    iget-object v0, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v2, "scanPlan"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbsb;->a:I

    iget-object v0, p0, Lbsb;->e:Ljl;

    invoke-virtual {v0}, Ljl;->a()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lbsb;->a([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbsb;->b:Ljava/lang/String;

    iget-object v0, p0, Lbsb;->e:Ljl;

    iget-object v0, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v2, "scanTimeHour"

    const/16 v3, 0x11

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbsb;->c:I

    iget-object v0, p0, Lbsb;->e:Ljl;

    iget-object v0, v0, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v2, "scanTimeMini"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbsb;->d:I

    iget-object v0, p0, Lbsb;->g:Lho;

    invoke-virtual {v0}, Lho;->aB()Z

    move-result v0

    iput-boolean v0, p0, Lbsb;->h:Z

    iget-object v0, p0, Lbsb;->g:Lho;

    invoke-virtual {v0}, Lho;->aC()Z

    move-result v0

    iput-boolean v0, p0, Lbsb;->i:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^^ timing plan: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lbsb;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", scandate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lbsb;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hour: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lbsb;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mini: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lbsb;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cloud:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lbsb;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " InstallAppCloudScanFlag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lbsb;->i:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    sget-object v2, Lbsb;->p:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sput v1, Lbsb;->q:I

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v1, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    iget v0, p0, Lbsb;->a:I

    if-nez v0, :cond_4

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v7, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v9, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v8, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    :cond_3
    :goto_1
    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    const/4 v3, 0x4

    aput v3, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v10, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    const/4 v3, 0x6

    aput v3, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    iget-object v0, p0, Lbsb;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    :goto_2
    sget v2, Lbsb;->q:I

    if-ge v0, v2, :cond_6

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;-><init>()V

    sget-object v3, Lbsb;->p:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "why type = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_3
    iget-object v3, p0, Lbsb;->mDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lbsb;->a:I

    if-ne v0, v7, :cond_5

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v7, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v8, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lbsb;->a:I

    if-ne v0, v9, :cond_3

    sget-object v0, Lbsb;->p:[I

    sget v2, Lbsb;->q:I

    aput v7, v0, v2

    sget v0, Lbsb;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbsb;->q:I

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2, v10}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const v3, 0x7f02030a

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitlBG_ID(I)V

    iget-object v3, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v2, v8}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v3, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->l:[Ljava/lang/String;

    iget v4, p0, Lbsb;->a:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v2, v8}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v3, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0567

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lbsb;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setShowLine(Z)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {v2, v8}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v3, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lbsb;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lbsb;->d:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setSummary(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v2, v10}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    const v3, 0x7f02030a

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitlBG_ID(I)V

    iget-object v3, p0, Lbsb;->k:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->j:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {v2, v9}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v3, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-boolean v3, p0, Lbsb;->h:Z

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {v2, v9}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setPreferenceViewType(B)V

    iget-object v3, p0, Lbsb;->k:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setKey(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->j:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setTitle(Ljava/lang/String;)V

    iget-boolean v3, p0, Lbsb;->i:Z

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {p0}, Lbsb;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbsb;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/service/TimedTaskReceiver;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "taskType"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lbsb;->e:Ljl;

    invoke-virtual {v0}, Ljl;->a()[I

    move-result-object v2

    new-instance v3, Lacc;

    iget-object v0, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lacc;-><init>(Landroid/content/Context;)V

    const-string v4, "3"

    invoke-virtual {v3, v1, v4}, Lacc;->a(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    aget v5, v2, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lacc;->a(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/service/TimedTaskReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taskType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lbsb;->f:Lacc;

    const-string v2, "3"

    invoke-virtual {v1, v0, v2}, Lacc;->b(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public final createAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbsb;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePreferenceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView$OnListPreferenceChangeListener;)V

    return-object v0
.end method

.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final loadDataList()V
    .locals 0

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onCreate()V

    iget-object v0, p0, Lbsb;->mListView:Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->setPadding(IIII)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    instance-of v0, p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbsb;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p2, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/preference/PreferenceView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_1
    iget-object v1, p0, Lbsb;->l:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v3, p0, Lbsb;->l:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    iget-object v3, p0, Lbsb;->m:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbsb;->e:Ljl;

    iget-object v1, v1, Ljl;->b:Landroid/content/SharedPreferences;

    const-string v3, "scanPlan"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v1, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Lbsc;

    invoke-direct {v1, p0, v0}, Lbsc;-><init>(Lbsb;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v0, p0, Lbsb;->a:I

    if-nez v0, :cond_0

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v0, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    iget-object v4, p0, Lbsb;->n:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    iget-object v6, p0, Lbsb;->n:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    iget-object v6, p0, Lbsb;->o:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lbsb;->e:Ljl;

    invoke-virtual {v0}, Ljl;->a()[I

    move-result-object v4

    iget-object v0, p0, Lbsb;->n:[Ljava/lang/String;

    array-length v0, v0

    new-array v6, v0, [Z

    move v0, v1

    :goto_3
    array-length v7, v4

    if-ge v1, v7, :cond_6

    aget v7, v4, v1

    if-ne v7, v5, :cond_5

    aput-boolean v5, v6, v1

    move v0, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lbsd;

    invoke-direct {v0, p0, v2, v4}, Lbsd;-><init>(Lbsb;Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;[I)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lbsb;->k:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v0, p0, Lbsb;->a:I

    if-eqz v0, :cond_8

    iget v0, p0, Lbsb;->a:I

    if-ne v0, v5, :cond_0

    :cond_8
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lbsb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbsb;->r:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lbsb;->c:I

    iget v4, p0, Lbsb;->d:I

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iget-object v1, p0, Lbsb;->j:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lbsb;->k:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, p0, Lbsb;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lbsb;->mContext:Landroid/content/Context;

    const v4, 0x7f0b04d1

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b02c5

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v2, 0x7f0b0b57

    new-instance v4, Lbse;

    invoke-direct {v4, p0, v0, v3, v1}, Lbse;-><init>(Lbsb;Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;ZLcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v2, v4, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0b56

    new-instance v2, Lbsf;

    invoke-direct {v2, v1}, Lbsf;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_0

    :cond_a
    if-nez v3, :cond_b

    move v2, v5

    :goto_4
    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbsb;->g:Lho;

    if-nez v3, :cond_c

    :goto_5
    invoke-virtual {v0, v5}, Lho;->p(Z)V

    invoke-direct {p0}, Lbsb;->c()V

    invoke-virtual {p0}, Lbsb;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_b
    move v2, v1

    goto :goto_4

    :cond_c
    move v5, v1

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lbsb;->k:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsb;->mDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->isChecked()Z

    move-result v3

    if-nez v3, :cond_e

    move v2, v5

    :goto_6
    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbsb;->g:Lho;

    if-nez v3, :cond_f

    :goto_7
    invoke-virtual {v0, v5}, Lho;->o(Z)V

    invoke-direct {p0}, Lbsb;->c()V

    invoke-virtual {p0}, Lbsb;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_e
    move v2, v1

    goto :goto_6

    :cond_f
    move v5, v1

    goto :goto_7
.end method

.method public final onListPreferenceChange(Lcom/tencent/qqpimsecure/uilib/view/preference/ListPreferenceView;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseListView;->onResume()V

    invoke-direct {p0}, Lbsb;->c()V

    return-void
.end method

.method public final refreshListData()V
    .locals 0

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b02cd

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method
