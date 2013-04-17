.class public final Lamh;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Lms;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbrp;

.field private c:Lje;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbrp;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbrp;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lms;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iput-object v0, p0, Lamh;->c:Lje;

    const/4 v0, 0x0

    iput v0, p0, Lamh;->d:I

    iput-object p2, p0, Lamh;->b:Lbrp;

    iput-object p1, p0, Lamh;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lamh;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lamh;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/virus/ProfessionalKillerListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lamh;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lamh;I)V
    .locals 6

    iget v0, p0, Lamh;->d:I

    if-ne v0, p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lamh;->d:I

    :goto_0
    iget-object v0, p0, Lamh;->b:Lbrp;

    invoke-virtual {v0}, Lbrp;->c()Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {p0}, Lamh;->notifyDataSetChanged()V

    iget v1, p0, Lamh;->d:I

    if-ltz v1, :cond_0

    :try_start_0
    const-class v1, Landroid/widget/ListView;

    const-string v2, "smoothScrollToPosition"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lamh;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput p1, p0, Lamh;->d:I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1
.end method

.method static synthetic a(Lamh;Ljava/lang/String;)V
    .locals 8

    const v7, 0x7f0b068e

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lamh;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lamh;->a:Landroid/content/Context;

    const v2, 0x7f0b02d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b068a

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b068b

    new-instance v3, Lzf;

    invoke-direct {v3, v0, v2, v5}, Lzf;-><init>(Landroid/app/Activity;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lay;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lzg;

    invoke-direct {v0, v2, v5}, Lzg;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lay;)V

    invoke-virtual {v2, v7, v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lamh;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lamh;->a:Landroid/content/Context;

    const v2, 0x7f0b02d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b04d1

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b068d

    new-instance v3, Lzj;

    invoke-direct {v3, v0, v2, v5}, Lzj;-><init>(Landroid/app/Activity;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lay;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lzd;

    invoke-direct {v0, v2, v5}, Lzd;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lay;)V

    invoke-virtual {v2, v7, v0, v6}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;ILms;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lamh;->c:Lje;

    iget-object v2, p3, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lgx;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    if-eqz v2, :cond_1

    :goto_2
    if-eqz v0, :cond_2

    new-instance v0, Lamj;

    invoke-direct {v0, p0, p3}, Lamj;-><init>(Lamh;Lms;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, p3, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lamh;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lamk;

    invoke-direct {v0, p0}, Lamk;-><init>(Lamh;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Laml;

    invoke-direct {v0, p0, p3}, Laml;-><init>(Lamh;Lms;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lamm;

    invoke-direct {v0, p0, p3}, Lamm;-><init>(Lamh;Lms;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lamh;)Lbrp;
    .locals 1

    iget-object v0, p0, Lamh;->b:Lbrp;

    return-object v0
.end method

.method static synthetic c(Lamh;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lamh;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/software/SoftwareUpdateActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lamh;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lamh;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lms;

    if-nez p2, :cond_1

    const v1, 0x7f03012b

    invoke-virtual {p0, p1, v1}, Lamh;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lamh$a;

    invoke-direct {v2}, Lamh$a;-><init>()V

    const v1, 0x7f080284

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lamh$a;->a:Landroid/widget/TextView;

    const v1, 0x7f08039a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lamh$a;->c:Landroid/widget/TextView;

    const v1, 0x7f080397

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lamh$a;->b:Landroid/widget/TextView;

    const v1, 0x7f080399

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v1, 0x7f08039e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lamh$a;->d:Landroid/widget/TextView;

    const v1, 0x7f0803a0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lamh$a;->e:Landroid/widget/TextView;

    const v1, 0x7f08039d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lamh$a;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f08039f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lamh$a;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f08039c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lamh$a;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08039b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lamh$a;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f080398

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Lamh$a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v2

    :goto_0
    iget v2, v0, Lms;->b:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lamh;->d:I

    if-ne p1, v2, :cond_2

    const v2, 0x7f090001

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v1, Lamh$a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v2, v1, Lamh$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    iget-object v3, v1, Lamh$a;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v0, Lms;->b:I

    if-ne v2, v7, :cond_4

    iget-object v0, v1, Lamh$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lamh$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lamh;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {p0, p2, v0}, Lamh;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    iget-object v0, v1, Lamh$a;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lami;

    invoke-direct {v1, p0, p1}, Lami;-><init>(Lamh;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lamh$a;

    goto :goto_0

    :cond_2
    const v2, 0x7f09001a

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v1, Lamh$a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const v2, 0x7f09001a

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lamh$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    sparse-switch v2, :sswitch_data_0

    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v7, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    iget-object v0, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :sswitch_0
    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v7, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b02d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v9, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b02d6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    goto/16 :goto_2

    :pswitch_3
    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v7, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    goto/16 :goto_2

    :sswitch_1
    iget-object v2, v0, Lms;->e:Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    packed-switch v2, :pswitch_data_1

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b004a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v7, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    iget-object v0, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b004a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v7, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    iget-object v0, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b03fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v8, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b004a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v7, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b03fb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v8, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    goto/16 :goto_2

    :pswitch_7
    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b02d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v9, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    iget-object v0, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_8
    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b02d5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v9, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v1, Lamh$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lamh;->a:Landroid/content/Context;

    const v4, 0x7f0b004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lamh$a;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v8, v0}, Lamh;->a(Landroid/widget/LinearLayout;ILms;)V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
